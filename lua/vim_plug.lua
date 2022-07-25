
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- This is the Vundle package, which can be found on GitHub.
-- For GitHub repos, you specify plugins using the
-- 'user/repository' format

Plug 'gmarik/vundle'

-- Status Bar
Plug 'bling/vim-airline'

-- Status Bar themes
Plug 'vim-airline/vim-airline-themes'

-- Git integration
--Plug 'tpope/vim-fugitive'
--Plug 'airblade/vim-gitgutter'

-- Fuzzy finder
Plug 'kien/ctrlp.vim'

-- Nerd tree
Plug 'scrooloose/nerdtree'

-- Align text and patterns
Plug 'godlygeek/tabular'

-- Indent line guides
Plug 'lukas-reineke/indent-blankline.nvim'

-- Super Tab
Plug 'ervandew/supertab'

--Diff tool
Plug 'will133/vim-dirdiff'

-- Multiple cursor
Plug 'terryma/vim-multiple-cursors'

-- python autocompletion and help
Plug 'davidhalter/jedi-vim'

-- Snippets
-- Plug 'honza/vim-snippets'
-- Plug 'sirver/ultisnips'
-- Asynchronous Lint Engine ALE
Plug 'w0rp/ale'

-- Code completion
Plug('ms-jpq/coq_nvim', {branch = 'coq'})
Plug('ms-jpq/coq.artifacts', {branch = 'artifacts'})
Plug('ms-jpq/coq.thirdparty', {branch = '3p'})

-- Vim hardtime keeps you from repeating the same keys. Learn vim the hard way!
Plug 'takac/vim-hardtime'

-- *****************************************************************************
-- Colorschemes 
-- *****************************************************************************

-- gruvbox
Plug 'morhetz/gruvbox'

-- dracula
Plug 'dracula/vim'

-- Space gray
Plug 'ajh17/spacegray.vim'

-- iceberg
Plug 'cocopon/iceberg.vim'

-- solarized
Plug 'lifepillar/vim-solarized8'


-- system verilog
Plug 'nachumk/systemverilog.vim'

-- add comments. Use gcc to comment a line and gc to complete blocks of code
Plug 'tpope/vim-commentary'

Plug 'iamcco/markdown-preview.nvim'
-- :source %
-- :Plug Install
-- :call mkdp#util#install()
--
vim.call('plug#end')
