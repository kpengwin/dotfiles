set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files

"nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set hlsearch              " Continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.

set backspace=indent,eol,start

set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
"set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

set mouse=a

set showtabline=2
set noshowmode

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

execute pathogen#infect()
call pathogen#helptags()
"let g:airline_theme='badwolf'

map <silent> <C-n> :NERDTreeToggle<CR>
"colorscheme badwolf

let g:airline_powerline_fonts = 0
"autocmd vimenter * NERDTree


"inoremap {<CR> {<CR>}<Esc>ko
"inoremap (<CR> (<CR>)<Esc>ko
"inoremap (<space> ()<Esc>i
"inoremap [<space> []<Esc>i
"inoremap {<space> {}<Esc>i
"inoremap <<space> <><Esc>i

set sm
