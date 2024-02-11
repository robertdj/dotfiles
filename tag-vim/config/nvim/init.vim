set nocompatible            " disable compatibility to old-time vi

set showmatch               " show matching 
set ignorecase              " case insensitive 

" set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed

set number
set relativenumber

set wildmode=longest,list   " get bash-like tab completions

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set clipboard=unnamedplus   " using system clipboard
filetype plugin on

" set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


call plug#begin("~/.vim/plugged")
Plug 'scrooloose/nerdtree' , { 'on': 'NERDTreeToggle' } | Plug 'tyok/nerdtree-ack' , { 'on': 'NERDTreeToggle' }
nmap <silent> <F3> :NERDTreeToggle<CR>

" Support ripgrep
Plug 'duane9/nvim-rg'
"
" Autocompletion 
Plug 'ervandew/supertab'

" Integration with tmux
Plug 'christoomey/vim-tmux-navigator'

" Modern moving commands
Plug 'matze/vim-move'"{{{
let g:move_map_keys = 0

vmap j <Plug>MoveBlockDown
vmap k <Plug>MoveBlockUp
nmap j <Plug>MoveLineDown
nmap k <Plug>MoveLineUp
"}}}

" Fuzzy file searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nmap <Leader>t :Files<CR>
nmap <Leader>b :Buffers<CR>

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

"" Arrange tabular text
" Must come before vim-markdown
Plug 'godlygeek/tabular'

Plug 'ixru/nvim-markdown'

" Chance surrounding symbols
Plug 'tpope/vim-surround'

call plug#end()

