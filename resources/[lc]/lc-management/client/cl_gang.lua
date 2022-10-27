local QBCore = exports['lc-core']:GetCoreObject()
local PlayerGang = QBCore.Functions.GetPlayerData().gang
local shownGangMenu = false
local DynamicMenuItems = {}

-- UTIL
local function CloseMenuFullGang()
    exports['lc-menu']:closeMenu()
    exports['lc-core']:HideText()
    shownGangMenu = false
end

local function comma_valueGang(amount)
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

--//Events
AddEventHandler('onResourceStart', function(resource)--if you restart the resource
    if resource == GetCurrentResourceName() then
        Wait(200)
        PlayerGang = QBCore.Functions.GetPlayerData().gang
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerGang = QBCore.Functions.GetPlayerData().gang
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(InfoGang)
    PlayerGang = InfoGang
end)

RegisterNetEvent('qb-gangmenu:client:Stash', function()
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "boss_" .. PlayerGang.name, {
        maxweight = 4000000,
        slots = 100,
    })
    TriggerEvent("inventory:client:SetCurrentStash", "boss_" .. PlayerGang.name)
end)

RegisterNetEvent('qb-gangmenu:client:Warbobe', function()
    TriggerEvent('qb-clothing:client:openOutfitMenu')
end)

local function AddGangMenuItem(data, id)
    local menuID = id or (#DynamicMenuItems + 1)
    DynamicMenuItems[menuID] = deepcopy(data)
    return menuID
end

exports("AddGangMenuItem", AddGangMenuItem)

local function RemoveGangMenuItem(id)
    DynamicMenuItems[id] = nil
end

exports("RemoveGangMenuItem", RemoveGangMenuItem)

RegisterNetEvent('qb-gangmenu:client:OpenMenu', function()
    shownGangMenu = true
    local gangMenu = {
        {
            header = "Grupeeringu Haldamine  - " .. string.upper(PlayerGang.label),
            icon = "fa-solid fa-circle-info",
            isMenuHeader = true,
        },
        {
            header = "Halda Grupeeringu Liikmeid",
            icon = "fa-solid fa-list",
            txt = "Vallanda Või Palka Liikmeid",
            params = {
                event = "qb-gangmenu:client:ManageGang",
            }
        },
        {
            header = "Palka Liikmeid",
            icon = "fa-solid fa-hand-holding",
            txt = "Palka Grupeeringu Liikmeid",
            params = {
                event = "qb-gangmenu:client:HireMembers",
            }
        },
        {
            header = "Liidri Kapp",
            icon = "fa-solid fa-box-open",
            txt = "Ava Liidri Kapp",
            params = {
                event = "qb-gangmenu:client:Stash",
            }
        },
        {
            header = "Riided",
            txt = "Muuda Riideid",
            icon = "fa-solid fa-shirt",
            params = {
                event = "qb-gangmenu:client:Warbobe",
            }
        },
        {
            header = "Raha Haldamine",
            icon = "fa-solid fa-sack-dollar",
            txt = "Chekka Enda Grupeeringu Konto Summat",
            params = {
                event = "qb-gangmenu:client:SocietyMenu",
            }
        },
    }

    for _, v in pairs(DynamicMenuItems) do
        gangMenu[#gangMenu + 1] = v
    end

    gangMenu[#gangMenu + 1] = {
        header = "Välju",
        icon = "fa-solid fa-angle-left",
        params = {
            event = "qb-menu:closeMenu",
        }
    }

    exports['lc-menu']:openMenu(gangMenu)
end)

RegisterNetEvent('qb-gangmenu:client:ManageGang', function()
    local GangMembersMenu = {
        {
            header = "Halda Grupeeringu Liikmeid - " .. string.upper(PlayerGang.label),
            icon = "fa-solid fa-circle-info",
            isMenuHeader = true,
        },
    }
    QBCore.Functions.TriggerCallback('qb-gangmenu:server:GetEmployees', function(cb)
        for _, v in pairs(cb) do
            GangMembersMenu[#GangMembersMenu + 1] = {
                header = v.name,
                txt = v.grade.name,
                icon = "fa-solid fa-circle-user",
                params = {
                    event = "qb-gangmenu:lient:ManageMember",
                    args = {
                        player = v,
                        work = PlayerGang
                    }
                }
            }
        end
        GangMembersMenu[#GangMembersMenu + 1] = {
            header = "Tagasi",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-gangmenu:client:OpenMenu",
            }
        }
        exports['lc-menu']:openMenu(GangMembersMenu)
    end, PlayerGang.name)
end)

RegisterNetEvent('qb-gangmenu:lient:ManageMember', function(data)
    local MemberMenu = {
        {
            header = "Halda " .. data.player.name .. " - " .. string.upper(PlayerGang.label),
            isMenuHeader = true,
            icon = "fa-solid fa-circle-info",
        },
    }
    for k, v in pairs(QBCore.Shared.Gangs[data.work.name].grades) do
        MemberMenu[#MemberMenu + 1] = {
            header = v.name,
            txt = "Auaste: " .. k,
            params = {
                isServer = true,
                event = "qb-gangmenu:server:GradeUpdate",
                icon = "fa-solid fa-file-pen",
                args = {
                    cid = data.player.empSource,
                    grade = tonumber(k),
                    gradename = v.name
                }
            }
        }
    end
    MemberMenu[#MemberMenu + 1] = {
        header = "Vallanda",
        icon = "fa-solid fa-user-large-slash",
        params = {
            isServer = true,
            event = "qb-gangmenu:server:FireMember",
            args = data.player.empSource
        }
    }
    MemberMenu[#MemberMenu + 1] = {
        header = "Tagasi",
        icon = "fa-solid fa-angle-left",
        params = {
            event = "qb-gangmenu:client:ManageGang",
        }
    }
    exports['lc-menu']:openMenu(MemberMenu)
end)

RegisterNetEvent('qb-gangmenu:client:HireMembers', function()
    local HireMembersMenu = {
        {
            header = "Palka Grupeeringu Liikmeid - " .. string.upper(PlayerGang.label),
            isMenuHeader = true,
            icon = "fa-solid fa-circle-info",
        },
    }
    QBCore.Functions.TriggerCallback('qb-gangmenu:getplayers', function(players)
        for _, v in pairs(players) do
            if v and v ~= PlayerId() then
                HireMembersMenu[#HireMembersMenu + 1] = {
                    header = v.name,
                    txt = "Tsiviil ID: " .. v.citizenid .. " - ID: " .. v.sourceplayer,
                    icon = "fa-solid fa-user-check",
                    params = {
                        isServer = true,
                        event = "qb-gangmenu:server:HireMember",
                        args = v.sourceplayer
                    }
                }
            end
        end
        HireMembersMenu[#HireMembersMenu + 1] = {
            header = "Tagasi",
            icon = "fa-solid fa-angle-left",
            params = {
                event = "qb-gangmenu:client:OpenMenu",
            }
        }
        exports['lc-menu']:openMenu(HireMembersMenu)
    end)
end)

RegisterNetEvent('qb-gangmenu:client:SocietyMenu', function()
    QBCore.Functions.TriggerCallback('qb-gangmenu:server:GetAccount', function(cb)
        local SocietyMenu = {
            {
                header = "Summa: $" .. comma_valueGang(cb) .. " - " .. string.upper(PlayerGang.label),
                isMenuHeader = true,
                icon = "fa-solid fa-circle-info",
            },
            {
                header = "Pane Raha",
                icon = "fa-solid fa-money-bill-transfer",
                txt = "Pane Raha Grupeeringu Kontole",
                params = {
                    event = "qb-gangmenu:client:SocietyDeposit",
                    args = comma_valueGang(cb)
                }
            },
            {
                header = "Võta Raha",
                icon = "fa-solid fa-money-bill-transfer",
                txt = "Võta Raha Grupeeringu Kontost",
                params = {
                    event = "qb-gangmenu:client:SocietyWithdraw",
                    args = comma_valueGang(cb)
                }
            },
            {
                header = "Tagasi",
                icon = "fa-solid fa-angle-left",
                params = {
                    event = "qb-gangmenu:client:OpenMenu",
                }
            },
        }
        exports['lc-menu']:openMenu(SocietyMenu)
    end, PlayerGang.name)
end)

RegisterNetEvent('qb-gangmenu:client:SocietyDeposit', function(saldoattuale)
    local deposit = exports['lc-input']:ShowInput({
        header = "Pane Raha <br> Saadaval Olev Summa: $" .. saldoattuale,
        submitText = "Kinnita",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'Summa'
            }
        }
    })
    if deposit then
        if not deposit.amount then return end
        TriggerServerEvent("qb-gangmenu:server:depositMoney", tonumber(deposit.amount))
    end
