let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:loaded_sleuth = 1
let g:loaded_spacejam = 1
let g:jsx_ext_required = 0
let mapleader = ","
let g:rspec_runner = "os_x_iterm"

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  execute pathogen#infect('~/.vimbundles/{}')
endif

set t_Co=256
syntax on
colorscheme jellybeans

filetype plugin indent on

set softtabstop=2
set shiftwidth=2
set expandtab

" set winheight=30
" set winminheight=5

set nocompatible
set modelines=0
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
set colorcolumn=120
set clipboard=unnamed
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set undodir=~/.vim/undo

set backup
set writebackup
set backupdir=~/.vim/backups

set backupcopy=yes

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" Bindings
nnoremap bn :bn<CR>
nnoremap bp :bp<CR>
nnoremap ;sp :sp<CR>
nnoremap ;vs :vs<CR>
nnoremap tc :tabnew<CR>
nnoremap tn :tabnext<CR>
:imap jj <Esc>
" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

function! DeleteInactiveBufs()
    "From tabpagebuflist() help, get a list of all buffers in all tabs
    let tablist = []
    for i in range(tabpagenr('$'))
        call extend(tablist, tabpagebuflist(i + 1))
    endfor

    "Below originally inspired by Hara Krishna Dara and Keith Roberts
    "http://tech.groups.yahoo.com/group/vim/message/56425
    let nWipeouts = 0
    for i in range(1, bufnr('$'))
        if bufexists(i) && !getbufvar(i,"&mod") && index(tablist, i) == -1
        "bufno exists AND isn't modified AND isn't in the list of buffers open in windows and tabs
            silent exec 'bwipeout' i
            let nWipeouts = nWipeouts + 1
        endif
    endfor
    echomsg nWipeouts . ' buffer(s) wiped out'
endfunction
command! Bdi :call DeleteInactiveBufs()

set exrc
set secure
