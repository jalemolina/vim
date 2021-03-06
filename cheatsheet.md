# Pestañas

`:tabnew <nombre>` -> abre archivo nombre en otra pestaña

`:tabdo <comando>` -> ejecuta el comando en todas las pestañas

`:tabmove <n>` -> mueve la pestaña a la posición n

`:tabs` -> lista las pestañas abiertas

`ctrl <PageDown>` -> siguiente pestaña (para gvim) gT -> para vim

`crtl + <TAB>` -> idem anterior

`ctrl <PageUp>` -> anterior pestaña (para gvim) gt -> para vim

`crtl + <SHIFT> + <TAB>` -> idem anterior

`ctrl + t` -> Nueva pestaña

`vim -p archivo1 archivo2 archivo3`  -> abre los archivos en pestañas otro ej: `vim -p *.txt`

# Sesiones

`:mksession! <archivo>` -> te guarda tu estado actual en archivo

`:source <archivo>` -> te restaura el estado que este guardado en archivo

# Consola interactiva
`:ConqueTermSplit [python, python3, bash, zsh, sqlite, etc]`

`:ConqueTermSplit python`

# EasyMotion
`<número>w` -> avanza esa cantidad de palabras

    Mapping                     | Details
    ----------------------------|----------------------------------------------
    `<Leader><Leader>f{char}`   | Find {char} to the right. See |f|.
    `<Leader><Leader>F{char}`   | Find {char} to the left. See |F|.
    `<Leader><Leader>t{char}`   | Till before the {char} to the right. See |t|.
    `<Leader><Leader>T{char}`   | Till after the {char} to the left. See |T|.
    `<Leader><Leader>w`         | Beginning of word forward. See |w|.
    `<Leader><Leader>W`         | Beginning of WORD forward. See |W|.
    `<Leader><Leader>b`         | Beginning of word backward. See |b|.
    `<Leader><Leader>B`         | Beginning of WORD backward. See |B|.
    `<Leader><Leader>e`         | End of word forward. See |e|.
    `<Leader><Leader>E`         | End of WORD forward. See |E|.
    `<Leader><Leader>ge`        | End of word backward. See |ge|.
    `<Leader><Leader>gE`        | End of WORD backward. See |gE|.
    `<Leader><Leader>j`         | Line downward. See |j|.
    `<Leader><Leader>k`         | Line upward. See |k|.
    `<Leader><Leader>n`         | Jump to latest "/" or "?" forward. See |n|.
    `<Leader><Leader>N`         | Jump to latest "/" or "?" backward. See |N|.

# Jedi-vim
<!--`<CTRL><SPACE>` -> muestra autocompletado y docs (útil usarlo luego de un punto Ej: os.)-->

`<LEADER><SHIFT>K` -> DOCS

`,g` -> goto

`,d` -> goto definition

`,r` -> refactoring (tiene errores)

`,n` -> nombres relacionados, indica donde más se encuentra un nombre

# TableMode

`,tm` -> toggle mode (el disparador es `|`)

`,tt` -> autoformatea tabla

`:Tableize/,` -> usa ',' como separador

`:Tableize/;` -> usa ';' como separador

`,t[hjkl]` -> se desplaza por las celdas


# PEP 8
`<F6>`

# Pydiction
`<F2>` -> trigger y con `<C-n>` y `<C-p>` se mueve

# Esquema de colores
## Oscuro - Molokai
`:colorscheme molokaio`

`:set bg=dark`

## Claro - Hemisu
`:colorscheme hemisu`

`:set bg=light`

# Configuración

`,e` -> abre `.vimrc`

`,w` -> guarda el doc

`:w !sudo tee %`   -> guardar un archivo con permisos de admin

## sintaxis y snipets

`:set ft=django`			->`ft = FyleType`, para varios tipos habilitados, separarlos por puntos ej: `ft=html.django-html`

`:set syntax=python`

## Sinppets
### Globales

`date` -> año-mes-día o año-mes-día hora:minutos:segundos

`c)`	-> copyright

`gpl`	-> licencia en comentarios tipo c/c++ (`/**/`) o python (`#`)

`lorem`	-> lorem ipsum

## muestra los espacios arrastrados, marcas de tabulación, retornos de carro y líneas cortadas

`,i` -> Toogle

`:set list`	-> muestra

`:set nolist`	-> Oculta

# Trabajo duro

`yyp` -> duplica linea

`:set guifont=Inconsolata\ 24`       -> cambia el tamaño de la fuente en caliente

## Autocompletado
<C-n> -> de palabras siguiente
<C-p> -> de palabras anterior
<C-x><C-f> -> de path (al desplegarse el menú son válidas las dos anteriores)

## Correción ortográfica

F7 -> activa corrector ortográfico
<C-x>s -> en modo insertar muestra sugerencias de palabras
zg -> agrega palabras al diccionario
zw -> quita palabras del diccionario
[s anterior palabra mal escrita
]s siguiente palabra mal escrita

## Cambiar capitalización en modo visual

