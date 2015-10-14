set nocompatible        " Needed for a lot of things

" Needed for vundle
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""                               Bundles                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" setup vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'gmarik/Vundle.vim'        " Package manager
    "Plugin 'Valloric/YouCompleteMe'   " Tab completion
"    Plugin 'scrooloose/nerdtree'      " Plugin used for exploring files / directories
"    Plugin 'scrooloose/nerdcommenter' " Plugin used for commenting out blocks of text easily
     Plugin 'airblade/vim-gitgutter'   " Plugin that shows git line status on sidebar
"    Plugin 'kien/ctrlp.vim'           " Fuzzy finder for files, buffers, mru and tags...
"    Plugin 'rking/ag.vim'             " Plugin that allows us to use Ag in vim

    "Plugin 'bling/vim-airline'        " Statusbar plugin
    Plugin 'derekwyatt/vim-scala'     " Scala
    Plugin 'bronson/vim-trailing-whitespace'
"    Plugin 'tpope/vim-fugitive'       " :Git commands

    call vundle#end()
filetype plugin indent on
syntax on
set number
set showcmd

set wildmenu
set showmatch
set lazyredraw
set incsearch
set hlsearch

set ignorecase          " Ignore case when searching
set smartcase           " Ignore case if pattern lowercase, otherwise sensitive
set autoindent          " on new lines, match indent of previous line
set copyindent          " Copy the previous undentation on autoindenting
set cindent             " smart indenting for c-like code

set smarttab            " Insert tabs on the start of a like according to shift width
set magic               " change the way backslashes are used in search patterns

set softtabstop=4       " Tabs are 4 spaces
set shiftwidth=4        " Set the number of spaces used for autoindenting
set shiftround          " Use multiples of shiftwidth when indenting using > or <
" set expandtab           " Expand a tab into spaces

set scrolloff=2     " 2 lines above/below cursor when scrolling
set showmatch       " show matching bracket (briefly jump)
set matchtime=2     " reduces matching paren blink time from the 5[00]ms def
set showcmd         " Shows what you are typing as a command
set ruler           " show cursor position in status bar
set title           " show file in titlebar
" set cursorline      " highlights the current line

set relativenumber
set noexpandtab
set softtabstop=8

"instead of set noswapfile, let's do this
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set autoread " refresh file changed on disc
set mouse=a " select text via mouse without selecting numbers

set pastetoggle=<F2> " Sets paste mode

" set iskeyword+=_,$,@,%,# " these chars don't create word breaks

" set a line at 80 columns
if (exists('+colorcolumn'))
    set colorcolumn=100
    highlight ColorColumn ctermbg=9
endif

" 12<Enter> to go to line 12
" <Enter> to go to end of file
" <Backspace> to go to beginning of file
nnoremap <CR> G
"nnoremap <BS> gg

"Enter and leave insert mode with shift-space
inoremap <S-Space> <Esc>
nnoremap <S-Space> i

" Leader = ,
:let mapleader = ","

"Pasted blindly from Brandon's vimrc
"""""""""""""""""""""

"EDITOR SETTING


nnoremap <up> gk
nnoremap <down> gj
inoremap <A-j> <C-o>j

if has('unnamedplus')
  " By default, Vim will not use the system clipboard when yanking/pasting to
  " the default register. This option makes Vim use the system default
  " clipboard.
  " Note that on X11, there are _two_ system clipboards: the "standard" one, and
  " the selection/mouse-middle-click one. Vim sees the standard one as register
  " '+' (and this option makes Vim use it by default) and the selection one as
  " '*'.
  " See :h 'clipboard' for details.
  set clipboard=unnamedplus,unnamed
else
  " Vim now also uses the selection system clipboard for default yank/paste.
  set clipboard+=unnamed
endif

"DISPLAY SETTINGS
set t_Co=256
colorscheme desert
" colorscheme molokai " sets the colorscheme
"set background=dark " enable for dark terminals
highlight Normal ctermbg=none
highlight NonText ctermbg=none

