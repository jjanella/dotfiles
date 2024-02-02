set tabstop=2
set softtabstop=2
set shiftwidth=2
set number

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
noremap <silent> <C-W>          :update<CR>
vnoremap <silent> <C-W>         <C-C>:update<CR>
inoremap <silent> <C-W>         <C-O>:update<CR>

" Dont tab-complete these files
set wildignore+=*.pdf,*.png,*.jpg,*.out

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

nmap <c-o> <Plug>(vimtex-compile)



call plug#end()
