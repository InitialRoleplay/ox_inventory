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

    ["lockpick"] = {
        label = "Outil de crochetage",
        description = 'Un outil pour ouvrir les portes',
        weight = 10,
        stack = false
    },

    ["advanced_lockpick"] = {
        label = "Outil de crochetage avancé",
        description = 'Un outil pour ouvrir les portes',
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
    },

    -- MM RADIO --

    -- CDX POLICE --


    ['ziptie'] = {
        label = 'Zips',
        weight = 100,
    },

    ['handcuffs'] = {
        label = 'Menottes',
        weight = 250,
    },

    ['cuffkeys'] = {
        label = 'Clé de menottes',
        weight = 50,
    },

    ['flush_cutter'] = {
        label = 'Coupeur affleurant',
        weight = 500,
    },

    ['bolt_cutter'] = {
        label = 'Coupe boulons',
        weight = 1000,
    },

    ["shield"] = {
        label = "Bouclier anti-émeute",
        weight = 8000,
        stack = false,
        consume = 1,
        client = {
            export = "cdx_police.useShield",
        }
    },

	["spikestrip"] = {
        label = "Bande de clous",
        weight = 1500,
        consume = 0,
        client = {
            export = "cdx_police.deploySpikestrip",
        }
    },

    -- CDX POLICE --

    -- INITIAL MECHANIC --

    ["radiator"] = {
		label = "Radiator",
		weight = 1,
		stack = true,
		close = true,
	},
    ["fuel_pump"] = {
		label = "Fuel Pump",
		weight = 1,
		stack = true,
		close = true,
	},
    ["brakes"] = {
		label = "Brakes",
		weight = 1,
		stack = true,
		close = true,
	},
    ["drive_shaft"] = {
		label = "Drive Shaft",
		weight = 1,
		stack = true,
		close = true,
	},
    ["alternator"] = {
		label = "Alternator",
		weight = 1,
		stack = true,
		close = true,
	},
    ["clutch"] = {
		label = "Clutch",
		weight = 1,
		stack = true,
		close = true,
	},

    ["oil_filter"] = {
		label = "Oil & Filter",
		weight = 1,
		stack = true,
		close = true,
	},
    ["air_filter"] = {
		label = "Air Filter",
		weight = 1,
		stack = true,
		close = true,
	},
    ["fuel_filter"] = {
		label = "Fuel Filter",
		weight = 1,
		stack = true,
		close = true,
	},
    ["coolant"] = {
		label = "Coolant",
		weight = 1,
		stack = true,
		close = true,
	},
	["brake_fluid"] = {
		label = "Brake Fluid",
		weight = 1,
		stack = true,
		close = true,
	},
    ["steering_fluid"] = {
		label = "Power Steering Fluid",
		weight = 1,
		stack = true,
		close = true,
	},
    ["transmission_fluid"] = {
		label = "Transmission Fluid",
		weight = 1,
		stack = true,
		close = true,
	},
    ["spark_plugs"] = {
		label = "Spark Plugs",
		weight = 1,
		stack = true,
		close = true,
	},
    ["drive_belt"] = {
		label = "Drive Belt",
		weight = 1,
		stack = true,
		close = true,
	},
    ["flywheel"] = {
		label = "Flywheel",
		weight = 1,
		stack = true,
		close = true,
	},
    ["tires"] = {
		label = "Tires",
		weight = 1,
		stack = true,
		close = true,
	},

    ["part_door"] = {
		label = "Door",
		weight = 1,
		stack = true,
		close = true,
	},

	["part_hood"] = {
		label = "Hood",
		weight = 1,
		stack = true,
		close = true,
	},

	["part_trunk"] = {
		label = "Trunk",
		weight = 1,
		stack = true,
		close = true,
	},

	["part_wheel"] = {
		label = "Wheel",
		weight = 1,
		stack = true,
		close = true,
	},

	["part_window"] = {
		label = "Window",
		weight = 1,
		stack = true,
		close = true,
	},

    ["repairkit"] = {
		label = "Repair Kit",
		weight = 1,
		stack = true,
		close = true,
	},
	["repairkit_adv"] = {
		label = "Repair Kit Advanced",
		weight = 1,
		stack = true,
		close = true,
	},
    ["patchkit"] = {
		label = "Patch Kit",
		weight = 1,
		stack = true,
		close = true,
	},
    ["carjack"] = {
		label = "Car Jack",
		weight = 1,
		stack = true,
		close = true,
	},
    ["fuel_can"] = {
		label = "Fuel Can",
		weight = 1,
		stack = true,
		close = true,
	},
    ["jump_starter"] = {
		label = "Jump Starter",
		weight = 1,
		stack = true,
		close = true,
	},
    ["tire_repairkit"] = {
		label = "Tire Repair Kit",
		weight = 1,
		stack = true,
		close = true,
	},

    ["roadcone"] = {
		label = "Road Cone",
		weight = 1,
		stack = true,
		close = true,
	},
    ["toolstrolley"] = {
		label = "Tools Trolley",
		weight = 1,
		stack = true,
		close = true,
	},
	["toolbox"] = {
		label = "Tool Box",
		weight = 1,
		stack = true,
		close = true,
	},
    ["enginehoist"] = {
		label = "Engine Hoist",
		weight = 1,
		stack = true,
		close = true,
	},
    ["consign"] = {
		label = "Con Sign",
		weight = 1,
		stack = true,
		close = true,
	},
    ["roadbarrier"] = {
		label = "Road Barrier",
		weight = 1,
		stack = true,
		close = true,
	},

    ['scrap_metal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
    ["steel"] = {
		label = "Steel",
		weight = 1,
		stack = true,
		close = true,
	},
    ["aluminium"] = {
		label = "Aluminium",
		weight = 1,
		stack = true,
		close = true,
	},
    ["plastic"] = {
		label = "Plastic",
		weight = 1,
		stack = true,
		close = true,
	},
	["rubber"] = {
		label = "Rubber",
		weight = 1,
		stack = true,
		close = true,
	},
    ["electric_scrap"] = {
		label = "Electric Scrap",
		weight = 1,
		stack = true,
		close = true,
	},
    ["glass"] = {
		label = "Glass",
		weight = 1,
		stack = true,
		close = true,
	},
    ["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},
    ["carbon_fiber"] = {
		label = "Carbon Fiber",
		weight = 1,
		stack = true,
		close = true,
	},
    ["brass"] = {
		label = "Brass",
		weight = 1,
		stack = true,
		close = true,
	},
    ["synthetic_oil"] = {
		label = "Synthetic Oil",
		weight = 1,
		stack = true,
		close = true,
	},
    ["acid"] = {
		label = "Synthetic Acid",
		weight = 1,
		stack = true,
		close = true,
	},

    -- INITIAL MECHANIC --
}