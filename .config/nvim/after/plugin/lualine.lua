require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'rose-pine',
        --theme = 'gruvbox-material',
        --theme = 'onedark',
        component_separators = '|',
        section_separators = '',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}

