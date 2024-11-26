local function isMaleOrFemale()
    local skin = exports.bl_appearance:GetPedSkin(cache.ped)
    return (skin.model == "mp_f_freemode_01") and "female" or "male"
end

function client.syncClothes()
    local outfit = exports.bl_appearance:GetPedAppearance(cache.ped)
    if client.getPed() ~= 0 then
        exports.bl_appearance:SetPedAppearance(client.getPed(), outfit)
    end
    TriggerServerEvent('ox_inventory:syncPlayerClothes')
end

lib.callback.register('ox_inventory:clothes:appearance', function()
    local sex = isMaleOrFemale()
    local props = exports.bl_appearance:GetPedProps(cache.ped)
    local head = exports.bl_appearance:GetPedHeadOverlay(cache.ped)
    local drawables = exports.bl_appearance:GetDrawables(cache.ped)
    if not props or not head or not drawables then return false end
    return sex, props, head, drawables
end)

lib.callback.register('ox_inventory:addClothing', function(data)
    if not data then return false end
    if data.type == 'component' then
        exports.bl_appearance:SetPedDrawable(cache.ped, data)
    elseif data.type == 'prop' then
        exports.bl_appearance:SetPedProp(cache.ped, data)
    end
    client.syncClothes()
    return true
end)

lib.callback.register('ox_inventory:removeClothing', function(data)
    if not data then return false end

    local sex = isMaleOrFemale()
    local component = shared.clothing[sex][data.id]

    if data.type == 'component' then
        exports.bl_appearance:SetPedDrawable(cache.ped, {
            index = data.index,
            value = component.drawable,
            id = data.id,
            texture = component.texture
        })
    elseif data.type == 'prop' then
        exports.bl_appearance:SetPedProp(cache.ped, {
            index = data.index,
            value = component.drawable,
            id = data.id,
            texture = component.texture
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
            exports.bl_appearance:setPedComponent(cache.ped, {
                component_id = value.component,
                drawable = value.drawable,
                texture = value.texture
            })
        elseif value.type == 'prop' then
            exports.bl_appearance:setPedProp(cache.ped, {
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
        exports.bl_appearance:setPedComponent(cache.ped, {
            component_id = component,
            drawable = value.drawable,
            texture = value.texture
        })
    end

    for prop, value in ipairs(shared.clothing.no_props[sex]) do
        exports.bl_appearance:setPedProp(cache.ped, {
            prop_id = prop,
            drawable = value.drawable,
            texture = value.texture
        })
    end

    client.syncClothes()

    return true
end)