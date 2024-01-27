set tabstop=2
set softtabstop=2
set shiftwidth=2
set number

filetype plugin indent on

call plug#begin()

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
" Shortcut to trigger VimtexView
map o <plug>(vimtex-view)

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<s-tab>'
let g:UltiSnipsJumpBackwardTrigger = '<c-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips"]

call plug#end()
