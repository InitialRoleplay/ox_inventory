local clothes = {}

function clothes.addClothes(source, data)
    if not data and not data.metadata and not (data.metadata.type == 'prop' or data.metadata.type == 'component') then
        return
    end
    return lib.callback.await('ox_inventory:addClothes', source, data.metadata)
end

function clothes.removeClothes(source, data)
    if not data and not data.metadata and not (data.metadata.type == 'prop' or data.metadata.type == 'component') then
        return
    end
    return lib.callback.await('ox_inventory:removeClothes', source, data.metadata)
end

return clothes