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
    requires = { {'nvim-lua/plenary.nvim'} }
  }

-- Colourschemes
--  use ('rose-pine/neovim')
--  use ('navarasu/onedark.nvim') -- Theme inspired by Atom
--  use ('ellisonleao/gruvbox.nvim')

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

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
  use ('lukas-reineke/indent-blankline.nvim') -- Add indentation guides even on blank lines
  use ('folke/which-key.nvim')
  use ('vimwiki/vimwiki')
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('nvim-lualine/lualine.nvim') -- Fancier statusline
  use ('nvim-tree/nvim-tree.lua')
  use ('nvim-tree/nvim-web-devicons')
  --
end)
