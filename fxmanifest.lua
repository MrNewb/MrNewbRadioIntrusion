fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'MrNewbRadioIntrusion'
author 'MrNewb'
description 'Crack an encrypted radio channel with a device, a minigame and a dispatch risk'
version '1.1.2'

shared_scripts {
    '@ox_lib/init.lua',
    '@Newb_Bridge/import.lua',
    'resource/open/shared/config.lua',
    'resource/modules/core/shared/locale.lua',
}

client_scripts {
    'resource/modules/radio/client/minigame.lua',
    'resource/modules/radio/client/radio.lua',
}

server_scripts {
    'resource/modules/radio/server/radio.lua',
}

files {
    'locales/*.json',
}

dependencies {
    '/server:6116',
    '/onesync',
    'ox_lib',
    'Newb_Bridge',
}

escrow_ignore {
    '**/*',
}
