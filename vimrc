set nocompatible
set shell=/bin/sh
execute pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on

" Mostrar siempre la barra de status (necesario para Powerline)
set laststatus=2

let g:Powerline_symbols = 'fancy'
let g:Powerline_theme='default'
let g:Powerline_colorscheme='default'

" Mapeado LEADER Key
let g:mapleader=","
" Definicion del autor en los snippets
let g:snips_author="José Alejandro Molina"

" Cuantas lineas del historial VIM debe recordar
set history=500

" Ignorar estos archivos
set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.class,*.tmp,*~

" Se establece en automático leer cuando se modifica un archivo desde el exterior
set autowrite

" Permite el cambio de buffer sin guardar
set hidden

" Guardado rapido leader + w
nmap <leader>w :w!<CR>

" Edicion rapida de .vimrc
nmap <leader>e :e! ~/.vim/vimrc<CR>
" Cuando se edita .vimrc, recargarlo
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Mostrar TABS, EOL, etc. con <leader>i
set listchars=tab:\┆\ ,trail:•,eol:↵,extends:⟫,precedes:⟪,nbsp:.  "|˃»ʾ჻᛫›‣•⁋…‧․↔↩↹↵↣↦→⇆⇔⇥⇢≋⊳⋗⋙⋯〉⌲⤶⏎⏩⏭␣⑅▶▷▸▹►▻☛☞☠☢☣☯☹☺☻⚛⚮⚭⚯❭❯❱➔➜➣➢➤⥅⧎⧓⧒⧑⫷⫸⪢⪡⪦⪧⩥⩤⧐⧏⟾⟫⟪⟨⟩❬❭❮❯❰❱⏮⏭⏪⏩≫≪⇇⇉
nmap <leader>i :set list!<CR>

" Mapeado NERDTreeToggle con F8
map <F8> :NERDTreeToggle<CR>
" Abrir automaticamente NERDTree al iniciar
"autocmd vimenter * NERDTree
" Abrir automaticamente NERDTree al iniciar si no se especifico algun archivo
" autocmd vimenter * if !argc() | NERDTree | endif
"ignore some file types
let g:NERDTreeIgnore=[
            \'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \'\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$',
            \'\.FxCop$','\.scc$','\.vssscc$','\.ini$', '\.pol$',
            \'\.user$', '\.cd$', '\.Cache$', '\.mdf$', '\.ldf$',
            \'\.tmp$', '^NTUSER.DAT*', '\.zip$', '\.pdb$', '\.dll$',
            \'tags', 'bin', 'obj', '\.suo$', '\.vspscc$', '\.*\~']

" TagBar mapeado en F9
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
set incsearch

" Mostrar el paréntesis opuesto
set showmatch

" Encoding UTF8
set encoding=utf-8
scriptencoding utf-8

try
    lang es
catch
endtry

nmap <F7> :setlocal spell spelllang=es<CR>

" Setea el idioma para el plugin emmet (ex zencoding)
let g:user_emmet_settings = {
            \    'lang' : 'es',
            \    'html' : {
            \        'filters' : 'html',
                \        'indentation' : '  '
                \    },
                \    'css' : {
                \        'filters' : 'fc',}
            \}

" empezar a hacer scroll cuando nos acercamos estas líneas a los bordes
set scrolloff=5
 
" mostrar... 
set showcmd " el comando
set showmode " muestra el modo

" muestra barra con completados de linea de comandos
set wildmenu

" Configurar el comportamientode backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" El cursor en las líneas cortadas (wrapped lines) al moverse hacia arriba o
" hacia abajo, pasa al correspondiente renglón y no a la línea siguiente.
nnoremap j gj
nnoremap k gk

" =========================================================
" === colores y gui ========================================
" =========================================================
if has("gui_running")
    colors molokai
else
    colors molokai
endif

" Fuente. Debe estar instalada en el sistema
set gfn=Inconsolata\ 12

" opciones graficas de gvim: lo copiado en visual va al clipboard; usar icono
" incluir barra de herramientas
set clipboard=unnamedplus       "Usar el registro + para copiar-pegar"
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

