local clothing = require 'modules.clothing.server'

CreateThread(function()
    Wait(5000)

    print('Registering hooks')

    exports.ox_inventory:registerHook('swapItems', function(payload)
        if payload.action == 'move' then
            if payload.toType == 'clothes' then
                return clothing.addClothing(payload)
            elseif payload.fromType == 'clothes' then
                return clothing.removeClothing(payload)
            end
        elseif payload.action == 'swap' then
            if not string.find(payload.fromSlot.name, 'clothes') or not string.find(payload.toSlot.name, 'clothes') then
                return false
            end
            return clothing.addClothing(payload)
        end

        return false
    end, {
        disableCheck = true,
        itemFilter = {
            clothes_jackets = true,
            clothes_shirts = true,
            clothes_torsos = true,
            clothes_bags = true,
            clothes_vest = true,
            clothes_legs = true,
            clothes_shoes = true,
            clothes_hats = true,
            clothes_masks = true,
            clothes_glasses = true,
            clothes_earrings = true,
            clothes_neck = true,
            clothes_watches = true,
            clothes_bracelets = true,
            clothes_decals = true,
        },
        inventoryFilter = {
            '^clothes_[%w]+',
        }
    })

    exports.ox_inventory:registerHook('swapItems', function(payload)
        if payload.action == 'move' then
            if payload.toType == 'clothes' then
                return clothing.addOutfit(payload)
            elseif payload.fromType == 'clothes' then
                return clothing.removeOutfit(payload)
            end
        elseif payload.action == 'swap' then
            if payload.toType == 'clothes' or payload.fromType == 'clothes' then
                lib.notify(payload.source, {
                    type = 'error',
                    title = 'Inventaire',
                    description = 'Impossible de déplacer un outfit si un outfit est déjà équipé.',
                })
                return false
            end
        end

        return true
    end, {
        disableCheck = true,
        itemFilter = {
            clothes_outfits = true,
        },
        inventoryFilter = {
            '^clothes_[%w]+',
        }
    })
end)
