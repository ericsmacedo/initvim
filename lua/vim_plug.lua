
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Status Bar
Plug 'bling/vim-airline'

-- Status Bar themes
Plug 'vim-airline/vim-airline-themes'

-- Fuzzy finders
-- ctrl-p
Plug 'kien/ctrlp.vim'
-- fzf
Plug('junegunn/fzf', { ['do'] = function() vim.call('fzf#install') end })
Plug 'junegunn/fzf.vim'

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

-- Multiple cursor: select multple occurrences of the highligthed word. can
-- be replaced by a simple search and replace command
Plug 'terryma/vim-multiple-cursors'

-- COQ vim: Code completion
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

-- Vp4: perforce versioning plugin
Plug 'ngemily/vim-vp4'

-- *****************************************************************************
-- Colorschemes 
-- *****************************************************************************

-- gruvbox
Plug 'morhetz/gruvbox'

vim.call('plug#end')