end)

RegisterNetEvent('qb-gangmenu:client:SocietyWithdraw', function(saldoattuale)
    local withdraw = exports['lc-input']:ShowInput({
        header = "Võta Raha <br> Saadaval Olev Summa: $" .. saldoattuale,
        submitText = "Confirm",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$'
            }
        }
    })
    if withdraw then
        if not withdraw.amount then return end
        TriggerServerEvent("qb-gangmenu:server:withdrawMoney", tonumber(withdraw.amount))
    end
end)

-- MAIN THREAD

CreateThread(function()
    if Config.UseTarget then
        for gang, zones in pairs(Config.GangMenuZones) do
            for index, data in ipairs(zones) do
                exports['lc-target']:AddBoxZone(gang.."-GangMenu"..index, data.coords, data.length, data.width, {
                    name = gang.."-GangMenu"..index,
                    heading = data.heading,
                    -- debugPoly = true,
                    minZ = data.minZ,
                    maxZ = data.maxZ,
                }, {
                    options = {
                        {
                            type = "client",
                            event = "qb-gangmenu:client:OpenMenu",
                            icon = "fas fa-sign-in-alt",
                            label = "Grupeeringu Menüü",
                            canInteract = function() return gang == PlayerGang.name and PlayerGang.isboss end,
                        },
                    },
                    distance = 1.5
                })
            end
        end
    else
        while true do
            local wait = 2500
            local pos = GetEntityCoords(PlayerPedId())
            local inRangeGang = false
            local nearGangmenu = false
            if PlayerGang then
                wait = 0
                for k, menus in pairs(Config.GangMenus) do
                    for _, coords in ipairs(menus) do
                        if k == PlayerGang.name and PlayerGang.isboss then
                            if #(pos - coords) < 5.0 then
                                inRangeGang = true
                                if #(pos - coords) <= 1.5 then
                                    nearGangmenu = true
                                    if not shownGangMenu then
                                        exports['lc-core']:DrawText('[E] Open Gang Management', 'left')
                                    end

                                    if IsControlJustReleased(0, 38) then
                                        exports['lc-core']:HideText()
                                        TriggerEvent("qb-gangmenu:client:OpenMenu")
                                    end
                                end

                                if not nearGangmenu and shownGangMenu then
                                    CloseMenuFullGang()
                                    shownGangMenu = false
                                end
                            end
                        end
                    end
                end
                if not inRangeGang then
                    Wait(1500)
                    if shownGangMenu then
                        CloseMenuFullGang()
                        shownGangMenu = false
                    end
                end
            end
            Wait(wait)
        end
    end
end)


