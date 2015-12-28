" ------------------------------------------------------------ 
"  Vundle
" ------------------------------------------------------------ 

set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plug
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'

" Markdown
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

" Arrange tabular text
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'

" Asymptote syntax highligthing
Plug 'hura/vim-asymptote'

" Vim-latex plugin
Plug 'robertdj/vim-latex'
let g:tex_flavor='latex'
" Remap 'jump to next placeholder' in vim-latex to use C-j with vim-tmux-navigator
imap <C-n> <Plug>IMAP_JumpForward
nmap <C-n> <Plug>IMAP_JumpForward

" Support for Go
Plug 'fatih/vim-go'

" Match tags in HTML
Plug 'Valloric/MatchTagAlways'

" Commenting code
Plug 'tpope/vim-commentary'

" Run scripts within Vim
Plug 'thinca/vim-quickrun'
nmap <silent> <F4> :QuickRun<CR>

" File browser in Vim: NERDtree
Plug 'scrooloose/nerdtree'
Plug 'tyok/ack.vim'
Plug 'tyok/nerdtree-ack'
nmap <silent> <F3> :NERDTreeToggle<CR>

" Control how to paste
Plug 'vim-scripts/UnconditionalPaste'
Plug 'vim-scripts/YankRing.vim'
" Disable cycling through paste ring
let g:yankring_replace_n_pkey = 0
let g:yankring_replace_n_nkey = 0
nnoremap <silent> <F10> :YRShow<CR> 

" Tab for completion
Plug 'ervandew/supertab'

" Chance surrounding symbols
Plug 'tpope/vim-surround'

" Interpret Unix style date correctly
Plug 'tpope/vim-speeddating'

" Integration with R
Plug 'jalvesaq/R-Vim-runtime'

" Support Julia syntax
Plug 'JuliaLang/julia-vim'
autocmd Filetype julia setlocal textwidth=72

" Integration with tmux
Plug 'christoomey/vim-tmux-navigator'

" Visualize undo tree
Plug 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>

" Modern moving commands
Plug 'matze/vim-move'"{{{
let g:move_map_keys = 0

vmap j <Plug>MoveBlockDown
vmap k <Plug>MoveBlockUp
nmap j <Plug>MoveLineDown
nmap k <Plug>MoveLineUp
"}}}

" Better Vim motion
Plug 'easymotion/vim-easymotion'
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Fuzzy file searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Better status line
Plug 'bling/vim-airline'
set laststatus=2
" let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'

call plug#end()


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

" Highlight current line (number)
" set cursorline
hi CursorLineNR cterm=NONE ctermbg=black ctermfg=white

" Shortcut for turning on paste mode (:set paste)
set pastetoggle=<C-p>

" Indentation
set tabstop=4
set shiftwidth=4
set noexpandtab " Do not convert tabs to spaces
set smartindent

" Save file as sudo with "w!!"
cmap w!! w !sudo tee % >/dev/null

" Source the vimrc file after saving it (from vimcasts.org)
if has("autocmd")
	autocmd! bufwritepost ~/.vimrc source $MYVIMRC
endif

" Search for file templates by matching the extension
autocmd BufNewFIle * silent! 0r $VIMHOME/templates/%:e.tpl

" Wrap Git commit messages to 72 columns
" Found at
" http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
autocmd Filetype gitcommit setlocal spell textwidth=72

" Don't wrap mail messages
autocmd Filetype mail setlocal textwidth=0

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

