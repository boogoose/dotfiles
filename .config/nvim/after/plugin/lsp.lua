vim.opt.signcolumn = 'yes' -- Reserve space for diagnostic icons

local lsp = require('lsp-zero')
-- lsp.preset('recommended')
lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  manage_nvim_cmp = true,
  call_servers = 'local',
  sign_icons = {
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = ''
  }
})

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'lua_ls',
})

lsp.nvim_workspace()

lsp.set_preferences({})

lsp.setup()

-- ---------------- Diagnostics
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

-- --------------- CMP setup (currently just copied from https://github.com/VonHeikemen/lsp-zero.nvim)
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'buffer', keyword_length = 3},
    {name = 'luasnip', keyword_length = 2},
  },
  mapping = {
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
-- -----------------------------------------------------------------------------
-- -- Not sure where's the best place for this code...
-- require'lspconfig'.sumneko_lua.setup {
--     -- ... other configurations
--     --
--     -- https://www.youtube.com/watch?v=puWgHa7k3SY
--     on_attach = function()
--         -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
--         vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
--         vim.keymap.set("n", "td", vim.lsp.buf.type_definition, {buffer=0})
--     end,
--
--     settings = {
--         Lua = {
--             diagnostics = {
--             -- Get the language server to recognize the `vim` global
--                 globals = { 'vim' }
--             }
--         }
--     }
-- }
-- Seems this is redundant once I failed to bork the lsp-zero configuration
-- -----------------------------------------------------------------------------
