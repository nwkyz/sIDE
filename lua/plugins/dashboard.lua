local custom_banner = {
    "",
    "",
    "",
    "",
"            ⢠⣤⣤⣤⣤⣤⣤⣤⣤⣤⡄⠀⣤⣤⣤⣤⣤⣤⣤⣀⡀⠀⠀⠀⢠⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤         ",
"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠿⠿⣿⣿⣿⠿⠿⠿⠇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⢸⣿⣿⡿⠿⠿⠿⠿⠿⠿⠿   2K306",
"⠀⢀⣠⣤⣤⣤⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠹⣿⣿⣧⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀         ",
"⣰⣿⣿⡿⠟⠛⠿⣿⣿⣿⡄⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀         ",
"⣿⣿⣿⣀⣀⠀⠀⠈⠉⠉⠁⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀         ",
"⠘⢿⣿⣿⣿⣿⣿⣿⣶⣦⡀⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⢸⣿⣿⡏⠉⠉⠉⠉⠉⠉⠀         ",
"⠀⠀⠈⠉⠉⠙⠛⠻⣿⣿⣧⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⢀⣿⣿⣿⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀         ",
"⣿⣿⣿⣄⣀⣀⣀⣠⣿⣿⡟⠀⢠⣤⣤⣤⣿⣿⣿⣤⣤⣤⡄⠀⣿⣿⣿⣤⣤⣤⣴⣿⣿⣿⠇⠀⢸⣿⣿⣧⣤⣤⣤⣤⣤⣤⣤         ",
"⠈⠻⢿⣿⣿⣿⣿⣿⡿⠟⠁⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿         ",
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
                action = ':Telescope find_files'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Integrated Explorer',
                desc_hl = 'String',
                key = 'e',
                keymap = 'SPC e',
                key_hl = 'Number',
                action = ':NvimTreeToggle'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Integrated Terminal',
                desc_hl = 'String',
                key = 't',
                keymap = 'SPC t',
                key_hl = 'Number',
                action = ':call TerminalToggle()'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Create New Buffer',
                desc_hl = 'String',
                key = 'n',
                keymap = 'SPC n',
                key_hl = 'Number',
                action = ':enew'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Show Keymaps',
                desc_hl = 'String',
                key = 'k',
                keymap = 'SPC',
                key_hl = 'Number',
                action = 'lua print("Hit Spacebar/G/W to show keymaps with the key")'
            },
            {
                icon = '󰚰  ',
                icon_hl = 'Title',
                desc = 'Check Additions Update',
                desc_hl = 'String',
                key = 'u',
                keymap = 'SPC u',
                key_hl = 'Number',
                action = ':PackerSync'
            },
            {
                icon = '  ',
                icon_hl = 'Title',
                desc = 'Return To Homepage',
                desc_hl = 'String',
                key = 'h',
                keymap = 'SPC h',
                key_hl = 'Number',
                action = ':Dashboard'
            },
            {
                icon = '󰅚  ',
                icon_hl = 'Title',
                desc = 'Quit sIDE',
                desc_hl = 'String',
                key = 'q',
                keymap = 'SPC q',
                key_hl = 'Number',
                action = ':q'
            }
        },
        footer = {
            "",
            "  The project is currently in alpha stage, by ExhYZ@Ethonwork"
        }  --your footer
    }
}
