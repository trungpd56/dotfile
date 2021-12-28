ln -s ~/dotfile/atmux ~/.tmux.conf
echo source ~/dotfile/abashrc >> ~/.bashrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install
source ~/.bashrc

# .gitignore, .ignore (application agnostic) or .rgignore (ripgrep specific) file.
# https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md
sudo apt update
sudo apt install ripgrep dos2unix autojump

echo .wine > ~/.rgignore
echo "source /usr/share/autojump/autojump.sh" >> ~/.bashrc

