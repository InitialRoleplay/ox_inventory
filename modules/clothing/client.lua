local function isMaleOrFemale()
    local skin = exports.bl_appearance:GetPedSkin(PlayerPedId())
    return (skin.model == "mp_f_freemode_01") and "female" or "male"
end

function client.syncClothes()
    local outfit = exports.bl_appearance:GetPedAppearance(PlayerPedId())
    TriggerServerEvent('ox_inventory:clothing:save', outfit)
    if client.getPed() ~= 0 then
        exports.bl_appearance:SetPedAppearance(client.getPed(), outfit)
    end
end

lib.callback.register('ox_inventory:clothes:appearance', function()
    local sex = isMaleOrFemale()
    local props = exports.bl_appearance:GetPedProps(PlayerPedId())
    local drawables = exports.bl_appearance:GetPedDrawables(PlayerPedId())
    return sex, props, drawables
end)

lib.callback.register('ox_inventory:addClothing', function(data)
    if not data then
        return false
    end

    if data.type == 'component' then
        exports.bl_appearance:setPedComponent(PlayerPedId(), {
            component_id = data.component,
            drawable = data.drawable,
            texture = data.texture
        })
    elseif data.type == 'prop' then
        exports.bl_appearance:setPedProp(PlayerPedId(), {
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
        exports.bl_appearance:setPedComponent(PlayerPedId(), {
            component_id = data.component,
            drawable = component.drawable,
            texture = component.texture
        })
    elseif data.type == 'prop' then
        local prop = shared.clothing.no_props[sex][data.prop]
        exports.bl_appearance:setPedProp(PlayerPedId(), {
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
            exports.bl_appearance:setPedComponent(PlayerPedId(), {
                component_id = value.component,
                drawable = value.drawable,
                texture = value.texture
            })
        elseif value.type == 'prop' then
            exports.bl_appearance:setPedProp(PlayerPedId(), {
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
        exports.bl_appearance:setPedComponent(PlayerPedId(), {
            component_id = component,
            drawable = value.drawable,
            texture = value.texture
        })
    end

    for prop, value in ipairs(shared.clothing.no_props[sex]) do
        exports.bl_appearance:setPedProp(PlayerPedId(), {
            prop_id = prop,
            drawable = value.drawable,
            texture = value.texture
        })
    end

    client.syncClothes()

    return true
end)

exports('SyncClothes', function()
    client.syncClothes()
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    client.syncClothes()
end)
