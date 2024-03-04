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
		weight = 100,
		stack = false,
	},

	['clothes_torso'] = {
		label = 'Veste',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_pants'] = {
		label = 'Pantalon',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_bags'] = {
		label = 'Sac à dos',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_hands'] = {
		label = 'Gants',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_shoes'] = {
		label = 'Chaussures',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_access'] = {
		label = 'Accéssoires',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_tshirts'] = {
		label = 'T-Shirt',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_kevlars'] = {
		label = 'Gilet par balle',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_bagdes'] = {
		label = 'Badge',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_chains'] = {
		label = 'Chaine',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_hats'] = {
		label = 'Chapeau',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_glasses'] = {
		label = 'Lunettes de Soleil',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_ears'] = {
		label = 'Lunettes de Soleil',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_watches'] = {
		label = 'Montre',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	['clothes_bracelets'] = {
		label = 'Bracelet',
		description = 'Un vêtement cool',
		weight = 100,
		stack = false,
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 50,
		stack = false,
	},

	["phone_dongle"] = {
		label = "Phone Dongle",
		weight = 50,
		stack = false,
	},

	["powerbank"] = {
		label = "Power Bank",
		weight = 50,
		stack = false,
	},

	['watering_can'] = {
		label = 'Watering Can',
		weight = 325,
	},

	['fertilizer'] = {
		label = 'Fertilizer',
		weight = 175,
	},

	['plant_pot'] = {
		label = 'Plant Pot',
		weight = 25,
	},

	['plant_shovel'] = {
		label = 'Shovel',
		weight = 75,
	},

	['plant_shears'] = {
		label = 'Shears',
		weight = 10,
	},

	['rolling_paper'] = {
		label = 'Rolling Paper',
		weight = 5,
	},

	['regweed_seed'] = {
		label = 'Weed Seed',
		weight = 15,
	},

	['bananakush_seed'] = {
		label = 'Banana Kush Seed',
		weight = 10,
	},

	['purplehaze_seed'] = {
		label = 'Purple Haze Seed',
		weight = 10,
	},

	['bluedream_seed'] = {
		label = 'Blue Dream Seed',
		weight = 10,
	},

	['regweed_bud'] = {
		label = 'Weed Bud',
		weight = 15,
	},

	['bananakush_bud'] = {
		label = 'Banana Kush Bud',
		weight = 15,
	},

	['purplehaze_bud'] = {
		label = 'Purple Haze Bud',
		weight = 15,
	},

	['bluedream_bud'] = {
		label = 'Blue Dream Bud',
		weight = 15,
	},

	['regweed_joint'] = {
		label = 'Weed Joint',
		weight = 15,
	},

	['bananakush_joint'] = {
		label = 'Banana Kush Joint',
		weight = 15,
	},

	['purplehaze_joint'] = {
		label = 'Purple Haze Joint',
		weight = 15,
	},

	['bluedream_joint'] = {
		label = 'Blue Dream Joint',
		weight = 15,
	},

	['phone'] = {
		label = 'Classic Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,

			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

	['black_phone'] = {
		label = 'Black Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,

			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

	['yellow_phone'] = {
		label = 'Yellow Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,

			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

	['red_phone'] = {
		label = 'Red Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,

			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

	['green_phone'] = {
		label = 'Green Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,

			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

	['white_phone'] = {
		label = 'White Phone',
		weight = 150,
		stack = false,
		consume = 0,
		client = {
			export = "qs-smartphone-pro.UsePhoneItem",
			add = function(total)
				TriggerServerEvent('phone:itemAdd')
			end,

			remove = function(total)
				TriggerServerEvent('phone:itemDelete')
			end
		}
	},

	['trowel'] = {
		label = 'Trowel',
		description = "Perfect for your garden or for Coca plant",
		weight = 250,
		stack = true
	},

	['coke_leaf'] = {
		label = 'Coca Leaf',
		description = "Leaf from amazing plant",
		weight = 15,
		stack = true
	},

	['coke_access'] = {
		label = 'Access card',
		description = "Access Card for Coke Lab",
		weight = 50,
		stack = true
	},

	['coke_box'] = {
		label = 'Box with Coke',
		description = "Be careful not to spill it on the ground",
		weight = 2000,
		stack = true
	},

	['coke_raw'] = {
		label = 'Raw Coke',
		description = "Coke with some dirty particles",
		weight = 50,
		stack = true
	},

	['coke_pure'] = {
		label = 'Pure Coke',
		description = "Coke without any dirty particles",
		weight = 70,
		stack = true,
		close = true
	},

	['coke_figure'] = {
		label = 'Action Figure',
		description = "Action Figure of the cartoon superhero Impotent Rage",
		weight = 150,
		stack = true
	},

	['coke_figureempty'] = {
		label = 'Action Figure',
		description = "Action Figure of the cartoon superhero Impotent Rage",
		weight = 150,
		stack = true
	},

	['coke_figurebroken'] = {
		label = 'Pieces of Action Figure',
		description = "You can throw this away or try to repair with glue",
		weight = 100,
		stack = true
	},

	['meth_amoniak'] = {
		label = 'Ammonia',
		description = "Warning! Dangerous Chemicals!",
		weight = 1000,
		stack = true
	},

	['meth_pipe'] = {
		label = 'Meth Pipe',
		description = "Enjoy your new crystal clear stuff!",
		weight = 880,
		stack = true
	},

	['crack_pipe'] = {
		label = 'Crack Pipe',
		description = "Enjoy your Crack!",
		weight = 550,
		stack = true
	},

	['meth_syringe'] = {
		label = 'Syringe Meth',
		description = "Enjoy your new crystal clear stuff!",
		weight = 300,
		stack = true
	},

	['heroin_syringe'] = {
		label = 'Syringe Heroin',
		description = "Enjoy your new crystal clear stuff!",
		weight = 300,
		stack = true
	},

	['syringe'] = {
		label = 'Syringe',
		description = "Enjoy your new crystal clear stuff!",
		weight = 300,
		stack = true
	},

	['meth_sacid'] = {
		label = 'Sodium Benzoate Canister',
		description = "Warning! Dangerous Chemicals!",
		weight = 5000,
		stack = true
	},

	['meth_emptysacid'] = {
		label = 'Empty Canister',
		description = "Material: Plastic, Good for Sodium Benzoate",
		weight = 2000,
		stack = true
	},

	['meth_access'] = {
		label = 'Access card',
		description = "Access Card for Meth Lab",
		weight = 100,
		stack = true,
		close = true
	},

	['meth_glass'] = {
		label = 'Tray with meth',
		description = "Needs to be smashed with hammer",
		weight = 1000,
		stack = true
	},

	['meth_sharp'] = {
		label = 'Tray with smashed meth',
		description = "Can be packed",
		weight = 1000,
		stack = true
	},

	['meth_bag'] = {
		label = 'Meth bag',
		description = "Plastic bag with magic stuff!",
		weight = 1000,
		stack = true
	},

	['weed_package'] = {
		label = 'Weed Bag',
		description = "Plastic bag with magic stuff!",
		weight = 500,
		stack = true
	},

	['weed_access'] = {
		label = 'Access card',
		description = "Access Card for Weed Lab",
		weight = 100,
		stack = true
	},

	['weed_bud'] = {
		label = 'Weed Bud',
		description = "Needs to be clean at the table",
		weight = 40,
		stack = true
	},

	['weed_blunt'] = {
		label = 'Blunt',
		description = "Enjoy your weed!",
		weight = 90,
		stack = true,
		close = true
	},

	['weed_wrap'] = {
		label = 'Blunt wraps',
		description = "Get Weed Bag and roll blunt!",
		weight = 75,
		stack = true,
		close = true
	},

	['weed_papers'] = {
		label = 'Weed papers',
		description = "Get Weed Bag and roll joint!",
		weight = 15,
		stack = true,
		close = true
	},

	['weed_joint'] = {
		label = 'Joint',
		description = "Enjoy your weed!",
		weight = 50,
		stack = true,
		close = true
	},

	['weed_budclean'] = {
		label = 'Weed Bud',
		description = "You can pack this at the table",
		weight = 35,
		stack = true
	},

	['plastic_bag'] = {
		label = 'Plastic bag',
		description = "You can pack a lot of stuff here!",
		weight = 8,
		stack = true
	},

	['scissors'] = {
		label = 'Scissors',
		description = "To help you with collecting",
		weight = 40,
		stack = true
	},

	['ecstasy1'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy2'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy3'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy4'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['ecstasy5'] = {
		label = 'Ecstasy',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd1'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd2'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd3'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd4'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['lsd5'] = {
		label = 'LSD',
		description = "Explore a new universe!",
		weight = 10,
		stack = true,
		close = true
	},

	['magicmushroom'] = {
		label = 'Mushroom',
		description = "Explore a new universe!",
		weight = 30,
		stack = true,
		close = true
	},

	['peyote'] = {
		label = 'Peyote',
		description = "Explore a new universe!",
		weight = 30,
		stack = true,
		close = true
	},

	['xanaxpack'] = {
		label = 'Pack of Xanax',
		description = "Needs to be open",
		weight = 130,
		stack = true,
		close = true
	},

	['xanaxplate'] = {
		label = 'Plate of Xanax',
		description = "Needs to be open",
		weight = 30,
		stack = true,
		close = true
	},

	['xanaxpill'] = {
		label = 'Xanax pill',
		description = "Explore a new universe!",
		weight = 2,
		stack = true,
		close = true
	},

	['glue'] = {
		label = 'Glue',
		description = "Good for repairing things!",
		weight = 30,
		stack = true
	},

	['hammer'] = {
		label = 'Hammer',
		description = "Good for smashing things!",
		weight = 500,
		stack = true
	},

	['poppyplant'] = {
		label = 'Poppy Plant',
		description = "Very nice plant!",
		weight = 30,
		stack = true
	},

	['heroin'] = {
		label = 'Heroin',
		description = "Explore a new universe!",
		weight = 30,
		stack = true
	},

	['crack'] = {
		label = 'Crack',
		description = "Explore a new universe!",
		weight = 30,
		stack = true
	},

	['baking_soda'] = {
		label = 'Baking Soda',
		description = "Baking Bad!",
		weight = 30,
		stack = true
	},

	['newscamera'] = {
		label = 'News Camera',
		weight = 1100,
		price = 100,
		stack = false,
		close = true,
		description = 'A little dusty',
		client = {
			image = 'newscam.png',
			export = 'dailyglobe.newscamera'
		},
	},

	['newsboom'] = {
		label = 'News Boom',
		weight = 500,
		price = 100,
		stack = false,
		close = true,
		description = 'Heavier than it looks',
		client = {
			image = 'newsbmic.png',
			export = 'dailyglobe.newsboom'
		},
	},

	['newsmic'] = {
		label = 'News Mic',
		weight = 100,
		price = 100,
		stack = false,
		close = true,
		description = 'Is this thing on?',
		client = {
			image = 'newsmic.png',
			export = 'dailyglobe.newsmic'
		},
	},

	["cooked_trout"] = {
		label = "Truite cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["driver_license_plane"] = {
		label = "Permis de conduire avion",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "driver_license.png",
		}
	},

	["coffee"] = {
		label = "Café",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "coffee.png",
		}
	},

	["cooked_bluefish"] = {
		label = "Poisson bleu cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["shovel"] = {
		label = "Shovel",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "shovel.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["laptop"] = {
		label = "Ordinateur portable",
		weight = 4000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "laptop.png",
		}
	},

	["raw_sea_bream"] = {
		label = "Dorade cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["exhaust"] = {
		label = "Échappement du véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "exhaust.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["headlights"] = {
		label = "Phares au xénon",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "headlights.png",
		}
	},

	["brakes1"] = {
		label = "Freins haute performance",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes1.png",
		}
	},

	["spray"] = {
		label = "Bomboletta Spray",
		weight = 300,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "spray.png",
		}
	},

	["milk"] = {
		label = "Lait",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "milk.png",
		}
	},

	["bs_fanta"] = {
		label = "Fanta",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_fanta.png",
		}
	},

	["hay"] = {
		label = "Foin",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hay.png",
		}
	},

	["copper"] = {
		label = "Bonze",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "copper.png",
		}
	},

	["seat"] = {
		label = "Cosmétiques de siège",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "seat.png",
		}
	},

	["raw_carp"] = {
		label = "Carpe cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["id_card"] = {
		label = "Carte d'identité",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "id_card.png",
		}
	},

	["xtcbaggy"] = {
		label = "Sac de XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["cooked_mackerel"] = {
		label = "Maquereau cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["cuffkeys"] = {
		label = "Cuff Keys",
		weight = 75,
		stack = true,
		close = true,
		description = "Set them free !",
		client = {
			image = "cuffkeys.png",
		}
	},

	["livery"] = {
		label = "Rouleau de livrée",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "livery.png",
		}
	},

	["raw_beef_meat"] = {
		label = "Boeuf cru",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["ziptie"] = {
		label = "ZipTie",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "ziptie.png",
		}
	},

	["driving_test_permit"] = {
		label = "Permis élève conducteur",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "dmv.png",
		}
	},

	["cocaine_cut"] = {
		label = "cocaine_cut",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "cocaine_cut.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_baggy.png",
		}
	},

	["transmission2"] = {
		label = "Transmission 2",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission2.png",
		}
	},

	["package_money"] = {
		label = "package_money",
		weight = 0,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "package_money.png",
		}
	},

	["empty_evidence_bag"] = {
		label = "Sac de preuves vide",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "evidence.png",
		}
	},

	["glass"] = {
		label = "Verre",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "glass.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "grape.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "firework2.png",
		}
	},

	["roof"] = {
		label = "Toit du véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "roof.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = true,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["markedbills"] = {
		label = "Argent sale",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "markedbills.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "joint.png",
		}
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wood.png",
		}
	},

	["lspd_armor"] = {
		label = "Gilet par balle LSPD",
		weight = 5000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "armor.png",
		}
	},

	["transmission1"] = {
		label = "Transmission 1",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission1.png",
		}
	},

	["mojito"] = {
		label = "Mojitos",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mojito.png",
		}
	},

	["cooked_tuna"] = {
		label = "Thon cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["ginger_syrup"] = {
		label = "Sirop de gingembre",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ginger_syrup.png",
		}
	},

	["fishing_bait"] = {
		label = "Appâts de pêche",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fishing_bait.png",
		}
	},

	["cooked_anchovies"] = {
		label = "Anchois cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["hood"] = {
		label = "Capot du véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "hood.png",
		}
	},

	["bprooftires"] = {
		label = "Pneus anti-balles",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bprooftires.png",
		}
	},

	["noscolour"] = {
		label = "Injecteur de couleur NOS",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "noscolour.png",
		}
	},

	["customplate"] = {
		label = "Plaques personnalisées",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "plate.png",
		}
	},

	["tablet"] = {
		label = "Tablette",
		weight = 2000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tablet.png",
		}
	},

	["flour"] = {
		label = "Farine",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "flour.png",
		}
	},

	["wine"] = {
		label = "Vin",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "wine.png",
		}
	},

	["drifttires"] = {
		label = "Pneus Drift",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "drifttires.png",
		}
	},

	["sorted_money"] = {
		label = "sorted_money",
		weight = 0,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "sorted_money.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_baggy.png",
		}
	},

	["screwdriverset"] = {
		label = "Boîte à outils",
		weight = 1000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "screwdriverset.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Kit de réparation avancé",
		weight = 4000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "advancedkit.png",
		}
	},

	["stickynote"] = {
		label = "Note",
		weight = 0,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "stickynote.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["steel"] = {
		label = "Acier",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "steel.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_baggy.png",
		}
	},

	["bs_coca"] = {
		label = "Coca-cola",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_coca.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_seed.png",
		}
	},

	["small_trap"] = {
		label = "Piège petit",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "small_trap.png",
		}
	},

	["cooked_eel"] = {
		label = "Anguille cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["cooked_carp"] = {
		label = "Carpe cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["harness"] = {
		label = "Harnais de course",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "harness.png",
		}
	},

	["nitrous"] = {
		label = "Nitro",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "nitrous.png",
		}
	},

	["salad"] = {
		label = "Salade",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "salad.png",
		}
	},

	["raw_mackerel"] = {
		label = "Maquereau cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["ananas"] = {
		label = "Ananas",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ananas.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "firework3.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "aluminum.png",
		}
	},

	["raw_perch"] = {
		label = "Perche cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["raw_salmon"] = {
		label = "Saumon cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["radio"] = {
		label = "Radio",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "radio.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_seed.png",
		}
	},

	["policepass"] = {
		label = "Pass police",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "lawyerpass.png",
		}
	},

	["raw_tuna"] = {
		label = "Thon cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["lscm"] = {
		label = "Golf membership",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lscm.png",
		}
	},

	["leo-gps"] = {
		label = "LEO GPS",
		weight = 2000,
		stack = false,
		close = true,
		description = "Show your gps location to others",
		client = {
			image = "leo-gps.png",
		}
	},

	["broken_handcuffs"] = {
		label = "Broken Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "It's broken, maybe you can repair it?",
		client = {
			image = "broken_handcuffs.png",
		}
	},

	["weed_packaged"] = {
		label = "weed_packaged",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "weed_packaged.png",
		}
	},

	["raw_boar_meat"] = {
		label = "Sanglier cru",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["rhum_bacardi_white"] = {
		label = "Rhum Bacardi Blanc",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "rhum_bacardi_white.png",
		}
	},

	["moneybag"] = {
		label = "Sac d'argent",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "moneybag.png",
		}
	},

	["bolt_cutter"] = {
		label = "Bolt Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Wanna cut some metal items ?",
		client = {
			image = "bolt_cutter.png",
		}
	},

	["passion_fruit_juice"] = {
		label = "Jus au fruit de la passion",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "passion_fruit_juice.png",
		}
	},

	["bumper"] = {
		label = "Pare-chocs du véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "bumper.png",
		}
	},

	["bs_the-bleeder"] = {
		label = "Burger le purgeur",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_the-bleeder.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cola.png",
		}
	},

	["chemicals"] = {
		label = "chemicals",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "chemicals.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "police_stormram.png",
		}
	},

	["driver_license_helicopter"] = {
		label = "Permis de conduire helico",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "driver_license.png",
		}
	},

	["bs_milkshake"] = {
		label = "Milkshake",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_milkshake.png",
		}
	},

	["cane_sugar_syrup"] = {
		label = "Sirop de sucre de canne",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cane_sugar_syrup.png",
		}
	},

	["spray_remover"] = {
		label = "Kit rimozione Spray",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "spray_remover.png",
		}
	},

	["gouvernementpass"] = {
		label = "Pass gouvernement",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "lawyerpass.png",
		}
	},

	["aluminumoxide"] = {
		label = "Poudre d'aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["turbo"] = {
		label = "Turbocompresseur",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "turbo.png",
		}
	},

	["big_trap"] = {
		label = "Piège grand",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "big_trap.png",
		}
	},

	["weath_seed"] = {
		label = "Graine de blé",
		weight = 5,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weath_seed.png",
		}
	},

	["fishing_rod"] = {
		label = "Canne à pêche",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fishing_rod.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "firework4.png",
		}
	},

	["banana_cream"] = {
		label = "Créme de banane",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "banana_cream.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "firework1.png",
		}
	},

	["bs_the-heart-stopper"] = {
		label = "Burger arrêt cardiaque",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_the-heart-stopper.png",
		}
	},

	["plastic"] = {
		label = "Plastique",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "plastic.png",
		}
	},

	["raw_rabbit_meat"] = {
		label = "Lapin cru",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["driver_license_boat"] = {
		label = "Permis de conduire bâteau",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "driver_license.png",
		}
	},

	["ducttape"] = {
		label = "Ruban adhésif",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bodyrepair.png",
		}
	},

	["engine1"] = {
		label = "Moteur Shonen",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "shonen.png",
		}
	},

	["cocaine"] = {
		label = "cocaine",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "cocaine.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["bs_pepsi"] = {
		label = "Pepsi",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_pepsi.png",
		}
	},

	["rollcage"] = {
		label = "Cage roulante",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rollcage.png",
		}
	},

	["bandage"] = {
		label = "Bandage",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bandage.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_seed.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["tosti"] = {
		label = "Sandwich au fromage grillé",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tosti.png",
		}
	},

	["dough"] = {
		label = "Pâte fraîche",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dough.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "sandwich.png",
		}
	},

	["sahp_armor"] = {
		label = "Gilet par balle SAHP",
		weight = 5000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "armor.png",
		}
	},

	["feather"] = {
		label = "Plume",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "feather.png",
		}
	},

	["radioscanner"] = {
		label = "Scanner radio",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "radioscanner.png",
		}
	},

	["goldchain"] = {
		label = "Chaîne d'or",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldchain.png",
		}
	},

	["leather"] = {
		label = "Cuir",
		weight = 25,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "leather.png",
		}
	},

	["vapejuice"] = {
		label = "Jus de vape",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "vapejuice.png",
		}
	},

	["lime"] = {
		label = "Citron vert",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lime.png",
		}
	},

	["brakes2"] = {
		label = "Gros freins GT",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes2.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "thermite.png",
		}
	},

	["painkillers"] = {
		label = "Antidouleurs",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "painkillers.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whiskey.png",
		}
	},

	["meth_packaged"] = {
		label = "meth_packaged",
		weight = 0,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "meth_packaged.png",
		}
	},

	["security_card_01"] = {
		label = "Carte de sécurité A",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "security_card_01.png",
		}
	},

	["brakes3"] = {
		label = "Freins de compétition",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "brakes3.png",
		}
	},

	["engine3"] = {
		label = "Moteur V10",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "v10engine.png",
		}
	},

	["engine2"] = {
		label = "Moteur V8",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "v8engine.png",
		}
	},

	["driver_license_truck"] = {
		label = "Permis de conduire camion",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "driver_license.png",
		}
	},

	["banana_mama"] = {
		label = "Banana Mama",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "banana_mama.png",
		}
	},

	["ironoxide"] = {
		label = "Poudre de fer",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "ironoxide.png",
		}
	},

	["advancedlockpick"] = {
		label = "Lockpick avancé",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["banana"] = {
		label = "Banane",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "banana.png",
		}
	},

	["weed_brick"] = {
		label = "Brique de Weed",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_brick.png",
		}
	},

	["syphoningkit"] = {
		label = "Syphoning Kit",
		weight = 5000,
		stack = false,
		close = false,
		description = "A kit made to siphon gasoline from vehicles.",
		client = {
			image = "syphoningkit.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_seed.png",
		}
	},

	["parachute"] = {
		label = "Parachute",
		weight = 30000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "parachute.png",
		}
	},

	["mechanic_tools"] = {
		label = "Outils de mécanicien",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechanic_tools.png",
		}
	},

	["raw_anchovies"] = {
		label = "Anchois cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["goldbar"] = {
		label = "Barre d'or",
		weight = 7000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "goldbar.png",
		}
	},

	["bsco_armor"] = {
		label = "Gilet par balle BCSO",
		weight = 5000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "armor.png",
		}
	},

	["tunerlaptop"] = {
		label = "Puce électronique",
		weight = 2000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tunerchip.png",
		}
	},

	["coke_brick"] = {
		label = "Brique de Coke",
		weight = 1000,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "coke_brick.png",
		}
	},

	["rope"] = {
		label = "Rope",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rope.png",
		}
	},

	["cooked_salmon"] = {
		label = "Saumon cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["tomato_seed"] = {
		label = "Graine de tomate",
		weight = 5,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomato_seed.png",
		}
	},

	["iron"] = {
		label = "Fer",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "iron.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_baggy.png",
		}
	},

	["bs_torpedo"] = {
		label = "Burger la torpille",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_torpedo.png",
		}
	},

	["horn"] = {
		label = "Klaxon de véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "horn.png",
		}
	},

	["fruity_passion"] = {
		label = "Passion fruitée",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fruity_passion.png",
		}
	},

	["raw_bluefish"] = {
		label = "Poisson bleu cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["bourbon"] = {
		label = "Bourbon",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "bourbon.png",
		}
	},

	["coke_small_brick"] = {
		label = "Paquet de coke",
		weight = 250,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "usb_device.png",
		}
	},

	["meth"] = {
		label = "meth",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "meth.png",
		}
	},

	["visa"] = {
		label = "Visa Card",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "visacard.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "printerdocument.png",
		}
	},

	["raw_deer_meat"] = {
		label = "Cerf cru",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["tomato"] = {
		label = "Tomate",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomato.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_baggy.png",
		}
	},

	["racetablet"] = {
		label = "Race tablet",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tablet.png",
		}
	},

	["suspension1"] = {
		label = "Suspension abaissée",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension1.png",
		}
	},

	["firstaid"] = {
		label = "Kit de premiers secours",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "firstaid.png",
		}
	},

	["armor"] = {
		label = "Gilet par balle",
		weight = 5000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "armor.png",
		}
	},

	["mastercard"] = {
		label = "Master Card",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mastercard.png",
		}
	},

	["bs_patty_raw"] = {
		label = "Steak haché cru",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_patty_raw.png",
		}
	},

	["car_armor"] = {
		label = "Blindage véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "armour.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "twerks_candy.png",
		}
	},

	["oxy"] = {
		label = "Prescription d'Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "oxy.png",
		}
	},

	["whiskey_bourbon"] = {
		label = "Whiskey au Bourbon",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whiskey_bourbon.png",
		}
	},

	["driver_license_car"] = {
		label = "Permis de conduire voiture",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "driver_license.png",
		}
	},

	["weath"] = {
		label = "Blé",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weath.png",
		}
	},

	["cleaningkit"] = {
		label = "Kit de nettoyage",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cleaningkit.png",
		}
	},

	["crack_baggy"] = {
		label = "Sac de Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "crack_baggy.png",
		}
	},

	["raw_coyote_meat"] = {
		label = "Coyote cru",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["lockpick"] = {
		label = "Lockpick",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lockpick.png",
		}
	},

	["binoculars"] = {
		label = "Jumelles",
		weight = 600,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "binoculars.png",
		}
	},

	["carbonated_water"] = {
		label = "Bouteille d'eau gazeuse",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "carbonated_water.png",
		}
	},

	["security_card_02"] = {
		label = "Carte de sécurité B",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "security_card_02.png",
		}
	},

	["ice_cube"] = {
		label = "Glaçons",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ice_cube.png",
		}
	},

	["bs_patty"] = {
		label = "Steak haché",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_patty.png",
		}
	},

	["lighter"] = {
		label = "Briquet",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lighter.png",
		}
	},

	["bs_cup"] = {
		label = "Gobelet",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_cup.png",
		}
	},

	["diamond_ring"] = {
		label = "Bague en diamant",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_ring.png",
		}
	},

	["ananas_juice"] = {
		label = "Jus d'ananas",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ananas_juice.png",
		}
	},

	["cocaine_packaged"] = {
		label = "cocaine_packaged",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "cocaine_packaged.png",
		}
	},

	["galaxy_pass_vip"] = {
		label = "Galaxy Pass vip",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "lawyerpass.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "usb_device.png",
		}
	},

	["casinochips"] = {
		label = "Jetons de casino",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "casinochips.png",
		}
	},

	["whiskey_coca"] = {
		label = "Whiskey Coca",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "whiskey_coca.png",
		}
	},

	["mint"] = {
		label = "Menthe",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mint.png",
		}
	},

	["rice"] = {
		label = "Sac de riz",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rice.png",
		}
	},

	["bs_bun"] = {
		label = "Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_bun.png",
		}
	},

	["certificate"] = {
		label = "Certificat",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "certificate.png",
		}
	},

	["raspberry"] = {
		label = "Framboise",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raspberry.png",
		}
	},

	["suspension3"] = {
		label = "Suspension de course",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension3.png",
		}
	},

	["raw_hen_meat"] = {
		label = "Poulet cru",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["cooked_sea_bream"] = {
		label = "Dorade cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["toolbox"] = {
		label = "Boîte à outils",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "toolbox.png",
		}
	},

	["galaxy_pass_basique"] = {
		label = "Galaxy Pass basique",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "lawyerpass.png",
		}
	},

	["engine4"] = {
		label = "Moteur V12",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "v12engine.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "weed_seed.png",
		}
	},

	["suspension2"] = {
		label = "Suspension de rue",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension2.png",
		}
	},

	["walkstick"] = {
		label = "Bâton de marche",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "walkstick.png",
		}
	},

	["jerrycan"] = {
		label = "Jerry Can",
		weight = 15000,
		stack = false,
		close = false,
		description = "A Jerry Can made to hold gasoline.",
		client = {
			image = "jerrycan.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["noscan"] = {
		label = "Bouteille vide de NOS",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "noscan.png",
		}
	},

	["skirts"] = {
		label = "Jupes de véhicules",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "skirts.png",
		}
	},

	["egg"] = {
		label = "Oeuf",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "egg.png",
		}
	},

	["medium_trap"] = {
		label = "Piège moyen",
		weight = 150,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "medium_trap.png",
		}
	},

	["labkey"] = {
		label = "Clé",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "labkey.png",
		}
	},

	["vape"] = {
		label = "Vape",
		weight = 250,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "vape.png",
		}
	},

	["cokebaggy"] = {
		label = "Sac de Coke",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["driver_license_bike"] = {
		label = "Permis de conduire moto",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "driver_license.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pinger.png",
		}
	},

	["passion_fruit"] = {
		label = "Fruit de la passion",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "passion_fruit.png",
		}
	},

	["handcuffs"] = {
		label = "Menottes",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "handcuffs.png",
		}
	},

	["rims"] = {
		label = "Jantes personnalisées",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "rims.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 20,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_baggy.png",
		}
	},

	["potato"] = {
		label = "Patate",
		weight = 15,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "potato.png",
		}
	},

	["bs_ingredients_icecream"] = {
		label = "Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_ingredients_icecream.png",
		}
	},

	["metal"] = {
		label = "Metal",
		weight = 1,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "metal.png",
		}
	},

	["metalscrap"] = {
		label = "Ferraille",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "metalscrap.png",
		}
	},

	["bs_money-shot"] = {
		label = "Burger shot d'argent",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_money-shot.png",
		}
	},

	["spoiler"] = {
		label = "Spoiler du véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spoiler.png",
		}
	},

	["raw_eel"] = {
		label = "Anguille cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["electronickit"] = {
		label = "Kit électronique",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "electronickit.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "fitbit.png",
		}
	},

	["diamond"] = {
		label = "Diamant",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond.png",
		}
	},

	["tires"] = {
		label = "Fumés des pneus",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "tires.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "weed_seed.png",
		}
	},

	["nos"] = {
		label = "Bouteille NOS",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "nos.png",
		}
	},

	["raw_trout"] = {
		label = "Truite cru",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["vehiclekey"] = {
		label = "Vehicle key",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "vehiclekeys.png",
		}
	},

	["flush_cutter"] = {
		label = "Flush Cutter",
		weight = 50,
		stack = true,
		close = true,
		description = "Comes in handy when you want to cut zipties..",
		client = {
			image = "flush_cutter.png",
		}
	},

	["suspension4"] = {
		label = "Suspension Rallye",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension4.png",
		}
	},

	["bs_fries"] = {
		label = "Frites",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bs_fries.png",
		}
	},

	["water_bottle"] = {
		label = "Bouteille d'eau",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "water_bottle.png",
		}
	},

	["rolex"] = {
		label = "Montre en or",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rolex.png",
		}
	},

	["grapejuice"] = {
		label = "Jus de raisin",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "grapejuice.png",
		}
	},

	["peach_schnaps"] = {
		label = "Schnaps pêche",
		weight = 500,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "peach_schnaps.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "ifaks.png",
		}
	},

	["raspberry_puree"] = {
		label = "Purée de framboises",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "raspberry_puree.png",
		}
	},

	["salad_seed"] = {
		label = "Graine de salade",
		weight = 5,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "salad_seed.png",
		}
	},

	["weed"] = {
		label = "Weed",
		weight = 10,
		stack = true,
		close = true,
		description = "No have",
		client = {
			image = "weed.png",
		}
	},

	["repairkit"] = {
		label = "Kit de réparation",
		weight = 2500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "repairkit.png",
		}
	},

	["underglow_controller"] = {
		label = "Contrôleur Néon",
		weight = 0,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "underglow_controller.png",
		}
	},

	["rubber"] = {
		label = "Caoutchouc",
		weight = 100,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "rubber.png",
		}
	},

	["transmission3"] = {
		label = "Transmission 3",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission3.png",
		}
	},

	["beer"] = {
		label = "Bière",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "beer.png",
		}
	},

	["paintcan"] = {
		label = "Aérosol pour véhicule",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "spraycan.png",
		}
	},

	["drill"] = {
		label = "Perceuse",
		weight = 20000,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "drill.png",
		}
	},

	["hunting_license"] = {
		label = "Permis de chasse",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "weapon_license.png",
		}
	},

	["emptyvape"] = {
		label = "Vape vide",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "vape.png",
		}
	},

	["cooked_perch"] = {
		label = "Perche cuit",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "null.png",
		}
	},

	["internals"] = {
		label = "Cosmétique interne",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "internals.png",
		}
	},

	["mechboard"] = {
		label = "Fiche de mécanicien",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mechboard.png",
		}
	},

	["10kgoldchain"] = {
		label = "Chaîne en or 10k",
		weight = 2000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["externals"] = {
		label = "Cosmétique extérieure",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "mirror.png",
		}
	},

	["pink_phone"] = {
		label = "Pink Phone",
		weight = 10,
		stack = false,
	},

	["blue_phone"] = {
		label = "Blue Phone",
		weight = 10,
		stack = false,
	},

	["classic_phone"] = {
		label = "Classic Phone",
		weight = 10,
		stack = false,
	},

	["gold_phone"] = {
		label = "Gold Phone",
		weight = 10,
		stack = false,
	},

	["greenlight_phone"] = {
		label = "Green Light Phone",
		weight = 10,
		stack = false,
	},

	["wet_black_phone"] = {
		label = "Wet Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_blue_phone"] = {
		label = "Wet Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_classic_phone"] = {
		label = "Wet Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_gold_phone"] = {
		label = "Wet Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_greenlight_phone"] = {
		label = "Wet Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_green_phone"] = {
		label = "Wet Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_phone"] = {
		label = "Wet Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_pink_phone"] = {
		label = "Wet Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_red_phone"] = {
		label = "Wet Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_white_phone"] = {
		label = "Wet White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["phone_module"] = {
		label = "Phone Module",
		weight = 10,
		stack = true,
		close = true,
	},


	["phone_hack"] = {
		label = "Phone Hack",
		weight = 10,
		stack = true,
		close = true,
	},

	["sim_card"] = {
		label = "Carte sim",
		weight = 10,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "sim_card.png",
		}
	},

	["newoil"] = {
		label = "Car Oil",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "caroil.png",
		}
	},

	["axleparts"] = {
		label = "Axle Parts",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "axleparts.png",
		}
	},

	["engine5"] = {
		label = "Tier 5 Engine",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "engine5.png",
		}
	},

	["carbattery"] = {
		label = "Car Battery",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "carbattery.png",
		}
	},

	["sparetire"] = {
		label = "Spare Tire",
		weight = 0,
		stack = false,
		close = false,
		description = "",
		client = {
			image = "sparetire.png",
		}
	},

	["sparkplugs"] = {
		label = "Spark Plugs",
		weight = 0,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "sparkplugs.png",
		}
	},

	["suspension5"] = {
		label = "Tier 5 Suspension",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "suspension5.png",
		}
	},

	["transmission4"] = {
		label = "Tier 4 Transmission",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "transmission4.png",
		}
	},

	["gps"] = {
		label = "Carte sim",
		weight = 10,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "gps.png",
		}
	},

	["gps_detector"] = {
		label = "Carte sim",
		weight = 10,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "gps_detector.png",
		}
	},

	["tree_lumber"] = {
		label = "Lumber",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lumber.png",
		}
	},

	["player_gps"] = {
		label = "Carte sim",
		weight = 10,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "player_gps.png",
		}
	},

	["wood_plank"] = {
		label = "Wood Plank",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "woodplank.png",
		}
	},

	["vehicle_gps"] = {
		label = "Carte sim",
		weight = 10,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "vehicle_gps.png",
		}
	},

	["tree_bark"] = {
		label = "Tree Bark",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "treebark.png",
		}
	},

	["frisbee"] = {
		label = "Frisbee",
		weight = 100,
		stack = false,
		close = false,
		description = "A flying disc",
		client = {
			image = "frisbee.png",
		}
	},

	["frisbee_g"] = {
		label = "Green Frisbee",
		weight = 100,
		stack = false,
		close = false,
		description = "A flying disc",
		client = {
			image = "frisbee_g.png",
		}
	},

	["frisbee_r"] = {
		label = "Red Frisbee",
		weight = 100,
		stack = false,
		close = false,
		description = "A flying disc",
		client = {
			image = "frisbee_r.png",
		}
	},

	["frisbee_y"] = {
		label = "Yellow Frisbee",
		weight = 100,
		stack = false,
		close = false,
		description = "A flying disc",
		client = {
			image = "frisbee_y.png",
		}
	},

	["frisbee_b"] = {
		label = "Blue Frisbee",
		weight = 100,
		stack = false,
		close = false,
		description = "A flying disc",
		client = {
			image = "frisbee_b.png",
		}
	},

	["2080gpu"] = {
		label = "RTX 2080",
		weight = 0,
		stack = false,
		close = true,
		description = "WOOW!! A new look! Then This is the one.",
		client = {
			image = "2080.png",
		}
	},

	["1050gpu"] = {
		label = "gtx 1050",
		weight = 0,
		stack = false,
		close = true,
		description = "It does the job for its price.",
		client = {
			image = "1050.png",
		}
	},

	["1060gpu"] = {
		label = "gtx 1060",
		weight = 0,
		stack = false,
		close = true,
		description = "A good upgrade if you are broke.",
		client = {
			image = "1060.png",
		}
	},

	["4090gpu"] = {
		label = "RTX 4090",
		weight = 0,
		stack = false,
		close = true,
		description = "Is it just me or this looks kinda thicc?",
		client = {
			image = "4090.png",
		}
	},

	["thermalpast"] = {
		label = "Thermal past",
		weight = 0,
		stack = false,
		close = true,
		description = "A thermalpast To keep your cpu chiling.",
		client = {
			image = "thermalpast.png",
		}
	},

	["3060gpu"] = {
		label = "RTX 3060",
		weight = 0,
		stack = false,
		close = true,
		description = "IDK Man! It's so expensive.",
		client = {
			image = "3060.png",
		}
	},

	["1080gpu"] = {
		label = "gtx 1080",
		weight = 0,
		stack = false,
		close = true,
		description = "It must be good since it got 3 fans right?",
		client = {
			image = "1080.png",
		}
	},

	["shitgpu"] = {
		label = "A trash gpu",
		weight = 0,
		stack = false,
		close = true,
		description = "Just look at it, what do you expect!",
		client = {
			image = "shitgpu.png",
		}
	},

	["house_base_part"] = {
		label = "House base part",
		weight = 10,
		stack = true,
		close = true,
		description = "Used in house construction",
		client = {
			image = "concrete_block.png",
		}
	},

	["windmill_base_part"] = {
		label = "Windmill base part",
		weight = 10,
		stack = true,
		close = true,
		description = "Used in windmill construction",
		client = {
			image = "concrete_block.png",
		}
	},

	["house_wall_part"] = {
		label = "House wall part",
		weight = 10,
		stack = true,
		close = true,
		description = "Used in house construction",
		client = {
			image = "concrete_block.png",
		}
	},

	["windmill_details_part"] = {
		label = "Windmill details part",
		weight = 10,
		stack = true,
		close = true,
		description = "Used in windmill construction",
		client = {
			image = "concrete_block.png",
		}
	},

	["house_interior_part"] = {
		label = "House interior part",
		weight = 10,
		stack = true,
		close = true,
		description = "Used in house construction",
		client = {
			image = "concrete_block.png",
		}
	},

	["house_roof_part"] = {
		label = "House roof part",
		weight = 10,
		stack = true,
		close = true,
		description = "Used in house construction",
		client = {
			image = "concrete_block.png",
		}
	},

	["nerorod"] = {
		label = "Nero Rod",
		weight = 325,
		stack = true,
		close = true,
		description = "Extremely durable fishing rod.",
		client = {
			image = "nerorod.png",
		}
	},

	["redworms"] = {
		label = "Red Worms",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: RedWorms",
		client = {
			image = "redworms.png",
		}
	},

	["minnow"] = {
		label = "Minnow",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Minnow",
		client = {
			image = "minnow.png",
		}
	},

	["turtle"] = {
		label = "Turtle",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Turtle",
		client = {
			image = "turtle.png",
		}
	},

	["kingbraid"] = {
		label = "KingBraid Line",
		weight = 10,
		stack = true,
		close = true,
		description = "The kings braid for catching the most powerful fish in the sea!",
		client = {
			image = "kingbraid.png",
		}
	},

	["fish-finder"] = {
		label = "Fish Finder",
		weight = 500,
		stack = true,
		close = true,
		description = "A Fish finder for locating fish in bodies of water",
		client = {
			image = "fish-finder.png",
		}
	},

	["no6"] = {
		label = "#6/0 Fish Hook",
		weight = 10,
		stack = true,
		close = true,
		description = "A deep sea fishing hook.",
		client = {
			image = "no6.png",
		}
	},

	["no10"] = {
		label = "#10/0 Fish Hook",
		weight = 10,
		stack = true,
		close = true,
		description = "A professional grade fishing hook!",
		client = {
			image = "no10.png",
		}
	},

	["fishrusreel"] = {
		label = "Fish R Us Reel",
		weight = 500,
		stack = true,
		close = true,
		description = "The legendary fishing pole from 'Fish R Us' used for fishing fishes.",
		client = {
			image = "fishrusreel.png",
		}
	},

	["lightningbraid"] = {
		label = "Lightning Braid",
		weight = 10,
		stack = true,
		close = true,
		description = "The line of lightning ready to catch fish in any waters!.",
		client = {
			image = "lightningbraid.png",
		}
	},

	["noodlebraid"] = {
		label = "NoodleBraid Line",
		weight = 10,
		stack = true,
		close = true,
		description = "A professional grade fishing line.",
		client = {
			image = "noodlebraid.png",
		}
	},

	["leech"] = {
		label = "Leech",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Leech",
		client = {
			image = "leech.png",
		}
	},

	["brutasrod"] = {
		label = "Brutas Rod",
		weight = 300,
		stack = true,
		close = true,
		description = "A brute fishing pole.",
		client = {
			image = "brutasrod.png",
		}
	},

	["stripedbass"] = {
		label = "Striped Bass",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Striped Bass",
		client = {
			image = "stripedbass.png",
		}
	},

	["garfish"] = {
		label = "Garfish",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Garfish",
		client = {
			image = "garfish.png",
		}
	},

	["thunderreel"] = {
		label = "Thunder Reel",
		weight = 500,
		stack = true,
		close = true,
		description = "The thunder of reels used for fishing mega fishes.",
		client = {
			image = "thunderreel.png",
		}
	},

	["no1"] = {
		label = "#1/0 Fish Hook",
		weight = 10,
		stack = true,
		close = true,
		description = "Better off using your hands. Good luck!",
		client = {
			image = "no1.png",
		}
	},

	["tuna"] = {
		label = "Tuna",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Tuna",
		client = {
			image = "tuna.png",
		}
	},

	["crappie"] = {
		label = "Crappie",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Crappie",
		client = {
			image = "crappie.png",
		}
	},

	["mealworms"] = {
		label = "Mealworms",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Mealworms",
		client = {
			image = "mealworms.png",
		}
	},

	["haddock"] = {
		label = "Haddock",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Haddock",
		client = {
			image = "haddock.png",
		}
	},

	["mobeymono"] = {
		label = "Mobey Mono Line",
		weight = 10,
		stack = true,
		close = true,
		description = "Finally some real fishing line, time to reel em' in!",
		client = {
			image = "mobeymono.png",
		}
	},

	["salmon"] = {
		label = "Salmon",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Salmon",
		client = {
			image = "salmon.png",
		}
	},

	["waxworms"] = {
		label = "Waxworms",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Waxworms",
		client = {
			image = "waxworms.png",
		}
	},

	["whale"] = {
		label = "Whale",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Whale",
		client = {
			image = "whale.png",
		}
	},

	["no2"] = {
		label = "#2/0 Fish Hook",
		weight = 10,
		stack = true,
		close = true,
		description = "At least you can catch seaweed with this thing",
		client = {
			image = "no2.png",
		}
	},

	["bacon"] = {
		label = "Bacon",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Bacon",
		client = {
			image = "bacon.png",
		}
	},

	["trout"] = {
		label = "Trout",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Trout",
		client = {
			image = "trout.png",
		}
	},

	["nightworms"] = {
		label = "Night Worms",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: NightWorms",
		client = {
			image = "nightworms.png",
		}
	},

	["dolphin"] = {
		label = "Dolphin",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Dolphin",
		client = {
			image = "dolphin.png",
		}
	},

	["pollock"] = {
		label = "Pollock",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Pollock",
		client = {
			image = "pollock.png",
		}
	},

	["magnumxlrod"] = {
		label = "Magnum XL Rod",
		weight = 250,
		stack = true,
		close = true,
		description = "The best fishing pole on the market the 'magnum'!",
		client = {
			image = "magnumxlrod.png",
		}
	},

	["turtlemeat"] = {
		label = "Turtle Meat",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Turtle Meat",
		client = {
			image = "turtlemeat.png",
		}
	},

	["cheapmono"] = {
		label = "Cheap Mono Line",
		weight = 10,
		stack = true,
		close = true,
		description = "Mine as well use your shoe string...",
		client = {
			image = "cheapmono.png",
		}
	},

	["no3"] = {
		label = "#3/0 Fish Hook",
		weight = 10,
		stack = true,
		close = true,
		description = "Finally a real fishing hook!",
		client = {
			image = "no3.png",
		}
	},

	["elementalrod"] = {
		label = "Elemental Rod",
		weight = 350,
		stack = true,
		close = true,
		description = "A rod that can adapt to all elements.",
		client = {
			image = "elementalrod.png",
		}
	},

	["maggots"] = {
		label = "Maggots",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Maggots",
		client = {
			image = "maggots.png",
		}
	},

	["valuecastrod"] = {
		label = "Value Cast Rod",
		weight = 400,
		stack = true,
		close = true,
		description = "Dollar store fishing rod.",
		client = {
			image = "valuecastrod.png",
		}
	},

	["northernpike"] = {
		label = "Northern Pike",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Northern Pike",
		client = {
			image = "northernpike.png",
		}
	},

	["bread"] = {
		label = "Bread",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Bread",
		client = {
			image = "bread.png",
		}
	},

	["technoplankton"] = {
		label = "Technoplankton",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Technoplankton",
		client = {
			image = "technoplankton.png",
		}
	},

	["bitesizemono"] = {
		label = "Bite-size Mono Line",
		weight = 10,
		stack = true,
		close = true,
		description = "You can fit the line between your teeth!",
		client = {
			image = "bitesizedmono.png",
		}
	},

	["zeusrod"] = {
		label = "Zeus Rod",
		weight = 250,
		stack = true,
		close = true,
		description = "The Zeus of fishing poles!",
		client = {
			image = "zeusrod.png",
		}
	},

	["towhook"] = {
		label = "Tow Hook",
		weight = 10,
		stack = true,
		close = true,
		description = "You trying to catch a great white shark with that thing?!",
		client = {
			image = "towhook.png",
		}
	},

	["rockbottomreel"] = {
		label = "Rock Bottom Reel",
		weight = 500,
		stack = true,
		close = true,
		description = "Fishing for rock bottom used for fishing fishes.",
		client = {
			image = "rockbottomreel.png",
		}
	},

	["zillareel"] = {
		label = "Zilla Reel",
		weight = 500,
		stack = true,
		close = true,
		description = "The 'zilla' of all reels!",
		client = {
			image = "zillareel.png",
		}
	},

	["hugecutbait"] = {
		label = "Huge Cut Bait",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Huge Cut Bait",
		client = {
			image = "hugecutbait.png",
		}
	},

	["rainbowtrout"] = {
		label = "Rainbow Trout",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Rainbow Trout",
		client = {
			image = "rainbowtrout.png",
		}
	},

	["shark"] = {
		label = "Shark",
		weight = 10,
		stack = true,
		close = true,
		description = "Fresh Caught: Shark",
		client = {
			image = "shark.png",
		}
	},

	["crab"] = {
		label = "Crab",
		weight = 10,
		stack = true,
		close = true,
		description = "Bait: Crab",
		client = {
			image = "crab.png",
		}
	},

	["linesnifferreel"] = {
		label = "LineSniffer Reel",
		weight = 500,
		stack = true,
		close = true,
		description = "Line Sniffer Reel used for fishing fishes & sniffing lines.",
		client = {
			image = "linesnifferreel.png",
		}
	},

	["racing_gps"] = {
		label = "Tablet de pilote",
		weight = 500,
		stack = false,
		close = true,
		description = "Wroom wroom.",
		client = {
			image = "racing_gps.png",
		}
	},

	["chop_wheel"] = {
		label = "Car Wheel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A wheel from a vehicle",
		client = {
			image = "chop_wheel.png",
		}
	},

	["chop_trunk"] = {
		label = "Car Trunk",
		weight = 2000,
		stack = true,
		close = true,
		description = "A trunk from a vehicle",
		client = {
			image = "chop_trunk.png",
		}
	},

	["chop_hood"] = {
		label = "Car Hood",
		weight = 2000,
		stack = true,
		close = true,
		description = "A hood from a vehicle",
		client = {
			image = "chop_hood.png",
		}
	},

	["chop_door"] = {
		label = "Car Door",
		weight = 2000,
		stack = true,
		close = true,
		description = "A door from a vehicle",
		client = {
			image = "chop_door.png",
		}
	},

	["trackeritem"] = {
		label = "Tracker Disabler",
		weight = 2000,
		stack = true,
		close = true,
		description = "A tracking disabler",
		client = {
			image = "trackeritem.png",
		}
	},

	["accesstool"] = {
		label = "Access Tool",
		weight = 500,
		stack = false,
		close = true,
		description = "Snap into an access tool.",
		client = {
			image = "accesstool.png",
		}
	},

	["dnatestkit"] = {
		label = "DNA Field Swab Kit",
		weight = 200,
		stack = true,
		close = true,
		description = "A field DNA swab kit containing several vials and swabs",
		client = {
			image = "dnatestkit.png",
		}
	},

	["breathalyzer"] = {
		label = "Breathalyzer",
		weight = 200,
		stack = true,
		close = true,
		description = "A vintage 2000's WiWang breathalyzer engraved Property of LSPD",
		client = {
			image = "breathalyzer.png",
		}
	},

	["drugtestkit"] = {
		label = "Drug Test Kit",
		weight = 200,
		stack = true,
		close = true,
		description =
		"A multipanel field test kit used to test for popular drugs in a suspects saliva, it's probably accurate.",
		client = {
			image = "drugtestkit.png",
		}
	},

	["sdcard"] = {
		label = "SD Card",
		weight = 1000,
		stack = false,
		close = true,
		description = "People still use these??",
		client = {
			image = "sdcard.png",
		}
	},

	["fingerprintreader"] = {
		label = "Pro Tech XFR8001",
		weight = 200,
		stack = false,
		close = true,
		description =
		"A Pro Tech mobile fingerprint reader that looks like it's seen better days, currently stuck in french.",
		client = {
			image = "fingerprintreader.png",
		}
	},

	["gsrtestkit"] = {
		label = "GSR Field Test Kit",
		weight = 200,
		stack = true,
		close = true,
		description = "A field GSR test kit containing several test strips",
		client = {
			image = "gsrtestkit.png",
		}
	},

	["nikon"] = {
		label = "Nikoff G900",
		weight = 1000,
		stack = false,
		close = true,
		description = "Caught in 4K",
		client = {
			image = "nikon.png",
		}
	},

	["brass"] = {
		label = "Brass",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Brass",
		client = {
			image = "brass.png",
		}
	},

	["air_filter"] = {
		label = "Air Filter",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Air Filter",
		client = {
			image = "air_filter.png",
		}
	},

	["aluminium"] = {
		label = "Aluminium",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Aluminium",
		client = {
			image = "aluminium.png",
		}
	},

	["scrap_metal"] = {
		label = "Scrap Metal",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Scrap Metal",
		client = {
			image = "scrap_metal.png",
		}
	},

	["jump_starter"] = {
		label = "Jump Starter",
		weight = 1,
		stack = true,
		close = true,
		description = "Jump Starter for vehicle battery",
		client = {
			image = "jump_starter.png",
		}
	},

	["coolant"] = {
		label = "Coolant",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Coolant",
		client = {
			image = "coolant.png",
		}
	},

	["synthetic_oil"] = {
		label = "Synthetic Oil",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Synthetic Oil",
		client = {
			image = "synthetic_oil.png",
		}
	},

	["roadbarrier"] = {
		label = "Road Barrier",
		weight = 1,
		stack = true,
		close = true,
		description = "Spawn a road barrier prop",
		client = {
			image = "roadbarrier.png",
		}
	},

	["fuel_filter"] = {
		label = "Fuel Filter",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Fuel Filter",
		client = {
			image = "fuel_filter.png",
		}
	},

	["tire_repairkit"] = {
		label = "Tire Repair Kit",
		weight = 1,
		stack = true,
		close = true,
		description = "Tire Repair Kit for bursted tires",
		client = {
			image = "tire_repairkit.png",
		}
	},

	["radiator"] = {
		label = "Radiator",
		weight = 1,
		stack = true,
		close = true,
		description = "Health Part - Radiator",
		client = {
			image = "radiator.png",
		}
	},

	["patchkit"] = {
		label = "Patch Kit",
		weight = 1,
		stack = true,
		close = true,
		description = "Patch Kit for health/service parts",
		client = {
			image = "patchkit.png",
		}
	},

	["drive_belt"] = {
		label = "Drive Belt",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Drive Belt",
		client = {
			image = "drive_belt.png",
		}
	},

	["clutch"] = {
		label = "Clutch",
		weight = 1,
		stack = true,
		close = true,
		description = "Health Part - Clutch",
		client = {
			image = "clutch.png",
		}
	},

	["enginehoist"] = {
		label = "Engine Hoist",
		weight = 1,
		stack = true,
		close = true,
		description = "Spawn an engine hoist prop",
		client = {
			image = "enginehoist.png",
		}
	},

	["brakes"] = {
		label = "Brakes",
		weight = 1,
		stack = true,
		close = true,
		description = "Health Part - Brakes",
		client = {
			image = "brakes.png",
		}
	},

	["acid"] = {
		label = "Synthetic Acid",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Synthetic Acid",
		client = {
			image = "acid.png",
		}
	},

	["electric_scrap"] = {
		label = "Electric Scrap",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Electric Scrap",
		client = {
			image = "electric_scrap.png",
		}
	},

	["part_trunk"] = {
		label = "Trunk Part",
		weight = 1,
		stack = true,
		close = true,
		description = "Body Part - Trunk",
		client = {
			image = "part_trunk.png",
		}
	},

	["toolstrolley"] = {
		label = "Tools Trolley",
		weight = 1,
		stack = true,
		close = true,
		description = "Spawn a tools trolley prop",
		client = {
			image = "toolstrolley.png",
		}
	},

	["flywheel"] = {
		label = "Flywheel",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Flywheel",
		client = {
			image = "flywheel.png",
		}
	},

	["repairkit_adv"] = {
		label = "Repair Kit Advanced",
		weight = 1,
		stack = true,
		close = true,
		description = "Repair Kit Advanced",
		client = {
			image = "repairkit_adv.png",
		}
	},

	["part_door"] = {
		label = "Door Part",
		weight = 1,
		stack = true,
		close = true,
		description = "Body Part - Door",
		client = {
			image = "part_door.png",
		}
	},

	["part_hood"] = {
		label = "Hood Part",
		weight = 1,
		stack = true,
		close = true,
		description = "Body Part - Hood",
		client = {
			image = "part_hood.png",
		}
	},

	["roadcone"] = {
		label = "RoadCone",
		weight = 1,
		stack = true,
		close = true,
		description = "Spawn a road cone prop",
		client = {
			image = "roadcone.png",
		}
	},

	["carbon_fiber"] = {
		label = "Carbon Fiber",
		weight = 1,
		stack = true,
		close = true,
		description = "Material - Carbon Fiber",
		client = {
			image = "carbon_fiber.png",
		}
	},

	["transmission_fluid"] = {
		label = "Transmission Fluid",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Transmission Fluid",
		client = {
			image = "transmission_fluid.png",
		}
	},

	["part_window"] = {
		label = "Window Part",
		weight = 1,
		stack = true,
		close = true,
		description = "Body Part - Window",
		client = {
			image = "part_window.png",
		}
	},

	["consign"] = {
		label = "Consign",
		weight = 1,
		stack = true,
		close = true,
		description = "Spawn a consign prop",
		client = {
			image = "consign.png",
		}
	},

	["oil_filter"] = {
		label = "Oil + Filter",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Oil + Filter",
		client = {
			image = "oil_filter.png",
		}
	},

	["carjack"] = {
		label = "Car Jack",
		weight = 1,
		stack = true,
		close = true,
		description = "Car Jack",
		client = {
			image = "carjack.png",
		}
	},

	["part_wheel"] = {
		label = "Wheel Part",
		weight = 1,
		stack = true,
		close = true,
		description = "Body Part - Wheel",
		client = {
			image = "part_wheel.png",
		}
	},

	["drive_shaft"] = {
		label = "Drive Shaft",
		weight = 1,
		stack = true,
		close = true,
		description = "Health Part - Drive Shaft",
		client = {
			image = "drive_shaft.png",
		}
	},

	["brake_fluid"] = {
		label = "Brake Fluid",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Brake Fluid",
		client = {
			image = "brake_fluid.png",
		}
	},

	["alternator"] = {
		label = "Alternator",
		weight = 1,
		stack = true,
		close = true,
		description = "Health Part - Alternator",
		client = {
			image = "alternator.png",
		}
	},

	["fuel_pump"] = {
		label = "Fuel Pump",
		weight = 1,
		stack = true,
		close = true,
		description = "Health Part - Fuel Pump",
		client = {
			image = "fuel_pump.png",
		}
	},

	["spark_plugs"] = {
		label = "Spark Plugs",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Spark Plugs",
		client = {
			image = "spark_plugs.png",
		}
	},

	["fuel_can"] = {
		label = "Fuel Can",
		weight = 1,
		stack = true,
		close = true,
		description = "Fuel Can with fuel",
		client = {
			image = "fuel_can.png",
		}
	},

	["steering_fluid"] = {
		label = "Power Steering Fluid",
		weight = 1,
		stack = true,
		close = true,
		description = "Service Part - Power Steering Fluid",
		client = {
			image = "steering_fluid.png",
		}
	},
}
