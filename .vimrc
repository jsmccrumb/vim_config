" use , as <leader>
let mapleader = ","

" run pathogen
execute pathogen#infect()

" some recomendations from pathogen...
syntax on
filetype plugin indent on

" NERDTREE stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" useful defaults
set ruler
set hlsearch
set incsearch
set showmatch
set noerrorbells
set novisualbell

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
try
  colorscheme peaksea
catch
  try
    colorscheme desert
  catch
  endtry
endtry
set background=dark

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si
set number

" turn off highlights on leader enter
map <silent> <leader><cr> :noh<cr>

" statusline stuff
set laststatus=2

set statusline=%f                                " filename                                                                                                                                                  
set statusline+=%m                               " modified flag
set statusline+=%r                               " readonly flag
set statusline+=\                                " spacer                                                                                                                                            
set statusline+=%4l/%-4L                         " line / lines minwidth 4
set statusline+=%=                               " switch to right side
set statusline+=%{FugitiveStatusline()}          " indicator including the current branch and the currently edited file's commit


" vim-javascript
let g:javascript_plugin_jsdoc = 1
