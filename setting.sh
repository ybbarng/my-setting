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
vim +PlugUpdate +qall
echo 'Install zsh syntax highlighing'
git clone https://github.com/ybbarng/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
echo 'Install zshrc and powerline theme'
git clone https://github.com/ybbarng/zsh.git ~/.zsh
ln -sfv ~/.zsh/zshrc.zsh ~/.zshrc
ln -sfv ~/.zsh/powerline.zsh-theme ~/.oh-my-zsh/themes/powerline.zsh-theme
echo 'Install tmux config and tpm'
git clone https://github.com/ybbarng/tmux.git ~/.tmux
ln -sfv ~/.tmux/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
