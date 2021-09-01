set nocompatible

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'

" Markdown
Plug 'reedes/vim-pencil'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/limelight.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'mracos/mermaid.vim'


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

" workaround backspace not work
set backspace=2

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
set guifont="Sauce Code Powerline:h12"
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
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" switch buffer
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

" leaderf config
nmap <silent> <leader>fi :Leaderf file<CR>
nmap <silent> <leader>ft :Leaderf gtags<CR>
nmap <silent> <leader>ff :Leaderf function<CR>
nmap <silent> <leader>tg :Leaderf gtags --update<CR>
let g:Lf_Gtagslabel = 'native'
let g:Lf_Gtagsconf = expand('~/.globalrc')
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_PopupPosition = [0xFFFFFFFF, 0]
let g:Lf_PopupColorscheme = 'default'
let g:Lf_RootMarkers = ['.root']
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_GtagsAutoUpdate = 1
let g:Lf_GtagsSkipUnreadable = 1
let g:Lf_GtagsStoreInRootMarker = 1
let g:Lf_AutoResize = 1
let g:Lf_MaxCount = 10000000
let g:Lf_PreviewResult = { 'gtags': 1 }
nmap <leader>csd :Leaderf gtags -d <C-R>=expand("<cword>")<CR><CR>
nmap <leader>csr :Leaderf gtags -r <C-R>=expand("<cword>")<CR><CR>
nmap <leader>css :Leaderf gtags -s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>csg :Leaderf gtags -g <C-R>=expand("<cword>")<CR><CR>


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
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" clang-format config
nmap <silent> <leader>cf :ClangFormat<cr>
let g:clang_format#code_style = "google"
let g:clang_format#style_options = {
			\ 'Language'                     : 'Cpp',
			\ 'BasedOnStyle'                 : 'Google',
			\ 'AlignConsecutiveMacros'       : 'true',
			\ 'AlignConsecutiveAssignments'  : 'true',
			\ 'AlignConsecutiveBitFields'    : 'true',
			\ 'AlignConsecutiveDeclarations' : 'true',
			\ 'AlignTrailingComments'        : 'true',
			\ 'BreakBeforeBraces'        		 : 'Linux',
			\ }

" Limelight
let g:limelight_conceal_ctermfg=244

" Markdown Preview
let g:mkdp_auto_close=0
let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='~/.github-markdown.css'
nmap <silent> <leader>mdp :MarkdownPreview<CR>
nmap <silent> <leader>mdps :MarkdownPreviewStop<CR>
