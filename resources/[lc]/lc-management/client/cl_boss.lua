local QBCore = exports['lc-core']:GetCoreObject()
local PlayerJob = QBCore.Functions.GetPlayerData().job
local shownBossMenu = false
local DynamicMenuItems = {}

-- UTIL
local function CloseMenuFull()
    exports['lc-menu']:closeMenu()
    exports['lc-core']:HideText()
    shownBossMenu = false
end

local function comma_value(amount)
    local formatted = amount
    while true do
        local k
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k == 0) then
            break
        end
    end
    return formatted
end

local function AddBossMenuItem(data, id)
    local menuID = id or (#DynamicMenuItems + 1)
    DynamicMenuItems[menuID] = deepcopy(data)
    return menuID
end

exports("AddBossMenuItem", AddBossMenuItem)

local function RemoveBossMenuItem(id)
    DynamicMenuItems[id] = nil
end

exports("RemoveBossMenuItem", RemoveBossMenuItem)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        PlayerJob = QBCore.Functions.GetPlayerData().job
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerJob = QBCore.Functions.GetPlayerData().job
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

RegisterNetEvent('qb-bossmenu:client:OpenMenu', function()
    if not PlayerJob.name or not PlayerJob.isboss then return end

    local bossMenu = {
        {
            header = "Bossi Menüü - " .. string.upper(PlayerJob.label),
            icon = "fa-solid fa-circle-info",
            isMenuHeader = true,
        },
        {
            header = "Halda Töötajaid",
            txt = "Vaata Enda Töötajate Listi",
            icon = "fa-solid fa-list",
            params = {
                event = "qb-bossmenu:client:employeelist",
            }
        },
        {
            header = "Palka Töötajaid",
            txt = "Palka Lähedal Olevaid Tsiviile",
            icon = "fa-solid fa-hand-holding",
            params = {
                event = "qb-bossmenu:client:HireMenu",
            }
        },
        {
            header = "Direktori Kapp",
            txt = "Ava Kapp",
            icon = "fa-solid fa-box-open",
            params = {
                event = "qb-bossmenu:client:Stash",
            }
        },
        {
            header = "Riided",
            txt = "Vaata Salvestatuid Riideid",
            icon = "fa-solid fa-shirt",
            params = {
                event = "qb-bossmenu:client:Wardrobe",
            }
        },
        {
            header = "Halda Firma Raha",
            txt = "Vaata Enda Firma Raha",
            icon = "fa-solid fa-sack-dollar",
            params = {
                event = "qb-bossmenu:client:SocietyMenu",
            }
        },
    }

    for _, v in pairs(DynamicMenuItems) do
        bossMenu[#bossMenu + 1] = v
    end

    bossMenu[#bossMenu + 1] = {
        header = "Välju",
        icon = "fa-solid fa-angle-left",
        params = {
            event = "qb-menu:closeMenu",
        }
    }

    exports['lc-menu']:openMenu(bossMenu)
end)

RegisterNetEvent('qb-bossmenu:client:employeelist', function()
    local EmployeesMenu = {
        {
            header = "Halda Töötajaid - " .. string.upper(PlayerJob.label),
            isMenuHeader = true,
            icon = "fa-solid fa-circle-info",
        },
    }
    QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetEmployees', function(cb)
        for _, v in pairs(cb) do
            EmployeesMenu[#EmployeesMenu + 1] = {
                header = v.name,
                txt = v.grade.name,
                icon = "fa-solid fa-circle-user",
                params = {
                    event = "qb-bossmenu:client:ManageEmployee",
                    args = {
                        player = v,
                        work = PlayerJob
                    }
                }
            }
        end
        EmployeesMenu[#EmployeesMenu + 1] = {
            header = "Tagasi",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-bossmenu:client:OpenMenu",
            }
        }
        exports['lc-menu']:openMenu(EmployeesMenu)
    end, PlayerJob.name)
end)

