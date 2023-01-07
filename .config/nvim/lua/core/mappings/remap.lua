vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>x", function()
--     local picked_window_id = picker.pick_window() or vim.api.nvim_get_current_win()
--     vim.api.nvim_set_current_win(picked_window_id)
-- end, { desc = "Pick a window" })
-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')  --conflicts with vimwiki keymapping for same function

--tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
--nnoremap <silent> <M-o> :RnvimrToggle<CR>
--tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

-- vim.keymap.set("n", "<silent> <M-i> <C-\><C-n>", vim.cmd.RnvimrResize")

-- ---------------- TODO Comments ----------------------------------------------

vim.keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })


-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
-- end, { desc = "Next error/warning todo comment" })
--
-- vim.keymap.set("n", "[t", function()
--   require("todo-comments").jump_prev({keywords = { "ERROR", "WARNING" }})
-- end, { desc = "Previous error/warning todo comment" })

-- ---------------- Terminal Keymaps -------------------------------------------
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')

-- -----------------------------------------------------------------------------
-- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
--------------------------------------------------------------------------------
-- ---------------- Trouble ----------------------------------------------------
-- commented out as duplicated in whichkey.lua
-- vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
--   {silent = true, noremap = true}
-- )
-- vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
--   {silent = true, noremap = true}
-- )
-- vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
--   {silent = true, noremap = true}
-- )
-- vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
--   {silent = true, noremap = true}
-- )
-- vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
--   {silent = true, noremap = true}
-- )
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
-- -----------------------------------------------------------------------------
-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})

)
