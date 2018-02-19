#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR"/uninstall.sh"

ln -s ~/.dot-simple/bashrc ~/.bashrc
ln -s ~/.dot-simple/inputrc ~/.inputrc
ln -s ~/.dot-simple/my.cnf ~/.my.cnf
ln -s ~/.dot-simple/vimrc ~/.vimrc
