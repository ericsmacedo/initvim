" Vundle commands
call plug#begin('~/.config/nvim/plugged')

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plug 'gmarik/vundle'

"Status Bar
Plug 'bling/vim-airline'

"Status Bar themes
Plug 'vim-airline/vim-airline-themes'

" Git integration
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'

" Fuzzy finder
Plug 'kien/ctrlp.vim'

" Nerd tree
Plug 'scrooloose/nerdtree'

" Align text and patterns
Plug 'godlygeek/tabular'

" Indent line guides
Plug 'nathanaelkane/vim-indent-guides'

" Super Tab
Plug 'ervandew/supertab'

"Diff tool
Plug 'will133/vim-dirdiff'

" Multiple cursor
Plug 'terryma/vim-multiple-cursors'

" python autocompletion and help
Plug 'davidhalter/jedi-vim'

" Snippets
" Plug 'honza/vim-snippets'
" Plug 'sirver/ultisnips'
" Asynchronous Lint Engine ALE
Plug 'w0rp/ale'

" Code completion
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

" Vim hardtime keeps you from repeating the same keys. Learn vim the hard way!
Plug 'takac/vim-hardtime'

" -----------------------------------------------------------------------------
" Colorschemes 
" -----------------------------------------------------------------------------
" gruvbox
Plug 'morhetz/gruvbox'

" dracula
Plug 'dracula/vim'

" Space gray
Plug 'ajh17/spacegray.vim'

" iceberg
Plug 'cocopon/iceberg.vim'

" solarized
Plug 'lifepillar/vim-solarized8'


" system verilog
Plug 'nachumk/systemverilog.vim'

" add comments. Use gcc to comment a line and gc to complete blocks of code
Plug 'tpope/vim-commentary'

Plug 'iamcco/markdown-preview.nvim'
" :source %
" :Plug Install
" :call mkdp#util#install()
"
call plug#end()

" Now we can turn our filetype functionality back on
filetype plugin indent on

"===================================================================
" Plugins settings 
"===================================================================

" ALE (Asynchronous Lint Engine)
let b:ale_linters = ['pylint'] ", 'flake8']
let b:ale_fixers = ['autopep8', 'yapf', 'trim_whitespace', 'remove_trailing_lines']

" Deoplete
"let g:deoplete#enable_at_startup = 1
" COQ now
let g:coq_settings = {'auto_start': v:true}


" NERD TREE plugin
map <C-n> :NERDTreeToggle<CR>

" Indent guides
let g:indent_guides_enable_on_vim_startup = 0

" " better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" airline
let g:airline#extensions#tabline#enabled = 1

"" Ctrl-P: ingore xsim directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip   " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  'xsim.dir',
  \ }

"===================================================================
"VIM CONFIGURATION 
"===================================================================
" Specify which python environment is to be used with neovim
let g:python3_host_prog = expand('~/miniconda3/bin/python3.9')

set number                " show line numbers
set relativenumber

set mouse=a               " enable mouse use
set ttimeoutlen=50
set colorcolumn=80
"set autochdir

set softtabstop=4         " number of spaces in tab when editing.
set tabstop=4             " number of spaces in tab when editing
set expandtab             " tabs are spaces
set shiftwidth=4          " show existing tab with 4 spaces width
set conceallevel =0

set incsearch             " search as characters are entered
set hlsearch              " highlight matches

set clipboard=unnamed     " copy from system clipboard

syntax enable
filetype indent on        " load filetype-specific indent files

set showcmd               " show command in bottom bar
set wildmenu

nnoremap <leader><space> :nohlsearch<CR>  " turn off search highlight

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

autocmd FileType make setlocal noexpandtab " use tabs instead of spaces for makefiles

set scrolloff=4          " Show at least 4 lines

set encoding=utf-8

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim tabs
nnoremap <F6> :tabprevious<CR>
nnoremap <F7> :tabnext<CR>

"===================================================================
" CUSTOM INDENTATION
"===================================================================
"" Python indetation
au BufNewFile,BufRead *.py
            \ set tabstop=4 |      
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix 

"" SystemVerilog, Verilog, indetation
au BufNewFile,BufRead *.sv
            \ set tabstop=4 |      
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix 

au BufNewFile,BufRead *.cpp
            \ set tabstop=4 |      
            \ set softtabstop=4 |
            \ set shiftwidth=4 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix 

au BufNewFile,BufRead *.yml
            \ set tabstop=2 |      
            \ set softtabstop=2 |
            \ set shiftwidth=2 |
            \ set expandtab |
            \ set autoindent |
            \ set fileformat=unix 

" colorscheme
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark= 'hard'

colorscheme gruvbox
set background=dark
set termguicolors

"  Leader key +b will open the list of buffers and write buffer<space>, so the 
"  user can select a different buffer easily
nnoremap <Leader>b :buffers<CR>:buffer<Space>

set shell=/bin/bash
tnoremap <Esc> <C-\><C-n>

"nnoremap <F6> :source ~/Templates/header_sv.txt<CR> 