RegisterNetEvent('qb-bossmenu:client:ManageEmployee', function(data)
    local EmployeeMenu = {
        {
            header = "Halda " .. data.player.name .. " - " .. string.upper(PlayerJob.label),
            isMenuHeader = true,
            icon = "fa-solid fa-circle-info"
        },
    }
    for k, v in pairs(QBCore.Shared.Jobs[data.work.name].grades) do
        EmployeeMenu[#EmployeeMenu + 1] = {
            header = v.name,
            txt = "Auaste: " .. k,
            params = {
                isServer = true,
                event = "qb-bossmenu:server:GradeUpdate",
                icon = "fa-solid fa-file-pen",
                args = {
                    cid = data.player.empSource,
                    grade = tonumber(k),
                    gradename = v.name
                }
            }
        }
    end
    EmployeeMenu[#EmployeeMenu + 1] = {
        header = "Vallanda Töötaja",
        icon = "fa-solid fa-user-large-slash",
        params = {
            isServer = true,
            event = "qb-bossmenu:server:FireEmployee",
            args = data.player.empSource
        }
    }
    EmployeeMenu[#EmployeeMenu + 1] = {
        header = "Tagasi",
        icon = "fa-solid fa-angle-left",
        params = {
            event = "qb-bossmenu:client:OpenMenu",
        }
    }
    exports['lc-menu']:openMenu(EmployeeMenu)
end)

RegisterNetEvent('qb-bossmenu:client:Stash', function()
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "boss_" .. PlayerJob.name, {
        maxweight = 4000000,
        slots = 25,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "boss_" .. PlayerJob.name)
end)

RegisterNetEvent('qb-bossmenu:client:Wardrobe', function()
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end)

RegisterNetEvent('qb-bossmenu:client:HireMenu', function()
    local HireMenu = {
        {
            header = "Palka Töötajaid - " .. string.upper(PlayerJob.label),
            isMenuHeader = true,
            icon = "fa-solid fa-circle-info",
        },
    }
    QBCore.Functions.TriggerCallback('qb-bossmenu:getplayers', function(players)
        for _, v in pairs(players) do
            if v and v ~= PlayerId() then
                HireMenu[#HireMenu + 1] = {
                    header = v.name,
                    txt = "Tsiviili ID: " .. v.citizenid .. " - ID: " .. v.sourceplayer,
                    icon = "fa-solid fa-user-check",
                    params = {
                        isServer = true,
                        event = "qb-bossmenu:server:HireEmployee",
                        args = v.sourceplayer
                    }
                }
            end
        end
        HireMenu[#HireMenu + 1] = {
            header = "Tagasi",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-bossmenu:client:OpenMenu",
            }
        }
        exports['lc-menu']:openMenu(HireMenu)
    end)
end)

RegisterNetEvent('qb-bossmenu:client:SocietyMenu', function()
    QBCore.Functions.TriggerCallback('qb-bossmenu:server:GetAccount', function(cb)
        local SocietyMenu = {
            {
                header = "Summa: $" .. comma_value(cb) .. " - " .. string.upper(PlayerJob.label),
                isMenuHeader = true,
                icon = "fa-solid fa-circle-info",
            },
            {
                header = "Pane Raha",
                icon = "fa-solid fa-money-bill-transfer",
                txt = "Pane Firma Arvele Raha",
                params = {
                    event = "qb-bossmenu:client:SocetyDeposit",
                    args = comma_value(cb)
                }
            },
            {
                header = "Võta Raha",
                icon = "fa-solid fa-money-bill-transfer",
                txt = "Võta Firma Arvelt Raha",
                params = {
                    event = "qb-bossmenu:client:SocetyWithDraw",
                    args = comma_value(cb)
                }
            },
            {
                header = "Tagasi",
                icon = "fa-solid fa-angle-left",
                params = {
                    event = "qb-bossmenu:client:OpenMenu",
                }
            },
        }
        exports['lc-menu']:openMenu(SocietyMenu)
    end, PlayerJob.name)
end)

RegisterNetEvent('qb-bossmenu:client:SocetyDeposit', function(money)
    local deposit = exports['lc-input']:ShowInput({
        header = "Pane Firmale Raha <br> Saadaval Olev Summa: $" .. money,
        submitText = "Kinnita",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if deposit then
        if not deposit.amount then return end
        TriggerServerEvent("qb-bossmenu:server:depositMoney", tonumber(deposit.amount))
    end
end)

RegisterNetEvent('qb-bossmenu:client:SocetyWithDraw', function(money)
    local withdraw = exports['lc-input']:ShowInput({
        header = "Võta Firmalt Raha  <br> Saadaval Olev Summa: $" .. money,
        submitText = "Kinnita",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Amount'
            }
        }
    })
    if withdraw then
        if not withdraw.amount then return end
        TriggerServerEvent("qb-bossmenu:server:withdrawMoney", tonumber(withdraw.amount))
    end
end)

