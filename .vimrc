"" VIMRC Maximilian1064, C/C++ development intended 

"" VUNDLE & PLUGINS 
set nocompatible " vi nocompatible
filetype off                 " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" All Plugins put after this line

Plugin 'VundleVim/Vundle.vim' 
" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
" NERDTree
" Plugin 'nathanaelkane/vim-indent-guides'
" indent display, install colorscheme first
Plugin 'valloric/youcompleteme'
" compeletion with C/C++ semantic support
" Plugin 'scrooloose/syntastic'
" syntax checking 
" Plugin 'tpope/vim-fugitive'
" Git wrapper, git command from inside vim
Plugin 'scrooloose/nerdcommenter'
" orgasmic commenting, exactly what I need
Plugin 'airblade/vim-gitgutter'
" show changes on staged files, - + ~
Plugin 'yggdroot/indentline'
" show indent
" Plugin 'octol/vim-cpp-enhanced-highlight'
" as the name indicated
"
Plugin 'lervag/vimtex'
" vimtex 
Plugin 'Conque-GDB'
" GDB integration
Plugin 'flazz/vim-colorschemes'
" Color Schemes

Plugin 'rust-lang/rust.vim'
" RUST

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" COMMON SETTINGS
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
syntax on
set number


autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).


autocmd FileType text setlocal textwidth=88
" For all text files set 'textwidth' to 88 characters.

autocmd FileType python setlocal tabstop=2 shiftwidth=2
autocmd FileType python3 setlocal tabstop=2 shiftwidth=2
" Special settings for python 

"" SEARCHING 
set hlsearch            " highlight search pattern
set incsearch		" do incremental searching
nnoremap <CR> :noh<CR><CR>
" temporaily disable highlighting for current search by typing <CR>
set ignorecase          " case insensitive searching
set smartcase           


"" LINE FORMATTING
set nowrap
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
"set softtabstop=4


"" NERDTREE OPTIONS

" autocmd vimenter * NERDTree
" automatically open NERDTree when starting VIM



"" YOUCOMPLETEME OPTIONS

" let g:ycm_auto_trigger = 1
let g:ycm_show_diagnostics_ui = 0
" let g:ycm_complete_in_strings = 0
" let g:ycm_complete_in_comments = 1
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
set completeopt=menuone
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_server_python_interpreter = '/usr/bin/python3.5'


"" VIM-GITGUTTER OPTIONS

set updatetime=250


"" INDENTLINE SETTING

" let g:indentLine_enabled = 0


"" COLOR SCHEMES



"" SPECIAL KEY MAPPINGS 

"" FOR LATEX

let g:tex_conceal = ""
let g:tex_flavor = "latex"

"" COLOR SCHEMES
"colorscheme Benokai
set t_Co=256
