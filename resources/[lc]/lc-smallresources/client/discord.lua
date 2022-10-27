-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686

local QBCore = exports['lc-core']:GetCoreObject()

CreateThread(function()
    while true do
        -- This is the Application ID (Replace this with you own)
        SetDiscordAppId(1020009495746838558)

        -- Here you will have to put the image name for the "large" icon.
        SetDiscordRichPresenceAsset('lc-white')

        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('')

        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('')

        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('Mängijaid: '..result..'/48')
        end)

        -- (26-02-2021) New Native:

        --[[
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and
            last is the url (this has to start with "fivem://connect/" or "https://")
        ]]--
        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/S4XWg2UXS8")

        -- It updates every minute just in case.
        Wait(60000)
    end
end)
