" Setup from NeuralNine on youtube

:set number
:set relativenumber
:set clipboard=unnamedplus
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab
:set softtabstop=4
:set background=dark
:set mouse=a
:set colorcolumn=80
:set cursorline
:set nowrap
:set list

call plug#begin()

Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' "For commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/tomasiser/vim-code-dark'
Plug 'https://github.com/ryanoasis/vim-terminal'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/numToStr/FTerm.nvim'
Plug 'https://github.com/windwp/nvim-autopairs'
Plug 'https://github.com/github/copilot.vim'


" attempt for autocompletion
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
Plug 'https://github.com/hrsh7th/cmp-buffer' " LSP source for nvim-cmp
Plug 'https://github.com/hrsh7th/cmp-path' " LSP source for nvim-cmp
Plug 'https://github.com/hrsh7th/cmp-cmdline' " LSP source for nvim-cmp

Plug 'https://github.com/L3MON4D3/LuaSnip' " Snippets plugin
Plug 'https://github.com/saadparwaiz1/cmp_luasnip' " Snippets source for nvim-cmp

call plug#end()


nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_width=50
" tags for rust
let g:rust_use_custom_ctags_defs = 0  " if using rust.vim
let g:tagbar_type_rust = {
  \ 'ctagsbin' : '/usr/local/bin/ctags',
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'C:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }

let g:tagbar_sort=0
:set completeopt-=preview

let g:gruvbox_contrast_dark = 'hard'
:colorscheme gruvbox

let g:NERDTreeDirArrowExbandable="+"
let g:NERDTreeDirArrowCillapsible="~"

set completeopt=menu,menuone,noselect
:lua require('init')

