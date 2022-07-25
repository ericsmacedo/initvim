
-- Vim has 3 kinds of options: global, buffer-local and window-local
local o = vim.o  	-- Global options
local wo = vim.wo	-- window-local options
local bo = vim.bo	-- buffer-local options

-- global options
o.mouse = "a" -- enable mouse support for all modes
o.incsearch = true             -- search as characters are entered
o.hlsearch = true              -- highlight matches
o.clipboard = unnamed     -- copy from system clipboard
o.background = "dark"
o.wildignore = "+=*/tmp/*,*.so,*.swp,*.zip,"   -- MacOSX/Linux
o.scrolloff = 4          -- Show at least 4 lines
o.encoding = "utf-8"

-- window-local options
wo.number = true                -- show line numbers
wo.relativenumber = true	-- use relative numbers
wo.colorcolumn = "80"		-- columnt to indicate end of 80 characters
wo.conceallevel = 0      -- Determine how text with the "conceal" syntax attribute :syn-conceal is shown

-- buffer local options

bo.softtabstop = 4         -- number of spaces in tab when editing.
bo.tabstop = 4             -- number of spaces in tab when editing
bo.expandtab = true      -- tabs are spaces
bo.shiftwidth = 4          -- number of spaces used for >> and << 


---- Plugin settings
-- " colorscheme
vim.g.gruvbox_italic = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.cmd[[colorscheme gruvbox]]

-- " ALE (Asynchronous Lint Engine)
-- let b:ale_linters = ['pylint'] ", 'flake8']
-- let b:ale_fixers = ['autopep8', 'yapf', 'trim_whitespace', 'remove_trailing_lines']
-- 
-- " Deoplete
vim.g["deoplete#enable_at_startup"] = 1

-- " COQ now
vim.g.coq_settings = {auto_start = true}
-- 
-- 
-- " NERD TREE plugin
-- map <C-n> :NERDTreeToggle<CR>

-- " Indent guides
vim.g.indent_guides_enable_on_vim_startup = 0
-- 
-- " " better key bindings for UltiSnipsExpandTrigger
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
-- 
-- " airline
vim.g["airline#extensions#tabline#enabled"] = 1
-- 
-- "" Ctrl-P: ingore xsim directories
- vim.g.ctrlp_custom_ignore = {\ 'dir':  'xsim.dir', \}

-- Specify which python environment is to be used with neovim
vim.g.python3_host_prog = vim.call("expand", "~/miniconda3/bin/python3.9")

-- highlight current line when in insert mode
vim.api.nvim_create_autocmd({"InsertEnter"}, {pattern = {"*"},
                            callback = function() vim.wo.cul = true end})
vim.api.nvim_create_autocmd({"InsertLeave"}, {pattern = {"*"},
                            callback = function() vim.wo.cul = false end})



-- autocmd FileType make setlocal noexpandtab " use tabs instead of spaces for makefiles


-- "===================================================================
-- " CUSTOM INDENTATION
-- "===================================================================

local set_ident = function()
    vim.bo.tabstop = 4          -- number of spaces in tab when editing
    vim.bo.softtabstop = 4      -- number of spaces in tab when editing.
    vim.bo.shiftwidth = 4       -- number of spaces used for >> and <<
end

local set_yml_ident = function()
    vim.bo.tabstop = 2          -- number of spaces in tab when editing
    vim.bo.softtabstop = 2      -- number of spaces in tab when editing.
    vim.bo.shiftwidth = 2       -- number of spaces used for >> and <<
end


vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},
                            {pattern = {"*.py", "*.sv", "*.cpp"},
                             callback = set_ident
                            })

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},
                            {pattern = {"*.yml"},
                             callback = set_yml_ident
                            })

-- "  Leader key +b will open the list of buffers and write buffer<space>, so the 
-- "  user can select a different buffer easily
-- nnoremap <Leader>b :buffers<CR>:buffer<Space>
-- 
-- set shell=/bin/bash
-- tnoremap <Esc> <C-\><C-n>
