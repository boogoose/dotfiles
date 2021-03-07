set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" source ~/.vimrc

" https://vi.stackexchange.com/questions/15431/how-can-i-make-the-neovim-terminal-run-the-current-file-in-python
nnoremap <F5> :sp <CR> :term python % <CR> " run python script
nnoremap <F4> :bd!<CR>

" remap H and L to switch tabs
nnoremap H gT           " last tab
nnoremap L gt           " next tab

nnoremap C :set cursorline! cursorcolumn!<CR>

"Set hybrid/absolute auto-switching line numbers
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set nocompatible        " changes necessary for VimWiki
set t_Co=256
syntax enable
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
set showcmd             " Display active command (specifically for mapleader)
set formatoptions-=cro  " Stop newline continution of comments
set splitbelow          " Horizontal splits will automatically be below
set splitright          " Vertical splits will automatically be to the right
set nobackup            " This is recommended by coc
set nowritebackup       " This is recommended by coc

set ruler               " Find the cursor!
" set colorcolumn=80
set tabstop=4
set softtabstop=4
set expandtab
set smarttab            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent         " Makes indenting smart
set autoindent          " Good auto indent
set laststatus=2        " Always display the status line
set cursorline          " Enable highlighting of the current line
filetype plugin on      " changes necessary for VimWiki
let g:mapleader = "\<Space>"
let g:maplocalleader = ","
let g:airline_powerline_fonts = 1

cmap w!! w !sudo tee %  

let g:python3_host_prog = '/usr/bin/python3'
"-------------------------System clipboard access--------------------
vnoremap <C-c> "+y
map <C-v> "+P

" Paste to Primary Selection in addition to System Clipboard
vnoremap <C-c> "+y :let @+=@*<CR>

"--------------------------------------------------------------------
"Set <j> <k> to natural movement by apparent screen line rather than file
"line.
nnoremap j gj
nnoremap k gk

"Fancy Symbols - for powerline
let g:Powerline_symbols = "fancy"

" Example key remap using mapleader key
noremap <leader>w :w<cr>

"-------------------------------------------------------------------
"-------------------------vscode config-----------------------------
if exists('g:vscode')
        "vscode extension
        source $HOME/.config/nvim/vscode/settings.vim
else
"-------------------------Plugins (VimPlug)-------------------------

call plug#begin("~/.vim/plugged")
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ConradIrwin/vim-bracketed-paste.git'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Sirver/ultisnips'
Plug 'mhinz/vim-startify'
Plug 'vimwiki/vimwiki'
Plug 'kevinhwang91/rnvimr'
Plug 'honza/vim-snippets'
Plug 'justinmk/vim-sneak'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
 call plug#end()

"-------------------------Source Configs---------------------------

source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/modules/coc.vim
source $HOME/.config/nvim/modules/ultisnips.vim
source $HOME/.config/nvim/modules/vimtex.vim
source $HOME/.config/nvim/snippets/latexsnippets.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/snippets/coc-snippets.vim
source $HOME/.config/nvim/plug-config/sneak.vim
source $HOME/.config/nvim/themes/gruvbox.vim
source $HOME/.config/nvim/plug-config/fzf.vim

"--------------------------------------------------------------------

endif
