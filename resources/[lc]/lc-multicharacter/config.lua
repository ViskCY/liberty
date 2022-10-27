Config = {}
Config.StartingApartment = true -- Enable/disable starting apartments (make sure to set default spawn coords)
Config.Interior = vector3(-814.89, 181.95, 76.85) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(-1035.71, -2731.87, 12.86) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-216.46, -1038.94, 30.14, 69.9) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(688.17, 586.24, 139.32, 194.81) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(681.38, 564.23, 131.02, 339.67) -- Camera coordinates for character preview screen

Config.DefaultNumberOfCharacters = 1 -- min = 1 | max = 3
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:cc4c59fb05fe8016389fec7824191902d883f409", numberOfChars = 3 },
    { license = "license:e1ab5996f36d372f5e8d7bb5f9d9210f806b2b10", numberOfChars = 3 },
    { license = "license:4088aa152956b4d24bf4dfb192b660ed326579f5", numberOfChars = 2 },
}

Config.PedCords = {
    [1] = vector4(680.2668, 569.5777, 130.4613, 164.8248),
    [2] = vector4(683.1518, 568.5637, 130.4613, 160.5294),
    [3] = vector4(685.9907, 567.5013, 130.4613, 162.4543),
    --[4] = vector4(-500.8, -676.01, 11.81, 162.35),
    --[5] = vector4(-498.66, -676.5, 11.81, 140.97),
}

Config.TrainCoord = {
    Heading = 268.7,
    Start = vector3(-523.14, -665.62, 9.9),
    Stop = vector3(-498.32, -665.63, 9.9),
}
