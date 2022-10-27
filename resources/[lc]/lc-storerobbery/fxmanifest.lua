fx_version 'cerulean'
game 'gta5'

description 'QB-StoreRobbery'
version '1.0.0'

ui_page 'html/index.html'

shared_scripts {
    'config.lua',
    '@lc-core/shared/locale.lua',
    'locales/en.lua', -- Change to the language you want
}
client_script 'client/main.lua'
server_script 'server/main.lua'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/reset.css'
}

lua54 'yes'