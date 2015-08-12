" ------------------------------------------------------------ 
"  Vundle
" ------------------------------------------------------------ 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$VIMHOME/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Asymptote syntax highligthing
Bundle 'hura/vim-asymptote'

" Vim-latex plugin
Plugin 'robertdj/vim-latex'

" Run scripts within Vim
Plugin 'thinca/vim-quickrun'

" Match tags in HTML
Plugin 'Valloric/MatchTagAlways'

" Commenting code
Plugin 'scrooloose/nerdcommenter'

" File browser in Vim: NERDtree
Plugin 'scrooloose/nerdtree'
Plugin 'tyok/ack.vim'
Plugin 'tyok/nerdtree-ack'

" Control how to paste
Plugin 'vim-scripts/UnconditionalPaste'
Plugin 'vim-scripts/yankstack'

" Tab for completion
Plugin 'ervandew/supertab'

" Chance surrounding symbols
Plugin 'tpope/vim-surround'

" Interpret Unix style date correctly
Plugin 'tpope/vim-speeddating'

" Integration with R
"Plugin 'vim-scripts/Vim-R-plugin'

" Support Julia syntax
Plugin 'JuliaLang/julia-vim'

" Integration with tmux
Bundle 'christoomey/vim-tmux-navigator'

" Visualize undo tree
Plugin 'sjl/gundo.vim'

" Modern moving commands
Plugin 'matze/vim-move'

" Support for Go
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


" ------------------------------------------------------------ 
"  Searching
" ------------------------------------------------------------ 

" Show matching search results as they are typed
set incsearch
set showmatch

" Smart search: 
" All-lowercase string: Case-insensitive search
" Not all-lowercase string: Case-sensitive search
set ignorecase
set smartcase


" ------------------------------------------------------------ 
"  Misc
" ------------------------------------------------------------ 

" Line numbers are relative to current line *and* show current line number
" Requires Vim version >= 7.4
set number
set relativenumber

" Replace globally by default
set gdefault

" Syntax highligthing
syntax on

" Make backspace work like most other apps
set backspace=2 

" make current line underlined
set cursorline

" Shortcut for turning on paste mode (:set paste)
set pastetoggle=<C-p>

" Indentation
set tabstop=4
set shiftwidth=4
set noexpandtab " Do not convert tabs to spaces
set smartindent

" Save file as sudo with "w!!"
cmap w!! w !sudo tee % >/dev/null

" Search for file templates by matching the extension
autocmd BufNewFIle * silent! 0r $VIMHOME/templates/%:e.tpl

" Options for vim-markdown
let g:vim_markdown_folding_disabled=1

" Wrap Git commit messages to 72 columns
" Found at
" http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
autocmd Filetype gitcommit setlocal spell textwidth=72

" Don't wrap mail messages
autocmd Filetype mail setlocal textwidth=0


" ------------------------------------------------------------ 
"  Tab completion
" ------------------------------------------------------------ 

" Tab completion when opening files
set wildmode=longest,list,full
set wildmenu


" ------------------------------------------------------------ 
"  Key remapping
" ------------------------------------------------------------ 

" F1 remap is due to Thinkpad keyboard
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Dollar ($) like on Mac keyboard
inoremap ½ $
nnoremap ½ $
vnoremap ½ $

" Match bracket pairs with TAB
nnoremap <tab> %
vnoremap <tab> %

" Activate NERDTree with F3
nmap <silent> <F3> :NERDTreeToggle<CR>

" Quickrun with F4
nmap <silent> <F4> :QuickRun<CR>

" Gundo with F5
nnoremap <F5> :GundoToggle<CR>

" Remap 'jump to next placeholder' in vim-latex to use C-j with vim-tmux-navigator
imap <C-n> <Plug>IMAP_JumpForward
nmap <C-n> <Plug>IMAP_JumpForward

