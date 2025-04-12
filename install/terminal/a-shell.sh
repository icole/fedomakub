# Configure the bash shell using Fedomakub defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/fedomakub/configs/bashrc ~/.bashrc

# Load the PATH for use later in the installers
source ~/.local/share/fedomakub/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Fedomakub defaults
cp ~/.local/share/fedomakub/configs/inputrc ~/.inputrc
