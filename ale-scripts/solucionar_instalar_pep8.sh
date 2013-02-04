#!/bin/bash
# Instala el pep8 plugin
#Visto en http://universo.emergya.es/espacios/jialvarez/comprobaci%C3%B3n-pep8-de-estilo-del-c%C3%B3digo-python-para-vim

cd /tmp
git clone https://github.com/cburroughs/pep8.py.git
yum -y install python-setuptools
cd pep8.py
python setup.py build
python setup.py install
wget http://www.vim.org/scripts/download_script.php?src_id=14366 -O pep8.vim
mkdir -p ~/.vim/ftplugin/python
mv pep8.vim ~/.vim/ftplugin/python
rm -Rfv pep8.py/
