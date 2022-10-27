local Config, PlayerData = {}, {}

Config.ATMModels = {
    "prop_atm_01",
    'prop_atm_02', 
    "prop_atm_03",
    "prop_fleeca_atm"  
}

Config.OnlyNight = false
Config.NeededCops = 0
Config.RobberyTimeout = 0 -- minutes

Config.MoneyReward = math.random(500,1000)
Config.MoneyRewardMessage = 'You got $%s amount of money'
Config.ItemRewardMessage = 'You got x%s %s in your inventory'

Config.FullInventoryMessage = 'Full Inventory!'

Config.NoCopsMessage = 'No Cops!'

Config.UseLootTable = true
Config.LootTable = {
    [1] = {
        ['item'] = 'cashroll',
        ['amount'] = math.random(2, 5),
        ['chance'] = 80
    },
    [2] = {
        ['item'] = 'electronickit',
        ['amount'] = math.random(1, 1),
        ['chance'] = 10
    },
}

Config.TargetIcon2 = "fas fa-dollar-sign"
Config.TargetLabel2 = "Rob ATM"

Config.UseItems = true
Config.UseWeapons = false

Config.NeededItem = 'weapon_crowbar'
Config.NeededHoldingWeapon = 'weapon_crowbar'

Config.TaskBarSkillDifficulty = math.random(800,800)
Config.TaskBarSkillCount = math.random(8, 12)

Config.FailMessage = 'You Failed!'
Config.BusyMessage = 'Cannot perform this action at the moment!'

Config.ProgressLabel = 'Robbing ATM'
Config.ProgressDuration = math.random(10000, 15000)

Config.ProgressAnimDict = "mini@repair"
Config.ProgressAnim = "fixing_a_ped"
Config.ProgressAnimFlag = 51

Config.MaleNoHandshoes = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = true,
    [14] = true,
    [15] = true,
    [18] = true,
    [26] = true,
    [52] = true,
    [53] = true,
    [54] = true,
    [55] = true,
    [56] = true,
    [57] = true,
    [58] = true,
    [59] = true,
    [60] = true,
    [61] = true,
    [62] = true,
    [112] = true,
    [113] = true,
    [114] = true,
    [118] = true,
    [125] = true,
    [132] = true,
}

Config.FemaleNoHandshoes = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [8] = true,
    [9] = true,
    [10] = true,
    [11] = true,
    [12] = true,
    [13] = true,
    [14] = true,
    [15] = true,
    [19] = true,
    [59] = true,
    [60] = true,
    [61] = true,
    [62] = true,
    [63] = true,
    [64] = true,
    [65] = true,
    [66] = true,
    [67] = true,
    [68] = true,
    [69] = true,
    [70] = true,
    [71] = true,
    [129] = true,
    [130] = true,
    [131] = true,
    [135] = true,
    [142] = true,
    [149] = true,
    [153] = true,
    [157] = true,
    [161] = true,
    [165] = true,
}

return Config, PlayerData