Config = Config or {}

Config.Cost = {
    ClothingCash = 100,
    ClothingBank = 120,
    BarberCash = 120,
    BarberBank = 120,
    SurgeonCash = 120,
    SurgeonBank = 120,
}


Config.Stores = {
    [1] =   {shopType = "clothing", coords = vector3(1693.32, 4823.48,41.06 )},
	[2] =   {shopType = "clothing", coords = vector3(-712.215881, -155.352982, 37.4151268)},
	[3] =   {shopType = "clothing", coords = vector3(-1192.94495, -772.688965, 17.3255997)},
	[4] =   {shopType = "clothing", coords = vector3( 425.236, -806.008, 28.491)},
	[5] =   {shopType = "clothing", coords = vector3(-162.658, -303.397, 38.733)},
	[6] =   {shopType = "clothing", coords = vector3(75.950, -1392.891, 28.376)},
	[7] =   {shopType = "clothing", coords = vector3(-822.194, -1074.134, 10.328)},
	[8] =   {shopType = "clothing", coords = vector3(-1450.711, -236.83, 48.809)},
	[9] =   {shopType = "clothing", coords = vector3(4.254, 6512.813, 30.877)},
	[10] =  {shopType = "clothing", coords = vector3(615.180, 2762.933, 41.088)},
	[11] =  {shopType = "clothing", coords = vector3(1196.785, 2709.558, 37.222)},
	[12] =  {shopType = "clothing", coords = vector3(-3171.453, 1043.857, 19.863)},
	[13] =  {shopType = "clothing", coords = vector3(-1100.959, 2710.211, 18.107)},
	[14] =  {shopType = "clothing", coords = vector3(-1207.65, -1456.88, 4.3784737586975)},
    [15] =  {shopType = "clothing", coords = vector3(121.76, -224.6, 53.56)},
	[16] =  {shopType = "barber",  coords = vector3(-814.3, -183.8, 36.6)},
	[17] =  {shopType = "barber",  coords = vector3(136.8, -1708.4, 28.3)},
	[18] =  {shopType = "barber",  coords = vector3(-1282.6, -1116.8, 6.0)},
	[19] =  {shopType = "barber",  coords = vector3(1931.5, 3729.7, 31.8)},
	[20] =  {shopType = "barber",  coords = vector3(1212.8, -472.9, 65.2)},
	[21] =  {shopType = "barber",  coords = vector3(-32.9, -152.3, 56.1)},
	[22] =  {shopType = "barber",  coords = vector3(-278.1, 6228.5, 30.7)}
}

Config.ClothingRooms = {
    [1] = {requiredJob = "police", coords = vector3(454.43, -988.85, 30.69), cameraLocation = vector4(454.42, -990.52, 30.69, 358.48)},
    [2] = {requiredJob = "ambulance", coords = vector3(318.15, -599.35, 43.29), cameraLocation = vector4(318.15, -599.35, 43.29, 332.09)}, -- Right double door in Hospital Map that is on QBCore GitHub
    [3] = {requiredJob = "police", coords = vector3(314.76, 671.78, 14.73), cameraLocation = vector4(317.62,  671.86,  14.73,  91.53)},
    [4] = {requiredJob = "ambulance", coords = vector3(338.70, 659.61, 14.71), cameraLocation = vector4(339.27,  661.63,  14.71,  315.5)},    
    [5] = {requiredJob = "ambulance", coords = vector3(-1098.45, 1751.71, 23.35), cameraLocation = vector4(-1097.15, 1750.19,  23.35, 38.70)},    
    [6] = {requiredJob = "police", coords = vector3(-77.59, -129.17, 5.03), cameraLocation = vector4(-80.36,  -130.76,  5.03,  300.44)},
}

