"VUNDLE
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'gmarik/vundle'
Plugin 'srcery-colors/srcery-vim'
Plugin 'abnt713/vim-hashpunk'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic.git'
Plugin 'vim-scripts/Gundo.git'
Plugin 'vim-scripts/vimwiki'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on

" OPTIONS
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set runtimepath+=~/.vim_runtime
syntax enable
set number
set hidden
set history=100
let base16colorspace=256
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set autowrite
set scrolloff=10
set sidescrolloff=15
set sidescroll=1
set sw=4
set clipboard=unnamedplus
set hidden
set ffs=unix,dos,mac

if v:version > 703
  set breakindent
endif
"let &showbreak='↳ '

" APPEARANCE
colorscheme hashpunk
set showcmd
set shortmess=atI
set ruler
set display+=lastline
hi normal ctermbg=235
hi SpellBad ctermbg=none
hi SpellCap ctermbg=none

" KEYBINDS
map <leader>rr :source ~/.vimrc<CR>
set undofile
set undodir=/home/ray/.vim/undodir
set undolevels=1000
set undoreload=10000

" VIMTEX
let g:vimtex_view_general_viewer = 'zathura'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
