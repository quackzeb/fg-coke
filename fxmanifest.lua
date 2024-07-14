fx_version 'cerulean'
game 'gta5'

author 'froggy'
description 'Simple Coke Script for qbcore'
version '1.0.1'

shared_script {
    'config.lua',
    '@ox_lib/init.lua'
}
server_script 'server/server.lua'
client_script 'client/client.lua'

lua54 'yes'
