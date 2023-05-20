local custom_banner = {
    "",
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

require('dashboard').setup {
    theme = 'doom',
    shortcut_type = 'number',
    config = {
        header = custom_banner,
        center = {
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Find File                 ',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = 'lua print(2)'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Integrated Explorer',
                desc_hl = 'String',
                key = 'e',
                keymap = 'SPC e',
                key_hl = 'Number',
                action = 'lua print(3)'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Integrated Terminal',
                desc_hl = 'String',
                key = 't',
                keymap = 'SPC t',
                key_hl = 'Number',
                action = 'lua print(4)'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Create New File',
                desc_hl = 'String',
                key = 'n',
                keymap = 'SPC n',
                key_hl = 'Number',
                action = 'lua print(5)'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Show Keymaps',
                desc_hl = 'String',
                key = 'k',
                keymap = 'SPC',
                key_hl = 'Number',
                action = 'lua print(6)'
            },
            {
                icon = '󰚰  ',
                icon_hl = 'Title',
                desc = 'Check Additions Update',
                desc_hl = 'String',
                key = 'u',
                keymap = 'SPC u',
                key_hl = 'Number',
                action = 'lua print(7)'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Return To Homepage',
                desc_hl = 'String',
                key = 'h',
                keymap = 'SPC h',
                key_hl = 'Number',
                action = 'lua print(8)'
            },
            {
                icon = '󰅚  ',
                icon_hl = 'Title',
                desc = 'Quit sIDE',
                desc_hl = 'String',
                key = 'q',
                keymap = 'SPC q',
                key_hl = 'Number',
                action = 'lua print(9)'
            }
        },
        footer = {
            "",
            "  sIDE Alpha-B1K635. Created by ExhYZ/Ethonwork"
        }  --your footer
    }
}
