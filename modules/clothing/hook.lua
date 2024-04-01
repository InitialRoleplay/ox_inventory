local clothing = require 'modules.clothing.server'

exports.ox_inventory:registerHook('swapItems', function(payload)
    if payload.action == 'move' then
        if payload.toType == 'clothing' then
            return clothing.addClothing(payload)
        elseif payload.fromType == 'clothing' then
            return clothing.removeClothing(payload)
        end
    elseif payload.action == 'swap' then
        return clothing.addClothing(payload)
    end

    return true
end, {
    itemFilter = {
        clothes_masks = true,
        clothes_torso = true,
        clothes_pants = true,
        clothes_bags = true,
        clothes_hands = true,
        clothes_shoes = true,
        clothes_access = true,
        clothes_tshirts = true,
        clothes_kevlars = true,
        clothes_bagdes = true,
        clothes_chains = true,
        clothes_hats = true,
        clothes_glasses = true,
        clothes_ears = true,
        clothes_watches = true,
        clothes_bracelets = true,
        clothes_outfit = true,
    },
    inventoryFilter = {
        '^clothing[%w]+',
    }
})

exports.ox_inventory:registerHook('swapItems', function(payload)
    if payload.action == 'move' then
        if payload.toType == 'clothing' then
            return clothing.addOutfit(payload)
        elseif payload.fromType == 'clothing' then
            return clothing.removeOutfit(payload)
        end
    elseif payload.action == 'swap' then
        return clothing.swapOutfit(payload)
    end

    return true
end, {
    itemFilter = {
        clothes_outfit = true,
    },
    inventoryFilter = {
        '^clothing[%w]+',
    }
})