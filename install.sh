
rm -rf $HOME/.config/nvim
cp -r nvim $HOME/.config/

# Install the packer from https://github.com/wbthomason/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


echo "Open .config/nvim/lua/custom/packer.lua in NVIM"
echo "Run ':so'"
echo "Run ':PackerSync'"
echo "Run ':TSUpdate'"
