return {
    'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_list = {{path = '$HOME/.local/share/vimwiki', syntax = 'markdown', ext = '.md'}}
    end,
}
