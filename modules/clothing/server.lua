local clothing = {}

local Inventory

CreateThread(function()
    Inventory = require 'modules.inventory.server'
end)

local idToNameComps = {
    [1] = "clothes_masks",
    [2] = "clothes_torso",
    [3] = "clothes_pants",
    [4] = "clothes_bags",
    [5] = "clothes_hands",
    [6] = "clothes_shoes",
    [7] = "clothes_access",
    [8] = "clothes_tshirts",
    [9] = "clothes_kevlars",
    [10] = "clothes_bagdes",
    [11] = "clothes_chains",
}

local idToNameProps = {
    [12] = "clothes_hats",
    [13] = "clothes_glasses",
    [14] = "clothes_ears",
    [15] = "clothes_watches",
    [16] = "clothes_bracelets",
}

function clothing.getClothesInv(source)
    local license = GetPlayerIdentifierByType(source, 'license')
    license = license and license:gsub('license:', '')
    return Inventory('clothing' .. license, source) --[[@as OxInventory]]
end

---@param source number
lib.callback.register('ox_inventory:getInventoryClothes', function(source)
	local clothes = clothing.getClothesInv(source)

    if not clothes then
        return false
    end

	local playerSex, playerClothes = lib.callback.await('ox_inventory:getPlayerClothes', source)

    if not playerClothes then
        Inventory.Clear(clothes, 'clothes_outfit')
    else
        for i = 1, 16 do
            local cloth = playerClothes[i]

            if cloth and next(cloth) then
                if cloth.type == 'component' then
                    cloth.image = ('clothes/%s/%s_%s_%s'):format(playerSex, playerSex, cloth.component, cloth.drawable) .. (cloth.texture ~= 0 and ('_%s'):format(cloth.texture) or '')
                else
                    cloth.image = ('clothes/%s/%s_%s_%s'):format(playerSex, playerSex, cloth.prop, cloth.drawable) .. (cloth.texture ~= 0 and ('_%s'):format(cloth.texture) or '')
                end

                if not clothes.items[i] then
                    if cloth.type == 'component' then
                        Inventory.AddItem(clothes, idToNameComps[i], 1, cloth, i)
                    else
                        Inventory.AddItem(clothes, idToNameProps[i], 1, cloth, i)
                    end
                else
                    if not lib.table.matches(cloth, clothes.items[i].metadata) then
                        if clothes.items[i] then
                            Inventory.RemoveItem(clothes, clothes.items[i].name, clothes.items[i].count)
                            if clothes.items[i].metadata then
                                Inventory.AddItem(clothes, clothes.items[i].name, clothes.items[i].count, cloth)
                            end
                        end
                    end
                end
            else
                if clothes.items[i] then
                    Inventory.RemoveItem(clothes, clothes.items[i].name, clothes.items[i].count)
                    if clothes.items[i].metadata then
                        Inventory.AddItem(source, clothes.items[i].name, clothes.items[i].count, clothes.items[i].metadata)
                    end
                end
            end
        end
    end

    Inventory.Save(clothes)
    clothes = clothing.getClothesInv(source)

	return clothes and {
		id = clothes.id,
		label = clothes.label,
		type = clothes.type,
		slots = clothes.slots,
		weight = 0,
		maxWeight = 10000,
		items = clothes.items or {}
	}
end)

function clothing.addClothing(payload)
    return lib.callback.await('ox_inventory:addClothing', payload.source, payload.fromSlot.metadata)
end

function clothing.removeClothing(payload)
    return lib.callback.await('ox_inventory:removeClothing', payload.source, payload.fromSlot.metadata)
end

function clothing.addOutfit(payload)
    return lib.callback.await('ox_inventory:addOutfit', payload.source, payload.fromSlot.metadata)
end

function clothing.removeOutfit(payload)
	local clothes = clothing.getClothesInv(payload.source)

    local metadata = {
        props = {},
        components = {},
    }

    for i = 1, 16 do
        local cloth = clothes.items[i]

        if cloth and cloth.metadata then
            if cloth.metadata.type == 'component' then
                metadata.components[#metadata.components + 1] = cloth.metadata
            elseif cloth.metadata.type == 'prop' then
                metadata.props[#metadata.props + 1] = cloth.metadata
            end
        end
    end

    Inventory.SetMetadata(clothes, payload.fromSlot.slot, metadata)
    return lib.callback.await('ox_inventory:removeOutfit', payload.source, payload.fromSlot.metadata)
end

function clothing.swapOutfit(payload)
	local clothes = clothing.getClothesInv(payload.source)

    local metadata = {
        props = {},
        components = {},
    }

    for i = 1, 16 do
        local cloth = clothes.items[i]

        if cloth and cloth.metadata then
            if cloth.metadata.type == 'component' then
                metadata.components[#metadata.components + 1] = cloth.metadata
            elseif cloth.metadata.type == 'prop' then
                metadata.props[#metadata.props + 1] = cloth.metadata
            end
        end
    end

    if payload.fromType == 'clothing' then
        Inventory.SetMetadata(clothes, payload.fromSlot.slot, metadata)
        return lib.callback.await('ox_inventory:addOutfit', payload.source, payload.toSlot.metadata)
    end

    if payload.toType == 'clothing' then
        Inventory.SetMetadata(clothes, payload.toSlot.slot, metadata)
        return lib.callback.await('ox_inventory:addOutfit', payload.source, payload.fromSlot.metadata)
    end
end

return clothing