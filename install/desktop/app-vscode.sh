# eventually want to replace with non-privacy-invasive-vscode
flatpak install -y flathub com.visualstudio.code

mkdir -p ~/.config/Code/User
cp ~/.local/share/fedomakub/configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
code --install-extension enkia.tokyo-night
