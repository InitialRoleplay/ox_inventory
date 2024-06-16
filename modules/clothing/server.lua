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

    for i = 1, 15 do
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

exports('GiveClothes', function (source, components, props)
    local playerSex, _ = lib.callback.await('ox_inventory:getPlayerClothes', source)

    for _, prop in ipairs(props) do
        local no_prop = shared.clothing.no_props[playerSex][prop.prop_id]
        if no_prop.drawable ~= prop.drawable then
            exports.ox_inventory:AddItem(source, shared.clothing.items.props[prop.prop_id], 1, {
                type = 'prop',
                prop = prop.prop_id,
                drawable = prop.drawable,
                texture = prop.texture,
                image = ('clothes/%s/%s_prop_%s_%s'):format(playerSex, playerSex, prop.prop_id, prop.drawable) .. (prop.texture ~= 0 and ('_%s'):format(prop.texture) or '')
            })
        end
    end

    for _, component in ipairs(components) do
        if tonumber(component.component_id) ~= 0 and tonumber(component.component_id) ~= 2 then
            local no_comp = shared.clothing.no_clothing[playerSex][component.component_id]
            if no_comp.drawable ~= component.drawable then
                exports.ox_inventory:AddItem(source, shared.clothing.items.components[component.component_id], 1, {
                    type = 'component',
                    component = component.component_id,
                    drawable = component.drawable,
                    texture = component.texture,
                    image = ('clothes/%s/%s_prop_%s_%s'):format(playerSex, playerSex, component.component_id, component.drawable) .. (component.texture ~= 0 and ('_%s'):format(component.texture) or '')
                })
            end
        end
    end
end)

return clothing
