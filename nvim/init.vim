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
highlight clear Conceal


Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips"]

" Defunct atm
"function! Synctex()
"        " remove 'silent' for debugging
"        execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
"endfunction
"map <C-enter> :call Synctex()<cr>

"map o <plug>(vimtex-view)


call plug#end()
