#!/bin/sh

echo 'Install prerequisites'
sudo apt-get install git vim zsh wget tmux

echo 'Install git configs'
git clone https://github.com/ybbarng/git-config.git ~/.git-config
ln -sfv ~/.git-config/gitconfig ~/.gitconfig

echo 'Install oh-my-zsh'
#https://github.com/robbyrussell/oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo 'Install vim settings'
git clone https://github.com/ybbarng/vim.git ~/.vim
ln -sfv ~/.vim/rc/vimrc ~/.vimrc
cd .vim
git submodule init
git submodule update
cd bundle/Vundle.vim
git checkout master
git pull origin master
vim +PluginUpdate +qall
cd ~
echo 'Install zsh syntax highlighing'
git clone https://github.com/ybbarng/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
echo 'Install zshrc and powerline theme'
git clone https://github.com/ybbarng/zsh.git ~/.zsh
ln -sfv ~/.zsh/zshrc.zsh ~/.zshrc.zsh
ln -sfv ~/.zsh/powerline.zsh-theme ~/.oh-my-zsh/themes/powerline.zsh-theme
echo 'Install zshrc and powerline theme'
git clone https://github.com/ybbarng/tmux.git ~/.tmux
ln -sfv ~/.tmux/tmux.conf ~/.tmux.conf
