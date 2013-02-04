#!/bin/bash
# Solución al error E763 por la activación del corrector ortográfico en Vim
# Visto en http://community.logicalbricks.com/node/150

VIMRUNTIME=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `

echo $VIMRUNTIME

cd ${VIMRUNTIME}/spell
for i in en*
do
    wget http://ftp.vim.org/vim/runtime/spell/$i -O $i
done
