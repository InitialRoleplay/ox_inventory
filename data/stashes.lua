return {
    -- LSPD Personal stash
    -- {
	-- 	target = {
	-- 		loc = vec3(-338.11, -251.18, 32.7),
	-- 		length = 6.7,
	-- 		width = 0.7,
	-- 		heading = 324.5,
	-- 		minZ = 16.0,
	-- 		maxZ = 17.0,
	-- 		label = 'Stockage personnel',
	-- 		distance = 5.0,
	-- 	},
	-- 	name = 'policelocker',
	-- 	label = 'Personal Locker',
	-- 	owner = true,
	-- 	slots = 20,
	-- 	weight = 70000,
	-- 	groups = {['police'] = 0}
	-- },

	-- Ambulance Personal stash
	{
		target = {
			loc = vec3(311.8, -590.9, 38.33),
			length = 5.0,
			width = 1.0,
			heading = 339.97,
			minZ = 36.0,
			maxZ = 40.0,
			label = 'Stockage personnel',
			distance = 5.0,
		},
		name = 'ambulancelocker',
		label = 'Personal Locker',
		owner = true,
		slots = 20,
		weight = 70000,
		groups = {['ambulance'] = 0}
	},
}