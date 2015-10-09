let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:loaded_sleuth = 1

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  execute pathogen#infect('~/.vimbundles/{}')
endif

set t_Co=256
syntax on
set background=dark
colorscheme jellybeans

filetype plugin indent on

set nocompatible
set modelines=0
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set number
set list
set nowrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=+1
set clipboard=unnamed
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set backupdir=~/.vim/backups
set undodir=~/.vim/undo

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['jshint']

" Bindings
nnoremap bn :bn<CR>
nnoremap bp :bp<CR>
nnoremap ;sp :sp<CR>
nnoremap ;vs :vs<CR>
nnoremap tc :tabnew<CR>
nnoremap tn :tabnext<CR>
