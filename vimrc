execute pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on

" Mostrar siempre la barra de status (necesario para Powerline)
set laststatus=2

" Mapeado LEADER Key
let g:mapleader=","

" Cuantas lineas del historial VIM debe recordar
set history=500

" Ignorar estos archivos
set wildignore=*.swp,*.bak,*.pyc,*.class

" Se establece en automático leer cuando se modifica un archivo desde el exterior
set autowrite

" Guardado rapido leader + w
nmap <leader>w :w!<CR>

" Edicion rapida de .vimrc
nmap <leader>e :e! ~/.vimrc<CR>
" Cuando se edita .vimrc, recargarlo
autocmd! bufwritepost vimrc source ~/.vimrc

" Mostrar TABS y EOL con <leader>i
:set listchars=tab:\|\ ,trail:·,eol:¬
nmap <leader>i :set list!<CR>

" Mapeado NERDTreeToggle con F8
map <F8> :NERDTreeToggle<CR>
" Abrir automaticamente NERDTree al iniciar
"autocmd vimenter * NERDTree
" Abrir automaticamente NERDTree al iniciar si no se especifico algun archivo
" autocmd vimenter * if !argc() | NERDTree | endif

" TagBar mapeado en F7
let g:tagbar_ctags_bin = '/bin/ctags'
map <F9> :TagbarToggle<CR>

" Ubicacion del diccionario de Pydiction
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

" Mostrar numero de linea
set number
set numberwidth=1             " usa sólo una columna y un espacio cuando sea posible
set title                     " Muestra el título en la barra de título de la consola
set pastetoggle=<F3>          " Press F3 for toggle paste mode
set cursorline                " Resalta la linea donde se encuentra el cursor
set colorcolumn=80	      " Marca la columna 80 con una línea resaltada

" buscar nocase salvo que tenga mayúsculas
set ignorecase
set smartcase
set hlsearch
 
" Mostrar el paréntesis opuesto
set showmatch

" Encoding UTF8
set encoding=utf-8

try
    lang es
catch
endtry

nmap <F7> :setlocal spell spelllang=es<CR>

" empezar a hacer scroll cuando nos acercamos estas líneas a los bordes
set scrolloff=5
 
" mostrar el comando
set showcmd

" muestra barra con completados de linea de comandos
set wildmenu

" Configurar el comportamientode backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" =========================================================
" === colores y gui ========================================
" =========================================================
if has("gui_running")
    colors molokai
else
    colors molokai
endif

" Fuente. Debe estar instalada en el sistema
set gfn=Inconsolata\ 11

" opciones graficas de gvim: lo copiado en visual va al clipboard; usar icono
" incluir barra de herramientas
set guioptions-=a
set guioptions=egmrt

" activar raton
if has('mouse')
    set mouse=a         "activa el uso del ratón automáticamente"
    set mousehide       "oculta el ratón mientras se escribe"
    set selectmode=mouse
endif
 
" para que vim en konsole (kde) use todos los colores
" también hay que usar este plugin:http://www.vim.org/scripts/script.php?script_id=2390
set t_Co=256

" Para que jedi no se active automaticamente al escribir el punto,
" sino que lo haga con la combinación Ctrl + space
let g:jedi#popup_on_dot = 0

" Para mover lineas como en SublimeText
nnoremap <c-s-down> :m+<CR>==
nnoremap <c-s-up> :m-2<CR>==
inoremap <c-s-down> <Esc>:m+<CR>==gi
inoremap <c-s-up> <Esc>:m-2<CR>==gi
vnoremap <c-s-down> :m'>+<CR>gv=gv
vnoremap <c-s-up> :m-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

"--- python formatting help ---
au BufEnter,BufRead *.py set smartindent
au BufEnter,BufRead *.py retab " Convierte las tabulaciones existentes en espacios

" markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0

" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor"

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0

" XHTML (tab width 2 chr, no wrapping)
autocmd FileType xhtml set sw=2
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set sts=2
autocmd FileType xhtml set textwidth=0

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2

"remove trailing whitespace
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.cc :%s/\s\+$//e
autocmd BufWritePre *.cpp :%s/\s\+$//e
autocmd BufWritePre *.c++ :%s/\s\+$//e
autocmd BufWritePre *.h :%s/\s\+$//e
autocmd BufWritePre *.java :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e
autocmd BufWritePre *.pl :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" Mapeado pep8 en F6
let g:pep8_map='<F6>'

