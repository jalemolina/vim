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

" =========================================================
" === colores y gui ========================================
" =========================================================
if has("gui_running")
    colors molokai
else
    colors molokai
endif

" Fuente. Debe estar instalada en el sistema
set gfn=Inconsolata

" opciones graficas de gvim: lo copiado en visual va al clipboard; usar icono
" incluir barra de herramientas
set guioptions-=a
set guioptions=egmrt

" activar raton
if has('mouse')
    set mouse=a
    set selectmode=mouse
endif
 
" para que vim en konsole (kde) use todos los colores
" también hay que usar este plugin:http://www.vim.org/scripts/script.php?script_id=2390
set t_Co=256"

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
