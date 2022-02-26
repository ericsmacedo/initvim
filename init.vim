" Vundle commands
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

"Status Bar
Plugin 'bling/vim-airline'

"Status Bar themes
Plugin 'vim-airline/vim-airline-themes'

" Git integration
"Plugin 'tpope/vim-fugitive'
"Plugin 'airblade/vim-gitgutter'

" Fuzzy finder
Plugin 'kien/ctrlp.vim'

" Nerd tree
Plugin 'scrooloose/nerdtree'

" Align text and patterns
Plugin 'godlygeek/tabular'

" Indent line guides
Plugin 'nathanaelkane/vim-indent-guides'

" Super Tab
Plugin 'ervandew/supertab'

"Diff tool
Plugin 'DirDiff.vim'

" Multiple cursor
Plugin 'terryma/vim-multiple-cursors'

" python autocompletion and help
Plugin 'davidhalter/jedi-vim'

" Snippets
" Plugin 'honza/vim-snippets'
" Plugin 'sirver/ultisnips'
" Asynchronous Lint Engine ALE
Plugin 'w0rp/ale'

" Code completion
"Plugin 'valloric/youcompleteme'

" Matlab Editing
Plugin 'MatlabFilesEdition'

" Vim hardtime keeps you from repeating the same keys. Learn vim the hard way!
Plugin 'takac/vim-hardtime'

" -----------------------------------------------------------------------------
" Colorschemes 
" -----------------------------------------------------------------------------
" gruvbox
Plugin 'morhetz/gruvbox'

" dracula
Plugin 'dracula/vim'

" Space gray
Plugin 'ajh17/spacegray.vim'

" iceberg
Plugin 'cocopon/iceberg.vim'

" solarized
Plugin 'lifepillar/vim-solarized8'


" system verilog
Plugin 'nachumk/systemverilog.vim'

" add comments. Use gcc to comment a line and gc to complete blocks of code
Plugin 'tpope/vim-commentary'

Plugin 'iamcco/markdown-preview.nvim'
" :source %
" :PluginInstall
" :call mkdp#util#install()

" Now we can turn our filetype functionality back on
filetype plugin indent on



" Plugins settings -------------------------------------------

" Indent guides
let g:indent_guides_enable_on_vim_startup = 0

" snippets
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" Specify which python environment is to be used with neovim
" let g:python3_host_prog = expand('~/.python_env/neovim_env/bin/python3.7')

"VIM CONFIGURATION -------------------------------------------
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

"===================================================================
" INDENT LINE GUIDES 
"===================================================================
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level =2
"let g:indent_guides_guide_size =1

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" colorscheme
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark= 'hard'

colorscheme gruvbox
set background=dark
set termguicolors
"let g:solarized_termcolors=256 "this is what fixed it for me
"colorscheme solarized

" vim tabs
nnoremap <F6> :tabprevious<CR>
nnoremap <F7> :tabnext<CR>

" airline
let g:airline#extensions#tabline#enabled = 1

" ALE (Asynchronous Lint Engine)
let b:ale_linters = ['pylint'] ", 'flake8']
let b:ale_fixers = ['autopep8', 'yapf', 'trim_whitespace', 'remove_trailing_lines']

"nnoremap <F6> :source ~/Templates/header_sv.txt<CR> 


"  Leader key +b will open the list of buffers and write buffer<space>, so the 
"  user can select a different buffer easily
nnoremap <Leader>b :buffers<CR>:buffer<Space>

" NERD TREE plugin
map <C-n> :NERDTreeToggle<CR>

set shell=/bin/bash
set termguicolors
tnoremap <Esc> <C-\><C-n>

" Solves conflict between YCM and python mode. VIM was freezing after every
" dot in python.
let g:pymode_rope_complete_on_dot = 0


"" Ctrl-P: ingore xsim directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip   " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  'xsim.dir',
  \ }

