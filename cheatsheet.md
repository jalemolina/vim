# Pestañas

:tabnew <nombre> -> abre archivo nombre en otra pestaña
:tabdo <comando> -> ejecuta el comando en todas las pestañas
:tabmove <n> -> mueve la pestaña a la posición n
:tabs -> lista las pestañas abiertas
ctrl <PageDown> -> siguiente pestaña (para gvim) gT -> para vim
crtl + <TAB> -> idem anterior
ctrl <PageUp> -> anterior pestaña (para gvim) gt -> para vim
crtl + <SHIFT> + <TAB> -> idem anterior
ctrl + t -> Nueva pestaña
vim -p archivo1 archivo2 archivo3  -> abre los archivos en pestañas otro ej: vim -p *.txt

# Sesiones

:mksession! <archivo> -> te guarda tu estado actual en archivo
:source <archivo> -> te restaura el estado que este guardado en archivo

# Consola interactiva
:ConqueTermSplit [python, bash, zsh, sqlite, etc]
:ConqueTermSplit python


# Configuración

,e -> abre .vimrc
,w -> guarda el doc
:w !sudo tee %   -> guardar un archivo con permisos de admin

## sintaxis y snipets

:set ft=django			->ft = FyleType, para varios tipos habilitados, separarlos por puntos ej: ft=html.django-html
:set syntax=python

## Sinppets
### Globales
date -> año-mes-día o año-mes-día hora:minutos:segundos
c)	-> copyright
gpl	-> licencia en comentarios tipo c/c++ (/**/) o python (#)
lorem	-> lorem ipsum

## muestra los espacios arrastrados, marcas de tabulación, retornos de carro y líneas cortadas

:set list	-> muestra
:set nolist	-> Oculta

# Trabajo duro

yyp -> duplica linea
:set guifont=Inconsolata\ 24       -> cambia el tamaño de la fuente en caliente

Buscar y reemplazar (expresiones regulares)
===========================
:%s/'\ '/\r/g      -> reemplaza ' ' por un retorno de carro
:%s/'//g           -> reemplaza ' por nada, o sea lo borra

Plugins
===========================

vimtodo
---------------------------
\cn  -> o en modo insert cn<space> nueva tarea
\cb  -> nuevo checkbox
\cc  -> togle checkbox

### Surround ###
#### Modo Normal
yss( -> rodea la línea con '(' o lo que venga después de la segunda 's'
cs -> change surround -> 
ds -> delete surround -> 
t -> es para tags
iw -> es para objetos de texto
"Hello world!" -> cs"' -> 'Hello world!'
"Hello world!" -> cs"<q> -> <q>Hello world!</q>
<q>Hello world!</q> -> cst" -> "Hello world!"
"Hello world!" -> ds" -> Hello world!
Hello world! -> ysiw] -> [Hello] world!
-> si se coloca ] se rodea sin espacios, en cambio [ añade un espacio interno
"Hello world!" -> ds" -> Hello world!
"Hello world!" -> ds" -> Hello world!
"Hello world!" -> ds" -> Hello world!
"Hello world!" -> ds" -> Hello world!
"Hello world!" -> ds" -> Hello world!

#### Modo Visual o Línea Visual
S' -> rodea lo seleccionado



#### Modo Visual o Línea Visual
S' -> rodea lo seleccionado


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

  :map <C-c>g :call RopeGotoDefinition()

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
