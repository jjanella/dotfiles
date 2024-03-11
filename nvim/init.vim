set tabstop=2
set softtabstop=2
set shiftwidth=2
set number

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
noremap <silent> <C-W>          :update<CR>
vnoremap <silent> <C-W>         <C-C>:update<CR>
inoremap <silent> <C-W>         <C-O>:update<CR>

" Dont tab-complete these files
"set wildignore+=*.pdf,*.png,*.jpg,*.out

filetype plugin indent on



function! PrintToTex()
	" Take the screenshot
	!~/.config/i3/ss

	" Create the unique filename
	let l:fname = strftime('%b-%d-%s') 

	" Only works if there is a return value, copy the screenshot to the tex file
	let _ = system('cp ~/screenshot.png ./' . l:fname . '.png')

	" Tell the tex file to use the screenshot
	execute "normal i \\noindent\\includegraphics[width=\\textwidth]{" . l:fname . ".png}"
endfunction

" So that ultisnips will stop stroking out in venv.
let g:python3_host_prog = '/usr/bin/python'

call plug#begin()

" Pretty
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

" Code stats
Plug 'wakatime/vim-wakatime'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=0
let g:tex_conceal='abdmg'
highlight clear Conceal


"function! CompileTex()
	":VimtexCompile
	":! rm *.fls *.aux *.fdb_latexmk *.log *.gz
"endfunction



Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "ultisnips"]

nmap <c-o> <Plug>(vimtex-compile)
nmap <c-p> :call PrintToTex()<CR>


Plug 'ryanoasis/vim-devicons'


Plug 'ap/vim-css-color'


call plug#end()


colorscheme moonfly
