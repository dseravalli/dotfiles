runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  execute pathogen#infect('~/.vimbundles/{}')
endif

filetype on
filetype plugin indent on

set t_Co=256
colorscheme jellybeans
syntax on

set nocompatible
set modelines=0

set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ai
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set number
set nowrap
set textwidth=79
set formatoptions=qrn1

if $TMUX == ''
	set clipboard+=unnamed
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:loaded_sleuth = 1

nnoremap bn :bn<CR>
nnoremap bp :bp<CR>
nnoremap ;sp :sp<CR>
nnoremap ;vs :vs<CR>

