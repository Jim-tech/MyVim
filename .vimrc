set nocompatible

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'whatot/gtags-cscope.vim'
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'
Plug 'rhysd/vim-clang-format'


" Initialize plugin system
call plug#end()


"Jim's config
filetype on
filetype indent on
filetype plugin on
autocmd FileType c,cpp set number
autocmd FileType c,cpp set cindent
autocmd FileType python set number
autocmd FileType python set smartindent
set autoread
set mouse=a

set number
colorscheme desert
syntax enable
syntax on

set cindent
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set incsearch
set hlsearch
set ruler
set showmatch
set showcmd
set nowrap


" 解决中文乱码
set guifont=Sauce\ Code\ Powerline:h12
set encoding=utf-8
set termencoding=utf-8

" key map configs
let mapleader = ','
let g:mapleader = ','

" NERDTree config
nmap <silent> <leader>n :NERDTreeToggle <CR>
let NERDTreeShowHidden=1

" tagbar config
nmap <silent> <leader>ta :TagbarToggle <CR>

" vim airline config
set laststatus=2
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" let g:Powerline_symbols = 'fancy'

" leaderf config
nmap <silent> <leader>fi :LeaderfFile<CR>
nmap <silent> <leader>ft :LeaderfTag<CR>

" gtags config
set cscopetag
set cscopeprg='gtags-cscope'
let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

" nerdcommenter config -- use the default config
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" tabular config
nmap <leader>a :Tabularize /

" syntastic config
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" clang-format config
nmap <silent> <leader>cf :ClangFormat<cr>
