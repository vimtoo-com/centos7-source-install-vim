#!/bin/bash


yum remove -y vim

yum install epel-release -y
yum update -y


yum install -y git gcc-c++ ncurses-devel python-devel cmake wget make


cd ~
wget https://github.com/vim/vim/archive/v8.1.0000.tar.gz
tar xzf  v8.1.0000.tar.gz
cd vim-8.1.0000/

./configure --prefix=/usr/local/vim  \
--enable-pythoninterp=yes \
--with-python-command=python \

make && make install


echo "PATH=\$PATH:/usr/local/vim/bin" >> /etc/profile
. /etc/profile

vim --version



