QBCore = exports['lc-core']:GetCoreObject()

local PlayerTimeOut = {}

local EnableTimeout = function(time, citizenid, source)
    if PlayerTimeOut[citizenid] == nil then
        PlayerTimeOut[citizenid] = time
        TriggerClientEvent('qb-containerrobbery:client:setSync', source, time)

        while PlayerTimeOut[citizenid] > 0 and source ~= nil do
            Citizen.Wait(60000)
            PlayerTimeOut[citizenid] = PlayerTimeOut[citizenid] - 1
            TriggerClientEvent('qb-containerrobbery:client:setSync', source, time)
            if PlayerTimeOut[citizenid] == 0 then
                PlayerTimeOut[citizenid] = nil
                break
            end
        end
        PlayerTimeOut[citizenid] = nil
    end
end

RegisterServerEvent('qb-atmrobbery:server:onRobberyFinish')
AddEventHandler('qb-atmrobbery:server:onRobberyFinish', function(useLootTable, rewardAmount, rewardMessage, itemRewardMessage, lootTable, fullInventoryMessage, TimeOutTime, ForceTimeOut)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player ~= nil then
        if ForceTimeOut then
            EnableTimeout(TimeOutTime, Player.PlayerData.citizenid, src)
        else
            if useLootTable then
                local chosentable = lootTable[math.random(1, #lootTable)]
                if math.random(1, 100) < chosentable['chance'] then
                    if Player.Functions.AddItem(chosentable['item'], chosentable['amount']) then
                        TriggerEvent('qb-atmrobbery:server:logToServer', 'ATM Robbery gave this fine man x'..chosentable['amount']..' of '..chosentable['item']..'!', src)
                        TriggerClientEvent('inventory:client:itemBox', src, QBCore.Shared.Items[chosentable['item']], "add")
                        TriggerClientEvent('QBCore:Notify', src, itemRewardMessage:format(chosentable['amount'], chosentable['item']), 'success')
                    else
                        TriggerClientEvent('QBCore:Notify', src, fullInventoryMessage, 'error')
                    end
                end
            end
            TriggerEvent('qb-atmrobbery:server:logToServer', 'ATM Robbery finished with item reward, got $'..rewardAmount..'.', src)
            Player.Functions.AddMoney('cash', rewardAmount, 'ATM Robbery finished')
            TriggerClientEvent('QBCore:Notify', src, rewardMessage:format(rewardAmount), 'success')
            EnableTimeout(TimeOutTime, Player.PlayerData.citizenid, src)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-atmrobbery:server:checkCopCount', function(source, cb)
    local amount = 0
    local srcPlayer = QBCore.Functions.GetPlayer(source)
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player ~= nil then 
            if (Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty) then
                amount = amount + 1
            end
        end
    end
    cb(amount, PlayerTimeOut[srcPlayer.PlayerData.citizenid])
end)
