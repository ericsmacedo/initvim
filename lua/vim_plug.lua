
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

-- Asynchronous Lint Engine ALE
Plug 'w0rp/ale'

-- Code completion
Plug('ms-jpq/coq_nvim', {branch = 'coq'})
Plug('ms-jpq/coq.artifacts', {branch = 'artifacts'})
Plug('ms-jpq/coq.thirdparty', {branch = '3p'})

-- Language Server Protocol
Plug 'neovim/nvim-lspconfig'

-- Error messages will look better with this
Plug 'neovim/nvim-lspconfig'
Plug('glepnir/lspsaga.nvim', {branch= 'main'})

-- Smooth scrolling
Plug 'psliwka/vim-smoothie'

-- add comments. Use gcc to comment a line and gc to complete blocks of code
Plug 'tpope/vim-commentary'

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


vim.call('plug#end')
