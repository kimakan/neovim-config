rm -rf $HOME/.config/nvim
rm -rf $HOME/.local/share/nvim
rm -rf $HOME/.local/state/nvim
rm -rf $HOME/.cache/nvim

git clone https://github.com/LazyVim/starter $HOME/.config/nvim

rm -rf $HOME/.config/nvim/.git

nvim
