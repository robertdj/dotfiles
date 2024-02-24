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
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled=1
imap <Plug> <Plug>Markdown_Jump

" Plug 'quarto-dev/quarto-nvim'

" Chance surrounding symbols
Plug 'tpope/vim-surround'
autocmd FileType c,cpp setlocal commentstring=//\ %s

" Commenting code
Plug 'tpope/vim-commentary'

" Language Server Protocol
Plug 'neovim/nvim-lspconfig'
" Plug 'dense-analysis/ale'
" let g:ale_linters={
" \ 'python': ['pyright'],
" \}

call plug#end()

lua require'lspconfig'.pyright.setup {on_attach = on_attach,settings = {pyright = {autoImportCompletion = true,},python = {analysis = {autoSearchPaths = true,diagnosticMode = 'openFilesOnly',useLibraryCodeForTypes = true,typeCheckingMode = 'off'}}}}

" disable compatibility to old-time vi
set nocompatible

" Show matching search results as they are typed
set incsearch
set showmatch

" Smart search: 
" All-lowercase string: Case-insensitive search
" Not all-lowercase string: Case-sensitive search
set ignorecase
set smartcase
set hlsearch

" Disable all conceal
set conceallevel=0

" Shortcut for turning on paste mode (:set paste)
set pastetoggle=<F12>

" Replace globally by default
set gdefault

" Indentation
set tabstop=4
" set softtabstop=4
set shiftwidth=4

" Convert tabs to spaces
set expandtab
set smartindent

" indent a new line the same amount as the line just typed
set autoindent

" Line numbers are relative to current line *and* show current line number
set number
set relativenumber

" Control tab completion
set wildmode=longest,list

"allow auto-indenting depending on file type
filetype plugin indent on

" syntax highlighting
syntax on

" using system clipboard
" set clipboard=unnamedplus
filetype plugin on

" disable creating swap file
set noswapfile
"
" Directory to store backup files.
set backupdir=~/.cache/vim

