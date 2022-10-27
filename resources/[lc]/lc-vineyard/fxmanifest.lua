fx_version 'cerulean'
game 'gta5'

description 'QB-Vineyard'
version '1.1.0'

shared_scripts {
    '@lc-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

server_script 'server.lua'
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    'client.lua'
}

dependencies {
    'lc-core',
    'PolyZone'
}

lua54 'yes'