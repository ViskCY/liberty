fx_version 'cerulean'
game 'gta5'

description 'QB-NewsJob'
version '1.0.1'

shared_scripts {
    'config.lua',
    '@lc-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
}

client_scripts {
    'client/main.lua',
    'client/camera.lua',
}

server_script 'server/main.lua'

lua54 'yes'