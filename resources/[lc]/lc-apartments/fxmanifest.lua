fx_version 'cerulean'
game 'gta5'

description 'lc-Apartments'
version '2.1.0'

shared_scripts {
    'config.lua',
    '@lc-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

client_scripts {
    'client/main.lua',
    'client/gui.lua',
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
}

dependencies {
    'lc-core',
    'lc-interior',
    'lc-clothing',
    'lc-weathersync'
}

lua54 'yes'