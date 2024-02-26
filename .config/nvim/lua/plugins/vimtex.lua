return {

    'lervag/vimtex',

    config = function()

-- Enable filetype plugin and indent
vim.opt.filetype = "plugin"
vim.g.indent = true

-- Enable syntax
-- vim.cmd[[ syntax enable]] -- F this vimscript! & apparently syntax highlighting's enabled by default in neovim, so this would appear to be unnecessary

-- Configure viewer method
vim.g.vimtex_view_method = "zathura"

-- Configure generic viewer options
-- vim.g.vimtex_view_general_viewer = "okular"
-- vim.g.vimtex_view_general_options = "--unique file:@pdf#src:%d:%l"

-- Change compiler method (if needed)
-- vim.g.vimtex_compiler_method = "latexrun"

end

}
