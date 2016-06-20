set number
set autochdir
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set nocompatible
set magic
set fillchars+=vert:█
color default

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let $PYTHONPATH="/usr/lib/python3.5/site-packages"

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tommcdo/vim-exchange'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'tbastos/vim-lua'

call vundle#end()

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

filetype off
syntax on

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
highlight SpellBad ctermbg=darkred guibg=darkred
highlight SpellCap ctermbg=darkred guibg=darkred

" NERDTree configuration
let NERDTreeShowHidden=1

" UltiSnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-o>"
let g:UltiSnipsJumpBackwardTrigger="<c-i>"


" == Custom keybindings
let mapleader='m'
" map <C-t> :tabnew<CR>:Startify<CR>
map <C-w> :q<CR>
map <C-x> :tabn<CR>
map <C-z> :tabp<CR>

" Split navigation
map <S-h> :wincmd h<CR>
map <S-j> :wincmd j<CR>
map <S-k> :wincmd k<CR>
map <S-l> :wincmd l<CR>
" I needed capital J for split movement
nmap w :join<CR>

" Capital U = redo
nmap <S-u> <C-r>

" Line-moving superpowers
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Life-changers
map <space> :
imap kj <ESC>
vmap vkj <ESC>

" Disable Arrow keys in normal mode
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

" Plugin and File Triggers
nnoremap <Leader>e :NERDTreeTabsToggle<CR>
nnoremap vimr :tabnew ~/.vimrc<CR>
nnoremap <Leader>xr :tabnew ~/.Xresources<CR>
nnoremap <Leader>tag :Tagbar<CR>:wincmd l<CR>

" Quick replace-all
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/


" Color Scheme Modifications
highlight LineNr ctermfg=darkgrey
highlight VertSplit ctermbg=black
