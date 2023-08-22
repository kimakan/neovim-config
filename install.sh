
rm -rf $HOME/.config/nvim
cp -r nvim $HOME/.config/

# Install the packer from https://github.com/wbthomason/packer.nvim
path_to_packer="${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim"
tmp_path="/tmp/packer.nvim"

rm -rf ${path_to_packer}
git clone --depth 1 https://github.com/wbthomason/packer.nvim ${tmp_path}
cp -r ${tmp_path} ${path_to_packer}
rm -rf ${tmp_path}


echo "Open ${HOME}/.config/nvim/lua/custom/packer.lua in NVIM"
echo "Run ':so'"
echo "Run ':PackerSync'"
echo "Run ':TSUpdate'"
