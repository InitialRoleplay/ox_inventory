local clothing = {}

local Inventory

CreateThread(function()
    Inventory = require 'modules.inventory.server'
end)

local slotItems = {
    [1] = "clothes_torsos",
    [2] = "clothes_tshirts",
    [3] = "clothes_hands",
    [4] = "clothes_bags",
    [5] = "clothes_armors",
    [6] = "clothes_pants",
    [7] = "clothes_shoes",

    [9] = "clothes_hats",
    [10] = "clothes_masks",
    [11] = "clothes_glasses",
    [12] = "clothes_ears",
    [13] = "clothes_chains",
    [14] = "clothes_watches",
    [15] = "clothes_bracelets",
    [16] = "clothes_decals",
}

local idToSlot = {
    [1] = 10,
    [2] = 3,
    [3] = 6,
    [4] = 4,
    [5] = 7,
    [6] = 13,
    [7] = 2,
    [9] = 5,
    [10] = 16,
    [11] = 1,
    [12] = 9,
    [13] = 11,
    [14] = 12,
    [15] = 14,
    [16] = 15,
}

function clothing.imageExists(image)
    local path = GetResourcePath(GetCurrentResourceName())

    local name = ("%s/web/images/%s.webp"):format(path, image)

    local f = io.open(name, "r")

    if f ~= nil then
        io.close(f)
        return true
    else
        return false
    end
end

function clothing.getClothesInv(source)
    local license = GetPlayerIdentifierByType(source, 'license')
    license = license and license:gsub('license:', '')
    return Inventory('clothing' .. license, source) --[[@as OxInventory]]
end

RegisterNetEvent('ox_inventory:syncPlayerClothes', function()
    local src = source

    local clothes = clothing.getClothesInv(src)
    if not clothes then return end

    local playerSex, playerClothes = lib.callback.await('ox_inventory:getPlayerClothes', source)
    Inventory.Clear(clothes, 'clothes_outfits')

    for i = 1, 14 do
        local cloth = playerClothes[i]

        if i > 7 then
            i += 1
        end

        if cloth and next(cloth) then
            if cloth.type == 'component' then
                cloth.image = ('clothes/%s/%s_%s_%s'):format(playerSex, playerSex, cloth.component, cloth.drawable) .. (cloth.texture ~= 0 and ('_%s'):format(cloth.texture) or '')
            else
                cloth.image = ('clothes/%s/%s_prop_%s_%s'):format(playerSex, playerSex, cloth.prop, cloth.drawable) .. (cloth.texture ~= 0 and ('_%s'):format(cloth.texture) or '')
            end
            Inventory.AddItem(clothes, tostring(slotItems[idToSlot[i]]), 1, cloth, tonumber(idToSlot[i]))
        end
    end

    for i = 1, 16 do
        clothes:syncSlotsWithClients({
            slots = { item = { slot = i } },
            inventory = clothes.id,
        }, true)
    end
end)

---@param source number
lib.callback.register('ox_inventory:getInventoryClothes', function(source)
    local src = source
    local clothes = clothing.getClothesInv(src)

    return clothes and {
        id = clothes.id,
        label = clothes.label,
        type = clothes.type,
        slots = clothes.slots,
        weight = 0,
        maxWeight = 10000,
        items = clothes.items or {}
    } or false
end)

function clothing.addClothing(payload)
    return lib.callback.await('ox_inventory:addClothing', payload.source, payload.fromSlot.metadata)
end

function clothing.removeClothing(payload)
    return lib.callback.await('ox_inventory:removeClothing', payload.source, payload.fromSlot.metadata)
end

function clothing.addOutfit(payload)
    return true
end

function clothing.removeOutfit(payload)
    return true
end

function clothing.swapOutfit(payload)
    return false
end

return clothing
