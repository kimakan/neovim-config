#!/bin/bash

sudo snap install nvim --classic

if ! command -v npm &> /dev/null
then
    sudo apt install curl
fi

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


cp -r config/nvim ~/.config/

npm install -g pyright
npm install -g typescript-language-server


mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer

# add ./local/bin to PATH

# install go 
# snap install go --classic
# add ~./go/bin to PATH

go install golang.org/x/tools/gopls@latest


