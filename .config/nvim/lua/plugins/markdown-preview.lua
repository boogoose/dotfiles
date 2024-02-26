return



    -- install with yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && npm install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },

        config = function()
            -- Set to 1, nvim will open the preview window after entering a markdown buffer
            -- Default: 0
            vim.g.mkdp_auto_start = 0

            -- Set to 1, nvim will auto close current preview window when changing from a markdown buffer to another
            -- Default: 1
            vim.g.mkdp_auto_close = 1

            -- Set to 1, vim will refresh markdown when saving the buffer or leaving insert mode
            -- Default 0 is auto refresh markdown as you edit or move the cursor
            -- Default: 0
            vim.g.mkdp_refresh_slow = 0

            -- Set to 1, MarkdownPreview command can be used for all files
            -- By default it can only be used in markdown files
            -- Default: 0
            vim.g.mkdp_command_for_global = 0

            -- Set to 1, preview server available to others in your network
            -- By default, the server listens on localhost (127.0.0.1)
            -- Default: 0
            vim.g.mkdp_open_to_the_world = 0

            -- Use a custom IP to open preview page
            -- Useful when you work in remote vim and preview on a local browser
            -- Default empty
            vim.g.mkdp_open_ip = ""

            -- Specify the browser to open preview page
            -- For paths with spaces
            -- Valid: "/path/with space/xxx"
            -- Invalid: "/path/with\\ space/xxx"
            -- Default: ""
            vim.g.mkdp_browser = ""

            -- Set to 1, echo preview page url in command line when opening preview page
            -- Default is 0
            vim.g.mkdp_echo_preview_url = 0

            -- A custom vim function name to open preview page
            -- This function will receive the URL as a param
            -- Default is empty
            vim.g.mkdp_browserfunc = ""

            -- Options for markdown render
            -- mkit: markdown-it options for rendering
            -- katex: katex options for math
            -- uml: markdown-it-plantuml options
            -- maid: mermaid options
            -- disable_sync_scroll: if disable sync scroll, default 0
            -- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
            --   middle: mean the cursor position always shows at the middle of the preview page
            --   top: mean the vim top viewport always shows at the top of the preview page
            --   relative: mean the cursor position always shows at the relative position of the preview page
            -- hide_yaml_meta: if hide yaml metadata, default is 1
            -- sequence_diagrams: js-sequence-diagrams options
            -- content_editable: if enable content editable for preview page, default: false
            -- disable_filename: if disable filename header for preview page, default: 0
            local mkdp_preview_options = {
                -- 'mkit': {},
                -- 'katex': {},
                -- 'uml': {},
                -- 'maid': {},
                disable_sync_scroll = 0,
                sync_scroll_type = "middle", -- middle, top or relative
                hide_yaml_meta = true, -- hide yaml metadata
                sequence_diagrams = {},
                content_editable = false,
                disable_filename = false,
                toc = {}
            }

            -- Use a custom markdown style (absolute path)
            -- Like "/Users/username/markdown.css" or expand("~/markdown.css")
            vim.g.mkdp_markdown_css = ""

            -- Use a custom highlight style (absolute path)
            -- Like "/Users/username/highlight.css" or expand("~/highlight.css")
            vim.g.mkdp_highlight_css = ""

            -- Use a custom port to start the server or empty for random
            vim.g.mkdp_port = ""

            -- Preview page title
            -- ${name} will be replaced with the file name
            vim.g.mkdp_page_title = "[[%{v:rvfname}]]]"

            -- Recognized filetypes
            -- These filetypes will have MarkdownPreview... commands
            vim.g.mkdp_filetypes = { "markdown" }

            -- Set default theme (dark or light)
            -- By default the theme is defined according to the preferences of the system
            -- #################################################################
            vim.keymap.set('n', '<C-s>', [[<Cmd>MarkdownPreviewToggle<CR>]], { desc = 'MarkdownPreviewToggle'})
            -- nmap <C-s> MarkdownPreview
            -- nmap <M-s> MarkdownPreviewStop
            -- nmap <C-p> MarkdownPreviewTogglee

        end,


    }