Config.Outfits = {
    ["police"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 24, texture = 0},  -- Pants
                    ["arms"]        = { item = 19, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 55, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 51, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
            },
            [2] = {
                outfitLabel = "Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 24, texture = 0},  -- Pants
                    ["arms"]        = { item = 20, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 317, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 51, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = -1, texture = -1},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]         = { item = 0, texture = 0},  -- Mask
                },
            },
            [3] = {
                outfitLabel = "Trooper Tan",
                outfitData = {
                    ["pants"]       = { item = 24, texture = 0},  -- Pants
                    ["arms"]        = { item = 20, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 317, texture = 3},  -- Jacket
                    ["shoes"]       = { item = 51, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 58, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]         = { item = 0, texture = 0},  -- Mask
                },
            },
            [4] = {
                outfitLabel = "Trooper Black",
                outfitData = {
                    ["pants"]       = { item = 24, texture = 0},  -- Pants
                    ["arms"]        = { item = 20, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 58, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 0, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 317, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 51, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 58, texture = 3},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]         = { item = 0, texture = 0},  -- Mask
                },
            },
            [5] = {
                outfitLabel = "SWAT",
                outfitData = {
                    ["pants"]       = { item = 130, texture = 1},  -- Pants
                    ["arms"]        = { item = 172, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 15, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 15, texture = 2},  -- Body Vest
                    ["torso2"]      = { item = 336, texture = 3},  -- Jacket
                    ["shoes"]       = { item = 24, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 133, texture = 0},  -- Neck Accessory
                    ["hat"]         = { item = 150, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]         = { item = 52, texture = 0},  -- Mask
                },
            },
        },
        ["female"] = {
            [1] = {
                outfitLabel = "Short Sleeve",
                outfitData = {
                    ["pants"]       = { item = 133, texture = 0},  -- Pants
                    ["arms"]        = { item = 31, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 34, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 48, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 52, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
            },
            [2] = {
                outfitLabel = "Long Sleeve",
                outfitData = {
                    ["pants"]       = { item = 133, texture = 0},  -- Pants
                    ["arms"]        = { item = 31, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 34, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 327, texture = 0},  -- Jacket
                    ["shoes"]       = { item = 52, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
            },
            [3] = {
                outfitLabel = "Trooper Tan",
                outfitData = {
                    ["pants"]       = { item = 133, texture = 0},  -- Pants
                    ["arms"]        = { item = 31, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 34, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 327, texture = 3},  -- Jacket
                    ["shoes"]       = { item = 52, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
            },
            [4] = {
                outfitLabel = "Trooper Black",
                outfitData = {
                    ["pants"]       = { item = 133, texture = 0},  -- Pants
                    ["arms"]        = { item = 31, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 35, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 34, texture = 0},  -- Body Vest
                    ["torso2"]      = { item = 327, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 52, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 0, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 0, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 0, texture = 0},  -- Mask
                },
            },
            [5] = {
                outfitLabel = "Swat",
                outfitData = {
                    ["pants"]       = { item = 135, texture = 1},  -- Pants
                    ["arms"]        = { item = 213, texture = 0},  -- Arms
                    ["t-shirt"]     = { item = 0, texture = 0},  -- T Shirt
                    ["vest"]        = { item = 17, texture = 2},  -- Body Vest
                    ["torso2"]      = { item = 327, texture = 8},  -- Jacket
                    ["shoes"]       = { item = 52, texture = 0},  -- Shoes
                    ["accessory"]   = { item = 102, texture = 0},  -- Neck Accessory
                    ["bag"]         = { item = 0, texture = 0},  -- Bag
                    ["hat"]         = { item = 149, texture = 0},  -- Hat
                    ["glass"]       = { item = 0, texture = 0},  -- Glasses
                    ["mask"]        = { item = 35, texture = 0},  -- Mask
                },
            },
        }
    },
    ["ambulance"] = {
        ["male"] = {
            [1] = {
                outfitLabel = "T-Shirt",
                outfitData = {
                    ["arms"]        = { item = 85,  texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 129, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 250, texture = 0 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 58,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 127, texture = 0 },  -- Neck
                    ["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 96,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 54,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ["hat"]         = { item = 122, texture = 0 },  -- Hat
                    ["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
            },
            [2] = {
                outfitLabel = "Polo",
                outfitData = {
                    ["arms"]        = { item = 90,  texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 15,  texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 249, texture = 0 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 57,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 126, texture = 0 },  -- Neck
                    ["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 96,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 54,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ["hat"]         = { item = 122, texture = 0 },  -- Hat
                    ["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
            },
            [3] = {
                outfitLabel = "Doctor",
                outfitData = {
                    ["arms"]        = { item = 93,  texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 32,  texture = 3 },  -- T-Shirt
                    ["torso2"]      = { item = 31,  texture = 7 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 0,   texture = 0 },  -- Decals
                    ["accessory"]   = { item = 126, texture = 0 },  -- Neck
                    ["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 28,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 10,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 0,   texture = 0 },  -- Mask
                    ["hat"]         = { item = -1,  texture = 0 },  -- Hat
                    ["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
            },
        },
        ["female"] = {
            [1] = {
                outfitLabel = "T-Shirt",
                outfitData = {
                    ["arms"]        = { item = 109, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 159, texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 258, texture = 0 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 66,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 97,  texture = 0 },  -- Neck
                    ["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 99,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 55,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ["hat"]         = { item = 121, texture = 0 },  -- Hat
                    ["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
            },
            [2] = {
                outfitLabel = "Polo",
                outfitData = {
                    ["arms"]        = { item = 105, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 13,  texture = 0 },  -- T-Shirt
                    ["torso2"]      = { item = 257, texture = 0 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 65,  texture = 0 },  -- Decals
                    ["accessory"]   = { item = 96,  texture = 0 },  -- Neck
                    ["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 99,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 55,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 121, texture = 0 },  -- Mask
                    ["hat"]         = { item = 121, texture = 0 },  -- Hat
                    ["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
            },
            [3] = {
                outfitLabel = "Doctor",
                outfitData = {
                    ["arms"]        = { item = 105, texture = 0 },  -- Arms
                    ["t-shirt"]     = { item = 39,  texture = 3 },  -- T-Shirt
                    ["torso2"]      = { item = 7,   texture = 1 },  -- Jackets
                    ["vest"]        = { item = 0,   texture = 0 },  -- Vest
                    ["decals"]      = { item = 0,   texture = 0 },  -- Decals
                    ["accessory"]   = { item = 96,  texture = 0 },  -- Neck
                    ["bag"]         = { item = 0,   texture = 0 },  -- Bag
                    ["pants"]       = { item = 34,  texture = 0 },  -- Pants
                    ["shoes"]       = { item = 29,  texture = 0 },  -- Shoes
                    ["mask"]        = { item = 0,   texture = 0 },  -- Mask
                    ["hat"]         = { item = -1,  texture = 0 },  -- Hat
                    ["glass"]       = { item = 0,   texture = 0 },  -- Glasses
                    ["ear"]         = { item = 0,   texture = 0 },  -- Ear accessories
                },
            },
        },
    },
}
