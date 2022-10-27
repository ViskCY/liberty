Config = {}

Target = {}

Config.SmallBinProps = {
    'prop_bin_07b',
    'prop_bin_01a',
    'prop_recyclebin_03_a',
    'zprop_bin_01a_old',
    'prop_bin_07c',
    'prop_bin_04a',
    'prop_bin_09a',
    'prop_bin_03a',
    'prop_bin_02a',
    'prop_bin_12a',
    'prop_bin_05a',
    'prop_bin_07a',
}

Config.BigBinProps = {
    'prop_skip_05a',
    'prop_dumpster_3a',
    'prop_skip_08a',
    'prop_dumpster_4b',
    'prop_bin_14a',
    'prop_skip_03',
    'prop_dumpster_01a',
    'prop_dumpster_4a',
    'prop_skip_10a',
    'prop_dumpster_02b',
    'prop_bin_14b',
    'prop_skip_06a',
    'prop_dumpster_02a',
    'prop_bin_07a',
    'prop_skip_02a',
}

Config.SmallBinTimer = 5
Config.DumpsterTimer = 10

Config.MiniGame = {
    SmallBinCircles = {
        Min = 1,
        Max = 2,
    },
    SmallbinTimer = {
        Min = 9,
        Max = 10,
    },
    BigBinCircles = {
        Min = 2,
        Max = 3,
    },
    BigBinTimer = {
        Min = 10,
        Max = 15,
    }
}

Config.BinRewards = {
    [1] = {
        type = "item"
    },
    [2] = {
        type = "nothing",
    },
    [3] = {
        type = "nothing",
    }
}

Config.SmallBinRewards = {
    CashMin = 1,
    CashMax = 1,
    items = {
        {'lockpick', 1},

        {'metalscrap', math.random(1,2)},
        {'metalscrap', 1},
        {'metalscrap', 1},
        {'metalscrap', 1},
        {'metalscrap', math.random(1,2)},

        {'copper', math.random(1,2)},
        {'copper', 1},

        {'iron', 1},
        {'iron', 1},

        {'steel', 1},

        {'glass', 1},
        {'glass', 1},

        {'plastic', 1},
        {'plastic', 1},
        {'plastic', 1},
    }
}

Config.BigBinRewards = {
    CashMin = 1,
    CashMax = 1,
    items = {
        {'lockpick', 1},
        {'lockpick', 1},

        {'metalscrap', math.random(2,3)},
        {'metalscrap', 3},
        {'metalscrap', math.random(2,3)},

        {'rubber', 3},

        {'aluminum', 3},

        {'copper', math.random(2,3)},
        {'copper', 2},

        {'iron', 3},
        {'iron', 2},

        {'steel', 2},

        {'glass', 3},
        {'glass', 2},

        {'plastic', 3},
        {'plastic', 2},
    }
}



-- Target Stuff

Config.Distance = 2

-- Text

Config.Text = {
    SearchingTrash = "Otsib...",
    SearchDumpster = "Otsib...",

    --Successfully
    FoundSomething = "Sa leidsid midagi",
    FoundCash = "You Found Cash",

    -- Error
    FoundNothing = "Sa ei leidnud midagi",
    SmallTrashAlreadySearched = "Sa oled siit juba otsinud!",
    BigDumsterAlreadySerached = "Sa oled siit juba otsinud!",
}