" commented out first line as currently results in spelling mistakes getting
" blocked out and thus being made illegible.
" see - https://github.com/gillescastel/latex-snippets

" setlocal spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
