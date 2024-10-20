#!/bin/bash

echo -ne "\033]0;$1 -- Interpreted C - program\007"


spth=$(pwd)
pth=$(mktemp -d)

mkdir -p "$pth"
cp "$1" "$pth/main.c"

cd "$pth" || exit


gcc main.c -o main
./main


cd "$spth" || exit
rm -rf "$pth"