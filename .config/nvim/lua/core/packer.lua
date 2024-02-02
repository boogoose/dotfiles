-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

-- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
        }
    }

-- Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')


-- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'jose-elias-alvarez/null-ls.nvim'}, -- 'required'?

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},

        -- Useful status updates for LSP
        {'j-hui/fidget.nvim'},
        }
    }

-- Debugging
    use {
        'mfussenegger/nvim-dap',
        requires = {
            -- misc
            {'rcarriga/nvim-dap-ui'},
            {'thehamsta/nvim-dap-virtual-text'},
            {'mfussenegger/nvim-dap-python'},
        }
    }

-- misc
    --use ('ja-ford/delaytrain.nvim')   -- Train yourself to stop repeating keys... gently
    --use 'nanotee/zoxide.vim'
    use ('lervag/vimtex')
    use ('lewis6991/impatient.nvim') -- Speeds up loading of Lua modules
    use ('norcalli/nvim-colorizer.lua')
    use ('goolord/alpha-nvim')
    use ('kevinhwang91/rnvimr')
    use ('ggandor/leap.nvim')
    -- NOTE: This ugly fix below (inc the deactivation of the config file at /home/user1/.config/nvim/after/plugin/indent-blankline.lua.bak) was done to prevent error messages arising from the *breaking* changes made to version 3 of indent blankline. TODO: fix the way this is done so that it ties in with the style / practive of the rest of these nvim config files
    -- 
    --use ('lukas-reineke/indent-blankline.nvim') -- Add indentation guides even on blank lines
    use {"lukas-reineke/indent-blankline.nvim", main = "ibl",
opts = {
    --char = '|',
    char = '┊',
    show_trailing_blankline_indent = false}
}
    use ('folke/which-key.nvim')
    use ('vimwiki/vimwiki')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('windwp/nvim-autopairs')
    use ('numToStr/Comment.nvim')
    use ('nvim-tree/nvim-web-devicons')
    use ('folke/trouble.nvim')
    use ('folke/todo-comments.nvim')
    use ('ziontee113/color-picker.nvim')
    -- use {'dhruvmanila/telescope-bookmarks.nvim', tag = "*"}
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
        end}
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true }}
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    -- use ({"iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end, })
--    use {
--    'notjedi/nvim-rooter.lua',
--    config = function() require'nvim-rooter'.setup() end
--    }


-- Colourschemes
    -- use ('rose-pine/neovim')
    -- use ('navarasu/onedark.nvim') -- Theme inspired by Atom
    -- use ('ellisonleao/gruvbox.nvim')
    -- use ('folke/tokyonight.nvim')
    --
    use({
        'rose-pine/neovim',
        as = 'rose-pine-moon',
        config = function()
        vim.cmd('colorscheme rose-pine')
        end
    })

-- Automatically source and re-compile packer whenever you save this init.lua
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | silent! LspStop | silent! LspStart | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})

end)

