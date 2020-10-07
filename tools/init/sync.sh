#!/bin/bash

# my repo
sync() {
  [ ! -d $1 ] && return
  cd $1 && git pull --quiet || echo in `pwd` > /dev/tty &
}
sync $SETTING_DIR
sync ~/vimwiki
sync ~/.task

# others repo
check_upstream ~/git/tig || echo in `pwd` > /dev/tty &
check_upstream ~/.vim_runtime || echo in `pwd` > /dev/tty &