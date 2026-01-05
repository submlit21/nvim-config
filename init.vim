"lua require("options")
set number
set relativenumber
set cursorline
set textwidth=120
set wrap
set linebreak
set wrapmargin=2
set showmode
set showcmd
set encoding=utf-8
set t_Co=256
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=2
set laststatus=2
set ruler
set showmatch
set hlsearch
set incsearch
" set backup
set undofile
" set backupdir=~/.config/nvim/.backup/
set directory=~/.config/nvim/.swp/
set undodir=~/.config/nvim/.undo/
set autochdir
set tags=tags;/
" set visualbell
set history=5000
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full
filetype indent on
" syntax on
set nocompatible
set backspace=indent,eol,start
colorscheme vim

call plug#begin()
Plug 'itchyny/lightline.vim'
" Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'honza/vim-snippets'

Plug 'morhetz/gruvbox'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" template plug
" Plug 'tibabit/vim-templates'

Plug  'natecraddock/sessions.nvim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'
" Plug 'kristijanhusak/vim-dadbod-completion' "Optional

call plug#end()
" lua require("treesitter")
lua require("session-config")
lua require("coc-config")
lua require("nvimTree")


map <F2> :NvimTreeToggle<CR>
" map <F2> :NERDTreeToggle<CR>
" map <F3> :DBUI<CR>

au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})

" python3 from powerlin.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
" set laststus=2

source ~/.config/nvim/config/airline-themes.vim
source ~/.config/nvim/config/NerdCommenter.vim
" source ~/.config/nvim/config/NerdTree.vim
source ~/.config/nvim/config/coc-config.vim
source ~/.config/nvim/config/dadbod.vim
source ~/.config/nvim/dbList.vim

