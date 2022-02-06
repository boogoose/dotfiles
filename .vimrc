" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim
syntax enable
" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
set background=dark 
colorscheme delek
"xset tabstop=4                   " Tab
"xset softtabstop=4               "Effective tab while editing.
"xset expandtab                   " Tabs are space

"Set hybrid/absolute auto-switching line lnumbers

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" System clipboard access
vnoremap <C-c> "+y
map <C-v> "+P

" Paste to Primary Selection in addition to System Clipboard
vnoremap <C-c> "+y :let @+=@*<CR>

" changes necessary for VimWiki

set nocompatible
filetype plugin on

" Display active command (specifically for mapleader)
set showcmd

" Define the Mapleader key - uncomment following line to set it as \
let mapleader = " "

" Example key remap using mapleader key
noremap <leader>w :w<cr>

"Set <j> <k> to natural movement by apparent screen line rather than file
"line.
nnoremap j gj
nnoremap k gk

"##############################################################################
"#                      POWERLINE
"##############################################################################


"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

"Piggybacking off of powerline (as opposed to powerline-vim) as per archwiki
set rtp+=/usr/share/powerline/bindings/vim

set laststatus=2 "Always display the statusline in all windows
set showtabline=2 "Always display the tabline, even if there is only one tab
set noshowmode "Hide the default mode text(e.g. -- INSERT -- below the status line)

"Enable 256-colour - necessary for fully functioning powerline plug-in
set t_Co=256

"Fancy Symbols - for powerline
let g:Powerline_symbols = "fancy"



