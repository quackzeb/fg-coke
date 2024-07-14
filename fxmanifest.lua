fx_version 'cerulean'
game 'gta5'

author 'evanillaa'
description 'QB-Template https://github.com/evanillaa'
version '1.0.0'

shared_script {
    'config.lua',
    '@ox_lib/init.lua'
}
server_script 'server/server.lua'
client_script 'client/client.lua'

--ui_page 'html/index.html'

--files {
--	'html/*.html',
--	'html/*.js',
--	'html/*.png',
--	'html/*.css',
--}

lua54 'yes'
