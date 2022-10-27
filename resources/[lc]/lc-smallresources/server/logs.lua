local QBCore = exports['lc-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/1032642272724004885/VwHr_ZZUNB1fDt-owQ0tzqyoeJcP3O0LHJ2cCVtUJs3QrOyIa92PUxO82FNXLVVjVXYJ',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1032640845633048656/oM9qmGuY_3rr5c3UkoX7jZpUJims6ia42MqTeN-RlVloR3i9TZs0XiWam1BRRyX7qSIA',
    ['playermoney'] = 'https://discord.com/api/webhooks/1032640561242443837/f8WKbT8yqwflcnm5Ls_zla2kDvQbMEsdkPvKesUAFJC4btkZkuWpRLkq0uRBHwU7S6V4',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1032641400904359986/ERrBnPLj7m1fLCOfeRyJ_5TbkrB2PKggnnUkqaEh4XU7d0PPdTcfqsCjYgNNMe_kkQH2',
    ['robbing'] = 'https://discord.com/api/webhooks/1032641061283168277/hR-2LLAZ4fRE3VnCqH_JL1DI-8_hO95ThieDno5FPqeJJVKn5fwAjuQ8ezCxWIt67ebz',
    ['cuffing'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['drop'] = 'https://discord.com/api/webhooks/1032640653236121611/KFU7hk6elpFMsi_fOzDdgX40KaOcCmsEnR8KMaqLsiQ8UVWcxw964rKIf9sl2offS16-',
    ['trunk'] = 'https://discord.com/api/webhooks/1032640653236121611/KFU7hk6elpFMsi_fOzDdgX40KaOcCmsEnR8KMaqLsiQ8UVWcxw964rKIf9sl2offS16-',
    ['stash'] = 'https://discord.com/api/webhooks/1032640653236121611/KFU7hk6elpFMsi_fOzDdgX40KaOcCmsEnR8KMaqLsiQ8UVWcxw964rKIf9sl2offS16-',
    ['glovebox'] = 'https://discord.com/api/webhooks/1032641400904359986/ERrBnPLj7m1fLCOfeRyJ_5TbkrB2PKggnnUkqaEh4XU7d0PPdTcfqsCjYgNNMe_kkQH2',
    ['banking'] = 'https://discord.com/api/webhooks/1032641694170095736/r7mqK8NumyNzfTjA_4Q7wmhP-6mWHJOH0jBJuGdhwglEcb-gpsDTGgS1uWVOvdx-aXOE',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1032641602524545044/KeF2jaB93x-TJIJNYL70W4TlshM9eOkCghWQFN2VZ8Qc2xGjdGZjE_Qqg6Tmk3SusWdg',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1032641602524545044/KeF2jaB93x-TJIJNYL70W4TlshM9eOkCghWQFN2VZ8Qc2xGjdGZjE_Qqg6Tmk3SusWdg',
    ['shops'] = 'https://discord.com/api/webhooks/1032641602524545044/KeF2jaB93x-TJIJNYL70W4TlshM9eOkCghWQFN2VZ8Qc2xGjdGZjE_Qqg6Tmk3SusWdg',
    ['dealers'] = 'https://discord.com/api/webhooks/1032641602524545044/KeF2jaB93x-TJIJNYL70W4TlshM9eOkCghWQFN2VZ8Qc2xGjdGZjE_Qqg6Tmk3SusWdg',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1032641061283168277/hR-2LLAZ4fRE3VnCqH_JL1DI-8_hO95ThieDno5FPqeJJVKn5fwAjuQ8ezCxWIt67ebz',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1032641061283168277/hR-2LLAZ4fRE3VnCqH_JL1DI-8_hO95ThieDno5FPqeJJVKn5fwAjuQ8ezCxWIt67ebz',
    ['powerplants'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['death'] = 'https://discord.com/api/webhooks/1032640796362543196/Eod6IcWX8L7oU27IA1fKwJyVsQ86uHscyrpXqZcuEkPguSgVFU-lp3hapO_UPrMOlkwS',
    ['joinleave'] = 'https://discord.com/api/webhooks/1032640845633048656/oM9qmGuY_3rr5c3UkoX7jZpUJims6ia42MqTeN-RlVloR3i9TZs0XiWam1BRRyX7qSIA',
    ['ooc'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['report'] = 'https://discord.com/api/webhooks/1032641886306967583/d5UFnFR1p5bcsYtwNVyBpNfu3bqgO2jyqMs1VZW4i75E33RZZ3BczJ9IeJVLm9DcF39X',
    ['me'] = 'https://discord.com/api/webhooks/1032641886306967583/d5UFnFR1p5bcsYtwNVyBpNfu3bqgO2jyqMs1VZW4i75E33RZZ3BczJ9IeJVLm9DcF39X',
    ['pmelding'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['112'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['bans'] = 'https://discord.com/api/webhooks/1032642119858405447/0Uc0xj260r-yOaIR1x8bX9mckju4wqtJ-xWR-CJSZaBmFfaGb3v5WdLOYg3R53FE3YC_',
    ['anticheat'] = 'https://discord.com/api/webhooks/1032640928340508793/mNuLtnxvJfUi03mkfcT_u8DLzOlzvpaXTk6v7BP4dTkJFGmE1eeExXv4ecjzh825WZV4',
    ['weather'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1032641061283168277/hR-2LLAZ4fRE3VnCqH_JL1DI-8_hO95ThieDno5FPqeJJVKn5fwAjuQ8ezCxWIt67ebz',
    ['bennys'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['robbery'] = 'https://discord.com/api/webhooks/1032641061283168277/hR-2LLAZ4fRE3VnCqH_JL1DI-8_hO95ThieDno5FPqeJJVKn5fwAjuQ8ezCxWIt67ebz',
    ['casino'] = 'https://discord.com/api/webhooks/1032641314644312074/srcjAsEbgd_LpvccQjFVxWCq0XaUqHvfsM7tkKO7mg4cDi9aFVnQo2YGD6Drv867aa42',
    ['traphouse'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['911'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['palert'] = 'https://discord.com/api/webhooks/1032642351262339142/LwJ7ynx4fVckfXsuLjjS-LaKu3qZtf2jE6E2laRAYfUJm24Zt6XwYstqnKJDnQT64Kef',
    ['house'] = 'https://discord.com/api/webhooks/1032641400904359986/ERrBnPLj7m1fLCOfeRyJ_5TbkrB2PKggnnUkqaEh4XU7d0PPdTcfqsCjYgNNMe_kkQH2',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'LC LOGS',
                ['icon_url'] = '',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
