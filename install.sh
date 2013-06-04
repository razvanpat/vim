#!/bin/bash

s1=$(find . \( -name '.git*' -o -name install.sh -o -name .vimrc \) -prune -o -print | 
cpio -pmdu ~/.vim &> /dev/null)$?

s2=$(cp .vimrc ~/.vimrc)$?

if [ $s1 -eq 0 ] && [ $s2 -eq 0 ] 
then printf "
 
  _______        _             _ 
 (_______)      (_)           | |
  _____   ____   _  ___  _   _| |
 |  ___) |  _ \ | |/ _ \| | | |_|
 | |_____| | | || | |_| | |_| |_ 
 |_______)_| |_|| |\___/ \__  |_|
             (__/      (____/   


"; 
fi
