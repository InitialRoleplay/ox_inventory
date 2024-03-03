local appearance
local currLang = MBT.Labels[MBT.Language]
local playerWearing = { Drawables = {}, Props = {} }

local function updatePlayerClothes()
    local playerPed = cache.ped or PlayerPedId()

    for k, v in pairs(MBT.Drawables) do
        playerWearing["Drawables"][k] = GetPedDrawableVariation(playerPed, k)
    end

    for k, v in pairs(MBT.Props) do
        playerWearing["Props"][k] = GetPedPropIndex(playerPed, k)
    end
end

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() == resourceName) then
        if NetworkIsPlayerActive(PlayerId()) then
            updatePlayerClothes()
        end
    end
end)

RegisterNUICallback('handleDress', function(data, cb)
    if data.Index == 8 then handleTorsoUndress() else handleUndress(data.Index) end
    saveOutfitCache()
    cb(1)
end)

RegisterNUICallback('handleProps', function(data, cb)
    handleProps(data.Index)
    saveOutfitCache()
    cb(1)
end)

RegisterNetEvent('mbt_metaclothes:applyDress', function(data)
    SetPedComponentVariation(cache.ped or PlayerPedId(), data.index, data.drawable, data.texture, data.palette)
    saveOutfitCache()
end)

RegisterNetEvent('mbt_metaclothes:applyKitDress', function(data)
    for k, v in pairs(data) do
        SetPedComponentVariation(cache.ped or PlayerPedId(), v.index, v.drawable, v.texture, v.palette)
        saveOutfitCache()
    end
end)

RegisterNetEvent('mbt_metaclothes:applyProps', function(data)
    SetPedPropIndex(cache.ped or PlayerPedId(), data.index, data.drawable, data.texture, true)
    saveOutfitCache()
end)

function handleTopDress(data)
    local canWear = true

    for k, v in pairs(data.index) do
        if type(v) == "table" and k ~= "Arms" then
            if not tableContainsValue({ table = MBT[data.type][v.index]["Default"][data.pedSex], value = playerWearing["Drawables"][v.index] }) then
                canWear = false
                break
            end
        end
    end

    return canWear
end

RegisterNetEvent('mbt_metaclothes:checkDress', function(data)
    data.pedSex = data.sex == "m" and "male" or "female"
    local isDefault = true

    updatePlayerClothes()

    if type(data.index) == "table" and data.index["Arms"] then
        isDefault = handleTopDress(data)
    else
        assert(
        MBT[data.type][data.index]["Default"][data.pedSex] and
        type(MBT[data.type][data.index]["Default"][data.pedSex]) == "table",
            "Invalid value or wrong type for key " .. data.index)

        if not tableContainsValue({ table = MBT[data.type][data.index]["Default"][data.pedSex], value = playerWearing[data.type][data.index] }) then
            isDefault = false
        end
    end

    assert(data.cb, "The callback does not exist or is not a function, check your item declaration")

    data.cb(isDefault)
end)

function saveOutfitCache()
    local pedComponents = exports['illenium-appearance']:getPedComponents(cache.ped)
    local pedProps = exports['illenium-appearance']:getPedProps(cache.ped)

    exports['illenium-appearance']:setPedComponents(cache.ped, pedComponents)
    exports['illenium-appearance']:setPedProps(cache.ped, pedProps)

    appearance = exports['illenium-appearance']:getPedAppearance(cache.ped)
    TriggerServerEvent("illenium-appearance:server:saveAppearance", appearance)
end

function handleProps(propIndex)
    local playerSex = getPedSex(cache.ped or PlayerPedId())
    local currentProp = GetPedPropIndex(cache.ped or PlayerPedId(), propIndex)

    local propData = {
        Item = MBT.Props[propIndex]["Item"],
        Index = propIndex,
        Sex = playerSex,
        Drawable = currentProp,
        Texture = GetPedPropTextureIndex(cache.ped or PlayerPedId(), propIndex)
    }

    if isAbleToUndress({ Type = "Props", Index = propIndex, Drawable = currentProp }) then
        setDefaultPropVariation({
            Player = cache.ped or PlayerPedId(),
            Sex = playerSex,
            Index = propIndex,
            isAnimated = true
        })
        TriggerServerEvent("mbt_metaclothes:giveProp", propData)
    end

    SendNUIMessage({ action = "sendUiState", status = false })
end

function handleTorsoUndress()
    local playerSex = getPedSex(cache.ped or PlayerPedId())

    local topDressData = {
        Item = "topdress",
        Sex = playerSex,
        Kit = {
            Arms = {
                Index    = 3,
                Drawable = GetPedDrawableVariation(cache.ped or PlayerPedId(), 3),
                Texture  = GetPedTextureVariation(cache.ped or PlayerPedId(), 3),
                Palette  = GetPedPaletteVariation(cache.ped or PlayerPedId(), 3)
            },
            Tshirt = {
                Index      = 8,
                Drawable   = GetPedDrawableVariation(cache.ped or PlayerPedId(), 8),
                Texture    = GetPedTextureVariation(cache.ped or PlayerPedId(), 8),
                Palette    = GetPedPaletteVariation(cache.ped or PlayerPedId(), 8),
                isAnimated = true
            },
            Jacket = {
                Index    = 11,
                Drawable = GetPedDrawableVariation(cache.ped or PlayerPedId(), 11),
                Texture  = GetPedTextureVariation(cache.ped or PlayerPedId(), 11),
                Palette  = GetPedPaletteVariation(cache.ped or PlayerPedId(), 11)
            }
        }
    }

    if isAbleToUndress({ Type = "Drawables", Index = topDressData["Kit"]["Tshirt"]["Index"], Drawable = topDressData["Kit"]["Tshirt"]["Drawable"] }) then
        setDefaultVariation({
            isAnimated = true,
            Player = cache.ped or PlayerPedId(),
            Sex = playerSex,
            Index = topDressData["Kit"]["Tshirt"]["Index"]
        })
        setDefaultVariation({
            isAnimated = false,
            Player = cache.ped or PlayerPedId(),
            Sex = playerSex,
            Index = topDressData["Kit"]["Arms"]["Index"]
        })
        setDefaultVariation({
            isAnimated = false,
            Player = cache.ped or PlayerPedId(),
            Sex = playerSex,
            Index = topDressData["Kit"]["Jacket"]["Index"]
        })

        TriggerServerEvent("mbt_metaclothes:giveDressKit", topDressData)
    else
        MBT.NotifyHandler(currLang["nothing_to_unwear"], "error")
    end
    SendNUIMessage({ action = "sendUiState", status = false })