-- GANG Stash --

-- La Fieta
RegisterNetEvent("qb-stash:lafieta1")
AddEventHandler("qb-stash:lafieta1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "lafieta1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "lafieta1", {
        maxweight = 500000,
        slots = 15,
    })
end)

exports['lc-target']:AddBoxZone("lafkapp", vector3(-805.15, 178.22, 72.29), 1.5, 1.6, {
  name = "lafkapp",
  heading = 20.0,
  debugPoly = false,
  minZ = 70.0, 
  maxZ = 75.0, 
}, {
  options = {
    { 
      event = "qb-stash:lafieta1",
      icon = 'fas fa-sign-in-alt',
      label = 'Kapp',
      gang = 'lafieta',
    }
  },
  distance = 1.5,
})


-- O'Neal
RegisterNetEvent("qb-stash:oneal1") --narko stash
AddEventHandler("qb-stash:oneal1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "oneal1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "oneal1", {
        maxweight = 100000,
        slots = 10,
    })
end)

RegisterNetEvent("qb-stash:oneal2") --tava stash
AddEventHandler("qb-stash:oneal2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "oneal2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "oneal2", {
        maxweight = 500000,
        slots = 25,
    })
end)

exports['lc-target']:AddBoxZone("oneal1", vector3(2428.82, 4970.81, 42.35), 1.5, 1.6, { --narko stash
    name = "oneal1",
    heading = 350.0,
    debugPoly = false,
    minZ = 40.0, 
    maxZ = 43.0, 
  }, {
    options = {
      { 
        event = "qb-stash:oneal1",
        icon = 'fas fa-sign-in-alt',
        label = 'Kast',
        gang = 'oneal',
      }
    },
    distance = 1.5,
})

exports['lc-target']:AddBoxZone("oneal2", vector3(2444.45, 4966.78, 46.81), 1.5, 1.6, { --narko stash
    name = "oneal2",
    heading = 300.0,
    debugPoly = false,
    minZ = 46.0, 
    maxZ = 48.0, 
}, {
    options = {
        { 
        event = "qb-stash:oneal2",
        icon = 'fas fa-sign-in-alt',
        label = 'Kast',
        gang = 'oneal',
        }
    },
    distance = 1.5,
})

-- Varrios Los Aztecas

RegisterNetEvent("qb-stash:aztecas1") --tava stash
AddEventHandler("qb-stash:aztecas1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "aztecas1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "aztecas1", {
        maxweight = 5000000,
        slots = 25,
    })
end)

exports['lc-target']:AddBoxZone("aztecas1", vector3(-1150.91, -1513.48, 10.63), 1.1, 1.3, { -- KAPP 
    name = "aztecas1",
    heading = 10.1,
    debugPoly = false,
    minZ = 9.0, 
    maxZ = 13.0, 
}, {
    options = {
        { 
        event = "qb-stash:aztecas1",
        icon = 'fas fa-sign-in-alt',
        label = 'Seif',
        gang = 'aztecas',
        }
    },
    distance = 1.5,
})