local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)

-- #############################################################################
require('telescope').setup {
    pickers = {
        -- show hidden files
        -- https://www.reddit.com/r/neovim/comments/nspg8o/telescope_find_files_not_showing_hidden_files/
        find_files = {
            hidden = true
        }
    },

    extensions = {
        -- ### telescope-fzf-native ###
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                            -- the default case_mode is "smart_case"
        },
        -- ### telescope-bookmarks ###
        bookmarks = {

            selected_browser = 'brave',

            -- Either provide a shell command to open the URL
            url_open_command = 'brave',

            -- Or provide the plugin name which is already installed
            -- Available: 'vim_external', 'open_browser'
            url_open_plugin = nil,

            -- Show the full path to the bookmark instead of just the bookmark name
            full_path = true,

            -- Provide a custom profile name for Firefox browser
            firefox_profile_name = nil,

            -- Provide a custom profile name for Waterfox browser
            waterfox_profile_name = nil,

            -- Add a column which contains the tags for each bookmark for buku
            buku_include_tags = false,

            -- Provide debug messages
            debug = false,
        },
  }
}
-- load_extensions, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('bookmarks')
