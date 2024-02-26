return {

    -- misc
    -- 'mbbill/undotree',

    -- colourschemes
    ({
        'rose-pine/neovim',
        priority = 1000,
        lazy = false,
        name = 'rose-pine-moon',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
}
