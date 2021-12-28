":sort command
set mouse-=a
set path+=**
set wildmenu
set wildignore+=*.pyc
set wildignore+=*_build/*
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set relativenumber
set hidden
set smartcase
set noswapfile
set ignorecase
set hlsearch
set so=8
"set nobackup
"set nowb
set incsearch
syntax on
colorscheme peachpuff

nnoremap gb :ls<CR>:b<Space>

"=======================
let mapleader = " "

" replace currently selected text with default register
" without yanking it
xnoremap <leader>p "_dP

" map to x-clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

inoremap jk <Esc>
inoremap kj <Esc>
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>

" Close the current buffer
map <leader>bd :bd
" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>k :bnext<cr>
map <leader>j :bprevious<cr>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" Disable highlight when <leader><cr> is pressed
" map <silent> <leader><cr> :noh<cr>

" Autocommand
nmap <leader>w :w!<cr>
nmap <leader>q :wq!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
autocmd FileType yaml setlocal ai ts=2 sw=2 et

"============================================

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'

" Add verb go comment
Plug 'tomtom/tcomment_vim'

" Add object indent ai(line above) ii(no above) aI(both) iI(no both)
Plug 'michaeljsmith/vim-indent-object'

" Add verb change surroud ' "
Plug 'tpope/vim-surround'

Plug 'ajh17/VimCompletesMe'

" Add verb gu to title case
Plug 'christoomey/vim-titlecase'

" Add repeat . to new object indent
Plug 'tpope/vim-repeat'

" It's not working due to WSL enviroment
" Plug 'christoomey/vim-system-copy'

" Automatically set 'shiftwidth' + 'expandtab' (indention) based on file type.
Plug 'tpope/vim-sleuth'

" Modify * to also work with visual selections.
Plug 'nelstrom/vim-visual-star-search'

" Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

"==================================================

nnoremap <C-g> :Rg<Cr>
nnoremap <C-p> :Files<Cr>

"Gruvbox settings
"colorscheme gruvbox
"set background=dark

"vim tab complete or ctrl n
"git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe
autocmd FileType vim let b:vcm_tab_complete = 'vim'

" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Move 1 more lines up or down in normal and visual selection modes.
nnoremap <C-Up> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
vnoremap <C-Up> :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv

" Config for repeat.vim
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

