#!/bin/bash

echo -ne "\033]0;$1 -- Interpreted C++ - program\007"


spth=$(pwd)
pth=$(mktemp -d)

mkdir -p "$pth"
cp "$1" "$pth/main.cpp"

cd "$pth" || exit


g++ main.cpp -o main
./main


cd "$spth" || exit
rm -rf "$pth"