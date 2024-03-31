#!/bin/bash

packages="zoxide rename neovim stow curl tmux tree"
os=$(uname -s)

if [[ $os == "Linux" ]]; then
    config="bashrc"
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt update
    sudo apt -y install $packages
elif [[ $os == "Darwin" ]]; then
    config="zshrc"
    brew install --HEAD neovim
    brew install $packages
else
    echo "OS is not recognized."
    exit 1
fi

STOW_FOLDERS="tmux,nvim,gitconfig"
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g"); do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done

grep 'zoxide' ~/.${config} || echo 'eval "$(zoxide init bash)"' >> ~/.${config}
grep 'myalias' ~/.${config} || echo 'source ~/dotfile/myalias' >> ~/.${config}

# Install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
# nvm install stable --reinstall-packages-from=current
# sudo apt install python3.10-venv xclip python3-pip updog
# Install git-delta


