local clothing = {}

local Inventory

CreateThread(function()
    Inventory = require 'modules.inventory.server'
end)

local slotItems = shared.clothing.slots

function clothing.getClothesInv(src, identifier)
    return Inventory('clothes_' .. identifier, src, true) --[[@as OxInventory]]
end

RegisterNetEvent('ox_inventory:syncPlayerClothes', function()
    local src = source

    local player = exports.qbx_core:GetPlayer(src)
    if not player then return end

    local citizenid = player.PlayerData.citizenid
    local clothes = clothing.getClothesInv(src, citizenid)
    if not clothes then return end

    local sex, props, head, drawables = lib.callback.await('ox_inventory:clothes:appearance', src)
    if not sex or not props or not head or not drawables then return end
    Inventory.Clear(clothes, 'clothes_outfits')

    exports.bl_appearance:SavePlayerClothes(citizenid, {
        headOverlay = head,
        drawables = drawables,
        props = props,
    })

    for key, data in pairs(props) do
        if slotItems['clothes_' .. key] then
            if data.value ~= shared.clothing[sex][key].drawable then
                data.type = 'prop'
                data.image = ('clothes/%s/%s_%s_%s'):format(sex, sex, data.index, data.value) .. (data.texture ~= 0 and ('_%s'):format(data.texture) or '')
                Inventory.AddItem(clothes, 'clothes_' .. key, 1, data, slotItems['clothes_' .. key])
            end
        end
    end

    for key, data in pairs(drawables) do
        if slotItems['clothes_' .. key] then
            if data.value ~= shared.clothing[sex][key].drawable then
                data.type = 'component'
                data.image = ('clothes/%s/%s_%s_%s'):format(sex, sex, data.index, data.value) .. (data.texture ~= 0 and ('_%s'):format(data.texture) or '')
                Inventory.AddItem(clothes, 'clothes_' .. key, 1, data, slotItems['clothes_' .. key])
            end
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

    local player = exports.qbx_core:GetPlayer(src)
    if not player then return end

    local citizenid = player.PlayerData.citizenid
    local clothes = clothing.getClothesInv(src, citizenid)

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
    if not payload.source then return false end
    return lib.callback.await('ox_inventory:addClothing', payload.source, payload.fromSlot.metadata)
end

function clothing.removeClothing(payload)
    if not payload.source then return false end
    return lib.callback.await('ox_inventory:removeClothing', payload.source, payload.fromSlot.metadata)
end

function clothing.addOutfit(payload)
    return true
end

function clothing.removeOutfit(payload)
    return true
end

return clothing
