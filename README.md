### My config for Neovim


#### How to install NVIM

 - Install dependencies if required

 ```bash
sudo apt-get install ninja-build gettext cmake unzip curl
```

 - Clone Neovim

 ```bash
git clone https://github.com/neovim/neovim.git
cd neovim 
```

 - Choose the preferred version and install

 ```bash
git checkout vX.X.X
make CMAKE_BUILD_TYPE=Release
sudo make install 
```

#### Install LazyVim

```bash
./install-lazyvim.sh
```

The script will start `nvim` in order to complete the installation. After it's complete, close `nvim`.


#### Install Plugins and Config
```bash
./install-plugins.sh
```

Again, the script will start `nvim` to complete the installation.
```
```
