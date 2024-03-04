local clothes = {}
local appearance = exports['illenium-appearance']

local removeComp = {
    ['male'] = {
        [1] = {
            drawable = 15,
            texture = 1,
        },
        [3] = {
            drawable = 15,
            texture = 1,
        },
        [4] = {
            drawable = 15,
            texture = 1,
        },
        [5] = {
            drawable = 15,
            texture = 1,
        },
        [6] = {
            drawable = 15,
            texture = 1,
        },
        [7] = {
            drawable = 15,
            texture = 1,
        },
        [8] = {
            drawable = 15,
            texture = 1,
        },
        [9] = {
            drawable = 15,
            texture = 1,
        },
        [10] = {
            drawable = 15,
            texture = 1,
        },
        [11] = {
            drawable = 15,
            texture = 1,
        },
        [12] = {
            drawable = 15,
            texture = 1,
        },
    },
    ['female'] = {
        [1] = {
            drawable = 15,
            texture = 1,
        },
        [3] = {
            drawable = 15,
            texture = 1,
        },
        [4] = {
            drawable = 15,
            texture = 1,
        },
        [5] = {
            drawable = 15,
            texture = 1,
        },
        [6] = {
            drawable = 15,
            texture = 1,
        },
        [7] = {
            drawable = 15,
            texture = 1,
        },
        [8] = {
            drawable = 15,
            texture = 1,
        },
        [9] = {
            drawable = 15,
            texture = 1,
        },
        [10] = {
            drawable = 15,
            texture = 1,
        },
        [11] = {
            drawable = 15,
            texture = 1,
        },
        [12] = {
            drawable = 15,
            texture = 1,
        },
    },
}

local removeProp = {
    ['male'] = {
        [0] = {
            drawable = 15,
            texture = 1,
        },
        [1] = {
            drawable = 15,
            texture = 1,
        },
        [2] = {
            drawable = 15,
            texture = 1,
        },
        [6] = {
            drawable = 15,
            texture = 1,
        },
        [7] = {
            drawable = 15,
            texture = 1,
        },
    },
    ['female'] = {
        [0] = {
            drawable = 15,
            texture = 1,
        },
        [1] = {
            drawable = 15,
            texture = 1,
        },
        [2] = {
            drawable = 15,
            texture = 1,
        },
        [6] = {
            drawable = 15,
            texture = 1,
        },
        [7] = {
            drawable = 15,
            texture = 1,
        },
    },
}

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

local function isMaleOrFemale()
    local model = appearance:getPedModel(cache.ped)

    if model == "mp_f_freemode_01" then
        return "female"
    end

    return "male"
end

function clothes.sync(all)
    if all then
        local components = appearance:getPedComponents(cache.ped)
        local props = appearance:getPedProps(cache.ped)

        appearance:setPedComponents(cache.ped, components)
        appearance:setPedProps(cache.ped, props)
    end

    local outfit = appearance:getPedAppearance(cache.ped)
    TriggerServerEvent("illenium-appearance:server:saveAppearance", outfit)
end

function clothes.get()
    local inventory = {
        type = 'clothes',
        slots = 16,
        items = {},
    }

    local props = appearance:getPedProps(cache.ped)
    local components = appearance:getPedComponents(cache.ped)

    for _, component in pairs(components) do
        if component.component_id == 0 or component.component_id == 2 then
            goto skip
        end

        local model = isMaleOrFemale()
        local slot = #inventory.items + 1

        if component.drawable ~= -1 and (removeComp[model][component.component_id].drawable ~= component.drawable) then
            inventory.items[#inventory.items+1] = {
                slot = slot,
                name = idToNameComps[slot],
                count = 1,
                weight = 100,
                metadata = {
                    type = "component",
                    component = component,
                    image = ('clothes/%s/%s_%s_%s'):format(model, model, component.component_id, component.drawable) .. (component.texture ~= 0 and ('_%s'):format(component.texture) or '')
                },
            }
        else
            inventory.items[#inventory.items+1] = {
                slot = slot,
            }
        end

        ::skip::
    end

    for _, prop in pairs(props) do
        local model = isMaleOrFemale()
        local slot = #inventory.items + 1

        if prop.drawable ~= -1 and (removeProp[model][prop.prop_id].drawable ~= prop.drawable) then
            inventory.items[#inventory.items+1] = {
                slot = slot,
                name = idToNameProps[slot],
                count = 1,
                weight = 100,
                metadata = {
                    type = "prop",
                    prop = prop,
                    image = ('clothes/%s/%s_prop_%s_%s'):format(model, model, prop.prop_id, prop.drawable) .. (prop.texture ~= 0 and ('_%s'):format(prop.texture) or '')
                },
            }
        else
            inventory.items[#inventory.items+1] = {
                slot = slot,
            }
        end
    end

    return inventory
end

lib.callback.register('ox_inventory:addClothes', function(data)
    if not data then
        return false, 'no_data'
    end

    if data.type == 'prop' then
        local prop = data.prop
        appearance:setPedProp(cache.ped, {
            prop_id = prop.prop_id,
            drawable = prop.drawable,
            texture = prop.texture
        })
    end

    if data.type == 'component' then
        local component = data.component
        appearance:setPedComponent(cache.ped, {
            component_id = component.component_id,
            drawable = component.drawable,
            texture = component.texture
        })
    end

    clothes.sync(true)

    return true
end)

lib.callback.register('ox_inventory:removeClothes', function(data)
    if not data then
        return false, 'no_data'
    end

    local model = isMaleOrFemale()

    if model == 'male' then
        if data.type == 'prop' then
            local prop = removeProp[model][data.prop.prop_id]
            appearance:setPedProp(cache.ped, {
                prop_id = data.prop.prop_id,
                drawable = prop.drawable,
                texture = prop.texture
            })
        end
        if data.type == 'component' then
            local component = removeComp[model][data.component.component_id]
            appearance:setPedComponent(cache.ped, {
                component_id = data.component.component_id,
                drawable = component.drawable,
                texture = component.texture
            })
        end
    else
        if data.type == 'prop' then
            local prop = removeProp[model][data.prop.prop_id]
            appearance:setPedProp(cache.ped, {
                prop_id = data.prop.prop_id,
                drawable = prop.drawable,
                texture = prop.texture
            })
        end
        if data.type == 'component' then
            local component = removeComp[model][data.component.component_id]
            appearance:setPedComponent(cache.ped, {
                component_id = data.component.component_id,
                drawable = component.drawable,
                texture = component.texture
            })
        end
    end

    clothes.sync(true)

    return true
end)

return clothes