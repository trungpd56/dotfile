#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt -y install zoxide python3-pip rename neovim stow curl tmux tree xclip
pip install updog

# Tmux log - Prefix + Alt-Shift-P
rm -rf ~/tmux-logging
git clone https://github.com/tmux-plugins/tmux-logging ~/.config/tmux-logging

STOW_FOLDERS="tmux,nvim"
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done

# grep myenv ~/.bashrc || echo "source ~/.dotfile/myenv" >> ~/.bashrc
grep 'zoxide' ~/.bashrc || echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
grep 'myalias' ~/.bashrc || echo 'source ~/dotfile/myalias' >> ~/.bashrc

# install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
# nvm install stable --reinstall-packages-from=current
# sudo apt install python3.10-venv
# install git-delta
