return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},

    --[[ 
    require "ibl".setup {
    -- require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
    char = '┊',
    show_trailing_blankline_indent = false,
    }
    end
    } ]]

    config = function()

        local highlight = {
            "CursorColumn",
            "Whitespace",
        }
        require("ibl").setup {
            indent = { highlight = highlight, char = "┊" },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = true,
            },
            scope = { enabled = true },
        }
    end
}
