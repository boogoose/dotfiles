require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'rose-pine',
        -- theme = 'gruvbox-material',
        --theme = 'onedark',
        --theme = 'gruvbox_dark',
        -- theme = 'tokyonight',
        component_separators = '|',
        section_separators = '',
    },
    sections = {
        lualine_a = {
            {
                'mode',
                path = 1,
            }
        }
    }
}

