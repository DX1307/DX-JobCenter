fx_version 'cerulean'
game 'gta5'
description 'DX-JobCenter'
lua54 'yes'
client_scripts {
	"client/client.lua",
    "client/ped.lua",
    'config.lua'
}
server_scripts {
    "server/server.lua"
}
shared_scripts {'@ox_lib/init.lua'}
files {
    'img/*'
}

dependencies {
    'es_extended',
    'ox_lib',
    'qtarget'
}