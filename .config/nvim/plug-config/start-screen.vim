" courtesy of; chris@machine @ https://www.chrisatmachine.com/Neovim/11-startify/

" let g:startify_custom_header = [
"        \ '   _  __     _         __  ___         __     ___ ',
"        \ '  / |/ /  __(_)_ _    /  |/  /__ _____/ /    |_  |',
"        \ ' /    / |/ / /  ` \  / /|_/ / _ `/ __/ _ \  / __/ ',
"        \ '/_/|_/|___/_/_/_/_/ /_/  /_/\_,_/\__/_//_/ /____/ ',
        \]

" We should specify where we want Startify to keep our sessions 
let g:startify_session_dir = '~/.config/nvim/session'

" Specify menu's constituents
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/.config/i3/config' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'b': '~/.bashrc' },
            \ { 'v': '~/.vimrc' },
            \ { 'x': '~/.xinitrc' },
            \ { 'q': '~/.config/nvim/coc-settings.json'},
            \ { 'p': '~/Documents/python/Moshrerun/tempo.py'},
            \ { 's': '~/.config/nvim/plug-config/start-screen.vim'},
            \ ]

" Automatically restart session
let g:startify_session_autoload = 1

" Let Startify take care of buffers
let g:startify_session_delete_buffers = 1

" let g:startify_fortune_use_unicode = 1
let g:startify_fortune_use_unicode = 1

" let g:startify_change_to_vcs_root = 1
let g:startify_change_to_vcs_root = 1

" Automatically Update Sessions
let g:startify_session_persistence = 1

" Get rid of empy buffer and quit
let g:startify_enable_special = 0


"            \ '~/Blog',
"            \ '~/Code',
"            \ '~/Pics',