-- MAIN THREAD
CreateThread(function()
    if Config.UseTarget then
        for job, zones in pairs(Config.BossMenuZones) do
            for index, data in ipairs(zones) do
                exports['lc-target']:AddBoxZone(job.."-BossMenu-"..index, data.coords, data.length, data.width, {
                    name = job.."-BossMenu-"..index,
                    heading = data.heading,
                    -- debugPoly = true,
                    minZ = data.minZ,
                    maxZ = data.maxZ,
                }, {
                    options = {
                        {
                            type = "client",
                            event = "qb-bossmenu:client:OpenMenu",
                            icon = "fas fa-sign-in-alt",
                            label = "Bossi Menüü",
                            canInteract = function() return job == PlayerJob.name and PlayerJob.isboss end,
                        },
                    },
                    distance = 2.5
                })
            end
        end
    else
        while true do
            local wait = 2500
            local pos = GetEntityCoords(PlayerPedId())
            local inRangeBoss = false
            local nearBossmenu = false
            if PlayerJob then
                wait = 0
                for k, menus in pairs(Config.BossMenus) do
                    for _, coords in ipairs(menus) do
                        if k == PlayerJob.name and PlayerJob.isboss then
                            if #(pos - coords) < 5.0 then
                                inRangeBoss = true
                                if #(pos - coords) <= 1.5 then
                                    nearBossmenu = true
                                    if not shownBossMenu then
                                        exports['lc-core']:DrawText('[E] Open Job Management', 'left')
                                        shownBossMenu = true
                                    end
                                    if IsControlJustReleased(0, 38) then
                                        exports['lc-core']:HideText()
                                        TriggerEvent("qb-bossmenu:client:OpenMenu")
                                    end
                                end

                                if not nearBossmenu and shownBossMenu then
                                    CloseMenuFull()
                                    shownBossMenu = false
                                end
                            end
                        end
                    end
                end
                if not inRangeBoss then
                    Wait(1500)
                    if shownBossMenu then
                        CloseMenuFull()
                        shownBossMenu = false
                    end
                end
            end
            Wait(wait)
        end
    end
end)

-- local models = {
--     'prop_mointor_01a',
-- }

-- exports['lc-target']:AddTargetModel(models, { -- This defines the models, can be a string or a table
--     options = { -- This is your options table, in this table all the options will be specified for the target to accept
--         { -- This is the first table with options, you can make as many options inside the options table as you want
--         debug = true,
--         type = "client",
--         event = "qb-bossmenu:client:OpenMenu",
--         icon = "fas fa-sign-in-alt",
--         label = "Boss Menu",
--         --canInteract = function() return job == PlayerJob.name and PlayerJob.isboss end,
--         },
--     },
--   distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
-- })

-- exports['lc-target']:AddBoxZone("bosslaf", vector3(-806.49, 166.68, 76.53), 1.5, 1.6, { -- The name has to be unique, the coords a vector3 as shown, the 1.5 is the length of the boxzone and the 1.6 is the width of the boxzone, the length and width have to be float values
--   name = "bosslaf", -- This is the name of the zone recognized by PolyZone, this has to be unique so it doesn't mess up with other zones
--   heading = 200.0, -- The heading of the boxzone, this has to be a float value
--   debugPoly = true, -- This is for enabling/disabling the drawing of the box, it accepts only a boolean value (true or false), when true it will draw the polyzone in green
--   minZ = 70.0, -- This is the bottom of the boxzone, this can be different from the Z value in the coords, this has to be a float value
--   maxZ = 80.0, -- This is the top of the boxzone, this can be different from the Z value in the coords, this has to be a float value
-- }, {
--   options = { -- This is your options table, in this table all the options will be specified for the target to accept
--     { -- This is the first table with options, you can make as many options inside the options table as you want
--       event = "qb-gangmenu:client:OpenMenu", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
--       icon = 'fas fa-sign-in-alt', -- This is the icon that will display next to this trigger option
--       label = 'Boss Menu', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
--       canInteract = function() return gang == PlayerGang.lafieta and PlayerGang.isboss end,
--       --gang = 'lafieta', -- This is the gang, this option won't show up if the player doesn't have this gang, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
--     }
--   },
--   distance = 1.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
-- })