`~` -> Lo seleccionado en modo visual cambia a mayúscula, minúscula, título.

Buscar y reemplazar (expresiones regulares)
===========================
`:%s/'\ '/\r/g`      -> reemplaza ' ' por un retorno de carro

`:%s/'//g`           -> reemplaza ' por nada, o sea lo borra

Plugins
===========================

vimtodo
---------------------------
`\cn`  -> o en modo insert cn<space> nueva tarea

`\cb`  -> nuevo checkbox

`\cc`  -> togle checkbox

Surround
---------------------------

### Modo Normal
`yss(` -> rodea la línea con '(' o lo que venga después de la segunda 's'

`cs` -> change surround

`ds` -> delete surround

`t` -> es para tags

`iw` -> es para objetos de texto

`"Hello world!"` -> `cs"'` -> `'Hello world!'`

`"Hello world!"` -> `cs"<q>` -> `<q>Hello world!</q>`

`<q>Hello world!</q>` -> `cst"` -> `"Hello world!"`

`"Hello world!"` -> `ds"` -> `Hello world!`

`Hello world!` -> `ysiw]` -> `[Hello] world!`

-> si se coloca `]` se rodea sin espacios, en cambio `[` añade un espacio interno

### Modo Visual o Línea Visual
`S'` -> rodea lo seleccionado

The NERD Commenter
---------------------------

`,cc` -> Comenta la línea actual o el texto seleccionado en modo VISUAL.

`,cn` -> 
Same as |NERDComComment| but forces nesting.

,c<space> |NERDComToggleComment| 
Toggles the comment state of the selected line(s). If the topmost selected
line is commented, all selected lines are uncommented and vice versa.

,cm |NERDComMinimalComment| 
Comments the given lines using only one set of multipart delimiters if
possible. 

,ci |NERDComInvertComment| 
Toggles the comment state of the selected line(s) individually. Each selected
line that is commented is uncommented and vice versa.

,cs |NERDComSexyComment| 
Comments out the selected lines ``sexily''

,cy |NERDComYankComment|
Same as |NERDComComment| except that the commented line(s) are yanked
before commenting.

,c$ |NERDComEOLComment| 
Comments the current line from the cursor to the end of line.

,cA |NERDComAppendComment| 
Adds comment delimiters to the end of line and goes into insert mode between
them.

,cI |NERDComPrependComment| 
Adds comment delimiters to the start of line and goes into insert mode between
them.

|NERDComInsertComment| 
Adds comment delimiters at the current cursor position and inserts between.
Disabled by default.

,ca |NERDComAltDelim| 
Switches to the alternative set of delimiters.

,cl OR ,cr OR ,cb |NERDComAlignedComment| 
Same as |NERDComComment| except that the delimiters are aligned down the
left side (,cl), the right side (,cr) or both sides
(,cb).

,cu |NERDComUncommentLine| 
Uncomments the selected line(s).


Rope
---------------------------


================  ============================
Key               Command
================  ============================
C-x p o           RopeOpenProject
C-x p k           RopeCloseProject
C-x p f           RopeFindFile
C-x p 4 f         RopeFindFileOtherWindow
C-x p u           RopeUndo
C-x p r           RopeRedo
C-x p c           RopeProjectConfig
C-x p n [mpfd]    RopeCreate(Module|Package|File|Directory)
                  RopeWriteProject

C-c r r           RopeRename
C-c r l           RopeExtractVariable
C-c r m           RopeExtractMethod
C-c r i           RopeInline
C-c r v           RopeMove
C-c r x           RopeRestructure
C-c r u           RopeUseFunction
C-c r f           RopeIntroduceFactory
C-c r s           RopeChangeSignature
C-c r 1 r         RopeRenameCurrentModule
C-c r 1 v         RopeMoveCurrentModule
C-c r 1 p         RopeModuleToPackage

C-c r o           RopeOrganizeImports
C-c r n [vfcmp]   RopeGenerate(Variable|Function|Class|Module|Package)

C-c r a /         RopeCodeAssist
C-c r a g         RopeGotoDefinition
C-c r a d         RopeShowDoc
C-c r a f         RopeFindOccurrences
C-c r a ?         RopeLuckyAssist
C-c r a j         RopeJumpToGlobal
C-c r a c         RopeShowCalltip
                  RopeAnalyzeModule

                  RopeAutoImport
                  RopeGenerateAutoimportCache
===============   ============================


Shortcuts
---------

Some commands are used very frequently; specially the commands in
code-assist group.  You can define your own shortcuts like this::

  `:map <C-c>g :call RopeGotoDefinition()`

Ropevim itself comes with a few shortcuts.  These shortcuts will be
used only when ``ropevim_enable_shortcuts`` is set.

================  ============================
Key               Command
================  ============================
M-/               RopeCodeAssist
M-?               RopeLuckyAssist
C-c g             RopeGotoDefinition
C-c d             RopeShowDoc
C-c f             RopeFindOccurrences
================  ============================
