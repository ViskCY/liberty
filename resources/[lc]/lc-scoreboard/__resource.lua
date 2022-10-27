resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
    'cl_scoreboard.lua',
    'warmenu.lua',
}


server_script {
    'sv_scoreboard.lua',
    '@oxmysql/lib/MySQL.lua'
   }

lua54 'yes'
escrow_ignore {
   'html/*',
   'config.lua'	 
}
