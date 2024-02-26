return {
    'akinsho/bufferline.nvim',
    version = "v3.*",
    -- lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },

    config = function()

        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
                -- numbers = "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
                numbers = "buffer_id",
                indicator = {
                    -- icon = '▎', -- this should be omitted if indicator style is not 'icon'
                    -- style = 'icon' | 'underline' | 'none',
                    style = 'underline' -- TODO: this setting doesn't appear to be working

                },
                color_icons = true, -- whether or not to add the filetype icon highlights
                show_buffer_icons = true, -- disable filetype icons for buffers
                show_buffer_close_icons = false,
                show_buffer_default_icon = false, -- whether or not an unrecognised filetype should show a default icon
                show_close_icon = false,
                -- show_tab_indicators = true,
                -- show_duplicate_prefix = true | false, -- whether to show duplicate buffer prefix
                -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
                -- can also be a table containing 2 custom separators
                -- [focused and unfocused]. eg: { '|', '|' }
                -- separator_style = "slant" | "thick" | "thin" | { 'any', 'any' },
                separator_style = "slant",
                -- enforce_regular_tabs = false | true,
                -- always_show_bufferline = true | false,
                -- hover = {
                --     enabled = true,
                --     delay = 200,
                --     reveal = {'close'}
                -- },
                -- sort_by = 'insert_after_current' |'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
                --     -- add custom logic
                --     return buffer_a.modified > buffer_b.modified
                -- end
            }
        }
    end
}

