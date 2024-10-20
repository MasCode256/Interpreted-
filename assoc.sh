#!/bin/bash

mkdir -p ~/.local/share/applications

xdg-mime default ic.desktop "text/x-c"
xdg-mime default icpp.desktop "text/x-c++"

cat <<EOL > ic.desktop
[Desktop Entry]
Version=1.0
Name=Interpreted C File
Exec=$PWD/ic.sh %f
Type=Application
MimeType=text/x-c;
EOL

cat <<EOL > icpp.desktop
[Desktop Entry]
Version=1.0
Name=Interpreted CPP File
Exec=$PWD/icpp.sh %f
Type=Application
MimeType=text/x-c++;
EOL

xdg-mime install ~/.local/share/applications/ic.desktop
xdg-mime install ~/.local/share/applications/icpp.desktop

cp "$PWD/ico.ico" ~/.local/share/icons
cp "$PWD/ico2.ico" ~/.local/share/icons

read -p "Press enter to continue"