end

function handleUndress(dressIndex)
    local playerSex = getPedSex(cache.ped or PlayerPedId())
    local currentDrawable = GetPedDrawableVariation(cache.ped or PlayerPedId(), dressIndex)
    local dressData = {
        Item     = MBT.Drawables[dressIndex]["Item"],
        Index    = dressIndex,
        Sex      = playerSex,
        Drawable = currentDrawable,
        Texture  = GetPedTextureVariation(cache.ped or PlayerPedId(), dressIndex),
        Palette  = GetPedPaletteVariation(cache.ped or PlayerPedId(), dressIndex)
    }

    if isAbleToUndress({ Type = "Drawables", Index = dressIndex, Drawable = currentDrawable }) then
        setDefaultVariation({
            Player = cache.ped or PlayerPedId(),
            Sex = playerSex,
            Index = dressIndex,
            isAnimated = true
        })
        TriggerServerEvent("mbt_metaclothes:giveDress", dressData)
    else
        MBT.NotifyHandler(currLang["nothing_to_unwear"], "error")
    end
    SendNUIMessage({ action = "sendUiState", status = false })
end

function isAbleToUndress(data)
    local isAble = true
    local playerSex = getPedSex(cache.ped or PlayerPedId())
    local isWearingDefault = tableContainsValue({ table = MBT[data.Type][data.Index]["Default"][playerSex], value = data
    .Drawable })

    if isTable(MBT[data.Type][data.Index]["Default"][playerSex]) then
        if isWearingDefault then
            if data.Index == 8 then
                local currentJacket = { Index = 11, Drawable = GetPedDrawableVariation(cache.ped or PlayerPedId(), 11) }
                if tableContainsValue({ table = MBT[data.Type][currentJacket.Index]["Default"][playerSex], value = currentJacket.Drawable }) then -- Jacket?
                    isAble = false
                end
            else
                isAble = false
            end
        end
    end
    return isAble
end

function setDefaultVariation(data)
    local drawable = MBT.Drawables[data.Index]["Default"][data.Sex]
    if isTable(MBT.Drawables[data.Index]["Default"][data.Sex]) then
        drawable = randomizeDress(MBT.Drawables[data.Index]["Default"][data.Sex])
    end
    if data.isAnimated then
        playEmote({
            Dict = MBT.Drawables[data.Index]["Animation"]["Dict"],
            Anim = MBT.Drawables[data.Index]["Animation"]["Anim"],
            Flag = MBT.Drawables[data.Index]["Animation"]["Flag"],
            Dur = MBT.Drawables[data.Index]["Animation"]["Duration"]
        }, function()
            SetPedComponentVariation(data.Player, data.Index, drawable, 0, 0)
        end)
    else
        SetPedComponentVariation(data.Player, data.Index, drawable, 0, 0)
    end
end

function setDefaultPropVariation(data)
    if data.isAnimated then
        playEmote({
            Dict = MBT.Props[data.Index]["Animation"]["Dict"],
            Anim = MBT.Props[data.Index]["Animation"]["Anim"],
            Flag = MBT.Props[data.Index]["Animation"]["Flag"],
            Dur = MBT.Props[data.Index]["Animation"]["Duration"]
        }, function()
            ClearPedProp(data.Player, data.Index)
        end)
    else
        ClearPedProp(data.Player, data.Index)
    end
end

function playEmote(data, cb)
    while not HasAnimDictLoaded(data.Dict) do
        RequestAnimDict(data.Dict)
        Wait(100)
    end
    if IsPedInAnyVehicle(cache.ped or PlayerPedId()) then data.Flag = 51 end
    TaskPlayAnim(cache.ped or PlayerPedId(), data.Dict, data.Anim, 3.0, 3.0, data.Dur, data.Flag, 0, false, false, false)
    local Pause = data.Dur - 500
    if Pause < 500 then Pause = 500 end
    Wait(Pause)
    if cb then cb() end
end

function randomizeDress(t)
    math.randomseed(GetGameTimer() * math.random(30123, 90456))
    return t[math.random(1, #t)]
end

function getPedSex(ped)
    local maleModel, femaleModel = `mp_m_freemode_01`, `mp_f_freemode_01`
    local playerModel = GetEntityModel(ped)
    if playerModel then
        if playerModel == maleModel then
            return "male"
        elseif playerModel == femaleModel then
            return "female"
        else
            return "customSkin"
        end
    end
end

function tableContainsValue(data)
    for i = 1, #data.table do
        if data.table[i] == data.value then return true end
    end
    return false
end

function isTable(x)
    return type(x) == "table"
end