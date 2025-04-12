cat <<EOF >~/.local/share/applications/Fedomakub.desktop
[Desktop Entry]
Version=1.0
Name=Fedomakub
Comment=Fedomakub Controls
Exec=alacritty --config-file /home/$USER/.local/share/fedomakub/defaults/alacritty/pane.toml --class=Fedomakub --title=Fedomakub -e fedomakub
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/fedomakub/applications/icons/Omakub.png
Categories=GTK;
StartupNotify=false
EOF
