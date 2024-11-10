return {
    ['money'] = {
        label = 'Argent',
    },

    ['black_money'] = {
        label = 'Argent sale',
    },

    ['clothes_masks'] = {
        label = 'Masque',
        description = 'Un vêtement cool',
        weight = 0,
        stack = false
    },

    ['tosti'] = {
        label = 'Tosti',
        description = 'Un bon sandwich américain',
        weight = 250,
        stack = true
    },

    ['water_bottle'] = {
        label = 'Bouteille d\'eau',
        description = 'De l\'eau bien fraîche',
        weight = 500,
        stack = true
    },

    ["phone"] = {
        label = "Phone",
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            export = "lb-phone.UsePhoneItem",
            remove = function()
                TriggerEvent("lb-phone:itemRemoved")
            end,
            add = function()
                TriggerEvent("lb-phone:itemAdded")
            end
        }
    },
}
