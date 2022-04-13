
"let g:vimwiki_ext2syntax = {'md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" Following applicable to vimwiki-markdown
"let g:vimwiki_customwiki2html=$HOME.'/.vim/autoload/vimwiki/customwiki2html.sh'
" let g:vimwiki_list = [{'path': '~/vimwiki', 'template_path': '~/vimwiki/templates/',
"         \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',
"          \ 'path_html': '~/vimwiki/site_html/', 'custom_wiki2html': 'vimwiki_markdown',
"          \ 'html_filename_parameterization': 1,
"          \ 'template_ext': '.tpl'}]


"let g:vimwiki_list = [{
"  \ 'path': '$HOME/Documents/PersonalWiki',
"  \ 'syntax': 'markdown', 'ext': '.md',
"  \ 'custom_wiki2html': 'vimwiki_markdown',
"  \ 'template_path': '$HOME/Documents/PersonalWiki/templates',
"  \ 'template_default': 'default',
"  \ 'template_ext': '.tpl'}]

"Following required by vimwiki-markdown python extension

"https://github.com/WnP/vimwiki_markdown
let g:vimwiki_list = [{
	\ 'path': '$XDG_DATA_HOME/vimwiki',
	\ 'template_path': '~/vimwiki/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '~/vimwiki/site_html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'}]
