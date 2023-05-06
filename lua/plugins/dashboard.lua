local custom_banner = {
    "",
    "",
    "",
    "       ▀████▀███▀▀▀██▄ ▀███▀▀▀███ ",
    "         ██   ██    ▀██▄ ██    ▀█ ",
    " ▄██▀███ ██   ██     ▀██ ██   █   ",
    " ██   ▀▀ ██   ██      ██ ██████   ",
    " ▀█████▄ ██   ██     ▄██ ██   █  ▄",
    " █▄   ██ ██   ██    ▄██▀ ██     ▄█",
    " ██████▀████▄████████▀ ▄██████████",
    "",
    "",
    "",
}

local footer = {
    "THE PROJECT ISN'T COMPLETED. THIS IS JUST A DEMO. MADE BY EXHYZ"
}

require('dashboard').setup {
    theme = 'doom',
    config = {
        header = custom_banner,
        center = {
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Find File                 ',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = 'lua print(2)'
            },
            {
                icon = '󰉋  ',
                icon_hl = 'Title',
                desc = 'Integrated Explorer',
                desc_hl = 'String',
                key = 'e',
                keymap = 'SPC e',
                key_hl = 'Number',
                action = 'lua print(3)'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Integrated Terminal',
                desc_hl = 'String',
                key = 't',
                keymap = 'SPC t',
                key_hl = 'Number',
                action = 'lua print(4)'
            }
        },
        footer = footer  --your footer
    }
}