au BufEnter * if bufname("") !~ "^[\A-Za-z0-9\]*://" | lcd %:p:h | endif    "Siempre cambia al directorio del archivo"

"--- python formatting help ---
au BufEnter,BufRead *.py set smartindent
au BufEnter,BufRead *.py retab " Convierte las tabulaciones existentes en espacios

" Markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set ft=markdown
au BufEnter,Bufread *.mkd,*.md,*.mdown,*.markdown set tw=0


" LaTeX
au BufEnter,Bufread *.tex,*.latex,*.latexmain set ft=tex

" http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor"

" Coffee Script
" https://github.com/kchmck/vim-coffee-script/issues/71
if has("gui_running")
    au BufWritePost *.coffee CoffeeLint | cwindow
    au QuickFixCmdPost * nested cwindow
else
    au BufWritePost *.coffee CoffeeLint | cwindow | redraw!
    au QuickFixCmdPost * nested cwindow | redraw!
endif
au BufWritePost *.coffee silent make! " recompila al guardar el archivo
au FileType litcoffee runtime ftplugin/coffee.vim
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

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
" syntastic
let g:syntastic_python_checkers=['python', 'pylint', 'pyflakes', 'flake8']

" GIT
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0]) " En lugar de volver el cursor a la última posición en el búfer. lo ponemos a la primera línea al editar un mensaje de git commit.

" deshacer
set backup
if has('persistent_undo')
    set undofile                "deshacer persistente"
    set undolevels=1000         "máximo número de cambios posibles de deshacer"
    set undoreload=10000        "máximo número de líneas por guardar para deshacer cuando se recarga el buffer"
endif

" Configuración del plugin indentLine
let g:indentLine_char = '┆'

" mapeado cortar, copiar, pegar en portapapeles del sistema
set go+=a               " lo seleccionado se copia automaticamente al portapapeles
vmap <C-c> "+yi
vmap <C-x> "+x
vmap <C-v> <ESC>"+gP
imap <C-v> <ESC>"+gP

" Configuracion para snippets django y coloreado de sintaxis
au BufRead,BufNewFile admin.py,settings.py,forms.py,urls.py,models.py,views.py,tests.py set ft=python.django " activa ambos snippets, python y django
au BufRead,BufNewFile */templates/*.html,*/plantillas/*.html set ft=django-html.htmldjango " activa ambos snippets, html y django-html si los archivo html estan dentro del directorio [templates,plantillas] o subdirectorio del mismo. Ademas del resaltado de sintaxis de plantilla htmldjango

":imap jj <Esc>           " mapeado jj para pasar de modo inserción al modo normal.

" Esto es para el autocompletado
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Manejo de pestañas
" Ctrl + t  -> Pestaña nueva
" Ctrl + Tab  -> Pestaña siguiente
" Ctrl + Shift + Tab  -> Pestaña previa
map <C-TAB> gt
imap <C-TAB> <ESC>gt
map <C-S-TAB> gT
imap <C-S-TAB> <ESC>gT
imap <C-t> <ESC>:tabnew<CR>i

" Sangrado en modo visual (sin salir del modo visual)
vnoremap > >gv
vnoremap < <gv

" Configuración del plugin Conque Term
let g:ConqueTerm_CloseOnEnd = 1
"let g:ConqueTerm_Syntax = 'python'
function! MyConqueStartup(term)

      " set buffer syntax using the name of the program currently running
      let syntax_associations = { 'ipython': 'python', 'python': 'python', 'zsh': 'sh', 'bash': 'sh', 'sqlite': 'sql', 'mongo': 'json', 'irb': 'ruby' }

      if has_key(syntax_associations, a:term.program_name)
          execute 'setlocal syntax=' . syntax_associations[a:term.program_name]
      else
          execute 'setlocal syntax=' . a:term.program_name
      endif

      " shrink window height to 10 rows
      resize 10

      " silly example of terminal api usage
      if a:term.program_name == 'mongo'
          call a:term.writeln('db.version()')
      endif
      
endfunction

call conque_term#register_function('after_startup', 'MyConqueStartup')
