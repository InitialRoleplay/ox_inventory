local clothes = {}
local appearance = exports['illenium-appearance']

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

function clothes.get()
    local inventory = {
        type = 'clothes',
        slots = 16,
        items = {},
    }

    local props = appearance:getPedProps()
    local components = appearance:getPedComponents()

    for _, component in pairs(components) do
        if component.component_id == 0 or component.component_id == 2 then
            goto skip
        end

        local slot = #inventory.items + 1

        if component.drawable ~= -1 then
            local model = isMaleOrFemale()

            inventory.items[#inventory.items+1] = {
                slot = slot,
                name = idToNameComps[slot],
                count = 1,
                weight = 100,
                metadata = {
                    type = "component",
                    component = component
                },
                image = ('clothes/%s/%s_%s_%s_%s'):format(model, model, component.component_id, component.drawable, component.texture)
            }
        else
            inventory.items[#inventory.items+1] = {
                slot = slot,
            }
        end

        ::skip::
    end

    for _, prop in pairs(props) do
        local slot = #inventory.items + 1

        if prop.drawable ~= -1 then
            local model = isMaleOrFemale()

            inventory.items[#inventory.items+1] = {
                slot = slot,
                name = idToNameProps[slot],
                count = 1,
                weight = 100,
                metadata = {
                    type = "prop",
                    prop = prop
                },
                image = ('clothes/%s/%s_prop_%s_%s_%s'):format(model, model, prop.prop_id, prop.drawable, prop.texture)
            }
        else
            inventory.items[#inventory.items+1] = {
                slot = slot,
            }
        end
    end

    return inventory
end

return clothes