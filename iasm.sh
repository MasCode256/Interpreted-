#!/bin/bash

echo -ne "\033]0;$1 -- Interpreted C - program\007"


spth=$(pwd)
pth=$(mktemp -d)

mkdir -p "$pth"
cp "$1" "$pth/main.asm"

cd "$pth" || exit


nasm  main.asm -o main.o -f elf64
ld main.o -o main
./main


cd "$spth" || exit
rm -rf "$pth"