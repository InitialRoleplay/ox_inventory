return {
    -- INVENTORY ITEMS --

    ['money'] = { label = 'Argent', },
    ['black_money'] = { label = 'Argent sale', },

    ['clothes_masks'] = { label = 'Masque', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_jackets'] = { label = 'Veste', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_legs'] = { label = 'Pantalon', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_bags'] = { label = 'Sac à dos', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_torsos'] = { label = 'Gants', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_shoes'] = { label = 'Chaussures', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_shirts'] = { label = 'T-Shirt', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_vest'] = { label = 'Gilet par balle', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_bagdes'] = { label = 'Badge', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_neck'] = { label = 'Chaine', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_hats'] = { label = 'Chapeau', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_glasses'] = { label = 'Lunettes de soleil', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_earrings'] = { label = 'boucle d\'oreille', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_watches'] = { label = 'Montre', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_bracelets'] = { label = 'Bracelet', description = 'Un vêtement cool', weight = 0, stack = false },
    ['clothes_outfits'] = { label = 'Tenue', description = 'Une tenue cool', weight = 0, stack = false },

    ['tosti'] = { label = 'Tosti', description = 'Un bon sandwich américain', weight = 250, stack = true },
    ['water_bottle'] = { label = 'Bouteille d\'eau', description = 'De l\'eau bien fraîche', weight = 500, stack = true },

    -- INVENTORY ITEMS --

    -- MM CARKEYS --

    ["vehiclekey"] = {
        label = "Clé de véhicule",
        description = 'Il s\'agit d\'une clé de voiture, prenez-en soin',
        weight = 10,
        stack = false
    },

    -- MM CARKEYS --

    -- MM RADIO --

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:use'
        }
    },

    ['jammer'] = {
        label = 'Brouilleur radio',
        weight = 10000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:usejammer'
        }
    },

    ['radiocell'] = {
        label = 'Cellules AAA',
        weight = 1000,
        stack = true,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:recharge'
        }
    }

    -- MM RADIO --
}
