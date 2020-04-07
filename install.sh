#!/bin/sh 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install.sh'

echo -n '- Installing brew ... '

echo | /bin/bash -c "$(curl -fsSL $URL_BREW)" > /dev/null

if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi

brew bundle install 

ln -s $DIR/.zsh $HOME/.zsh
ln -s $DIR/.zshrc $HOME/.zshrc
