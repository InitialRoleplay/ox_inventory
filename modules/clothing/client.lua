local appearance = exports['illenium-appearance']

local function isMaleOrFemale()
    local model = appearance:getPedModel(cache.ped)

    if model == "mp_f_freemode_01" then
        return "female"
    end

    return "male"
end

function client.syncClothes()
    local outfit = appearance:getPedAppearance(cache.ped)
    TriggerServerEvent("illenium-appearance:server:saveAppearance", outfit)

    local ped = client.getPed()
    appearance:setPedAppearance(ped, outfit)
end

lib.callback.register('ox_inventory:getPlayerClothes', function()
	local clothes = {}

	local sex = isMaleOrFemale()
    local props = appearance:getPedProps(cache.ped)
	local components = appearance:getPedComponents(cache.ped)

	for _, value in pairs(components) do
        if value.component_id ~= 0 and value.component_id ~= 2 then
            local component = shared.clothing.no_clothing[sex][value.component_id]

            if component.drawable ~= value.drawable then
                clothes[#clothes+1] = {
                    type = 'component',
                    drawable = value.drawable,
                    texture = value.texture,
                    component = value.component_id,
                }
            else
                clothes[#clothes+1] = {}
            end
        end
	end

	for _, value in pairs(props) do
        local prop = shared.clothing.no_props[sex][value.prop_id]

        if prop.drawable ~= value.drawable then
            clothes[#clothes+1] = {
                type = 'prop',
                drawable = value.drawable,
                texture = value.texture,
                prop = value.prop_id,
            }
        else
            clothes[#clothes+1] = {}
        end
	end

	return sex, clothes
end)

lib.callback.register('ox_inventory:addClothing', function(data)
    if not data then
        return false
    end

    if data.type == 'component' then
        appearance:setPedComponent(cache.ped, {
            component_id = data.component,
            drawable = data.drawable,
            texture = data.texture
        })
    elseif data.type == 'prop' then
        appearance:setPedProp(cache.ped, {
            prop_id = data.prop,
            drawable = data.drawable,
            texture = data.texture
        })
    end

    client.syncClothes()

    return true
end)

lib.callback.register('ox_inventory:removeClothing', function(data)
    if not data then
        return false
    end

	local sex = isMaleOrFemale()

    if data.type == 'component' then
        local component = shared.clothing.no_clothing[sex][data.component]
        appearance:setPedComponent(cache.ped, {
            component_id = data.component,
            drawable = component.drawable,
            texture = component.texture
        })
    elseif data.type == 'prop' then
        local prop = shared.clothing.no_props[sex][data.prop]
        appearance:setPedProp(cache.ped, {
            prop_id = data.prop,
            drawable = prop.drawable,
            texture = prop.texture
        })
    end

    client.syncClothes()

    return true
end)

lib.callback.register('ox_inventory:addOutfit', function(data)
    if not data then
        return false
    end

    for _, value in ipairs(data) do
        if value.type == 'component' then
            appearance:setPedComponent(cache.ped, {
                component_id = value.component,
                drawable = value.drawable,
                texture = value.texture
            })
        elseif value.type == 'prop' then
            appearance:setPedProp(cache.ped, {
                prop_id = value.prop,
                drawable = value.drawable,
                texture = value.texture
            })
        end
    end

    client.syncClothes()

    return true
end)

lib.callback.register('ox_inventory:removeOutfit', function()
	local sex = isMaleOrFemale()

    for component, value in ipairs(shared.clothing.no_clothing[sex]) do
        appearance:setPedComponent(cache.ped, {
            component_id = component,
            drawable = value.drawable,
            texture = value.texture
        })
    end

    for prop, value in ipairs(shared.clothing.no_props[sex]) do
        appearance:setPedProp(cache.ped, {
            prop_id = prop,
            drawable = value.drawable,
            texture = value.texture
        })
    end

    client.syncClothes()

    return true
end)

exports('SyncClothes', function ()
    TriggerServerEvent('ox_inventory:syncPlayerClothes')
end)
