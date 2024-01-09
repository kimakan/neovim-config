
rm -rf $HOME/.config/nvim
cp -r nvim $HOME/.config/

# Install the packer from https://github.com/wbthomason/packer.nvim
path_to_packer="${HOME}/.local/share/nvim/site/pack/packer/start"
# packer.nvim"
if test -d $path_to_packer; then
    echo "The directory for the packer exists already"
else
    echo "Creating the directory $path_to_packer"
    mkdir -p $path_to_packer
fi

tmp_path="tmp"

rm -rf "${path_to_packer}/packer.nvim"
git clone --depth 1 https://github.com/wbthomason/packer.nvim "${tmp_path}/packer.nvim"
cp -r "${tmp_path}/packer.nvim" "${path_to_packer}/packer.nvim"
rm -rf ${tmp_path}


echo "Open ${HOME}/.config/nvim/lua/custom/packer.lua in NVIM"
echo "Run ':so'"
echo "Run ':PackerSync'"
echo "Run ':TSUpdate'"
