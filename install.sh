#!/bin/sh 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install.sh'

echo 'Installing brew ...'

echo | /bin/bash -c "$(curl -fsSL $URL_BREW)" > /dev/null

if [ $? -eq 0 ]; then echo 'Brew Installed'; else echo 'Failed to install Brew' && exit 1; fi

echo "Installing software and packages"
brew bundle install 

ln -s $DIR/.zsh $HOME/.zsh
ln -s $DIR/.zsh/.zshrc $HOME/.zshrc

exit 0