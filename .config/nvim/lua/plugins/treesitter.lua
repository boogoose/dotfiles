return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "bash", "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "markdown", "markdown_inline", "python", "rust", "regex" },
            sync_install = false,
            -- highlight = { enable = true },

            highlight = {
                -- `false` will disable the whole extension
                enable = true,

                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,

                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = true,
            },

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,
            autopairs = {    -- setting as per chris@machine for autopairs.nvim
                enable = true,
            },
            indent = { enable = true },
        })
    end
}



