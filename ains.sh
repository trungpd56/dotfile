ln -s ~/dotfile/atmux ~/.tmux.conf
ln -s ~/dotfile/avim ~/.vimrc
echo source ~/dotfile/zzz >> ~/.bashrc
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# echo source ~/dotfile/znuc >> ~/.bashrc
# echo source ~/dotfile/zkali >> ~/.bashrc
# curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# git clone git://github.com/wting/autojump.git /opt
