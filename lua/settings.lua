-- Vim has 3 kinds of options: global, buffer-local and window-local
local o = vim.o  	-- Global options
local wo = vim.wo	-- window-local options
local bo = vim.bo	-- buffer-local options

-- global options
o.mouse = "a"         -- enable mouse support for all modes
o.incsearch = true    -- search as characters are entered
o.hlsearch = true     -- highlight matches
o.clipboard = unnamed -- copy from system clipboard
o.background = "dark"
o.wildignore = "+=*/tmp/*,*.so,*.swp,*.zip,"   -- MacOSX/Linux
o.scrolloff = 5       -- Show at least 5 lines
o.encoding = "utf-8"

-- window-local options
wo.number = true            -- show line numbers
wo.relativenumber = true	-- use relative numbers
wo.colorcolumn = "80"		-- columnt to indicate end of 80 characters
wo.conceallevel = 0         -- Determine how text with the "conceal" syntax attribute :syn-conceal is shown

-- buffer local options
o.softtabstop = 4         -- number of spaces in tab when editing.
o.tabstop = 4             -- number of spaces in tab when editing
o.expandtab = true        -- tabs are spaces
o.shiftwidth = 4          -- number of spaces used for >> and << 

-- highlight current line when in insert mode
vim.api.nvim_create_autocmd({"InsertEnter"}, {pattern = {"*"},
                            callback = function() vim.wo.cul = true end})
vim.api.nvim_create_autocmd({"InsertLeave"}, {pattern = {"*"},
                            callback = function() vim.wo.cul = false end})

-- To prevent errors with the Shada (shared data) file, I added the line below
vim.cmd[[ "set viminfo+=n~/vim/viminfo"]]

-- Specify which python environment is to be used with neovim
vim.g.python3_host_prog = vim.call("expand", "~/.config/nvim/pyenv/bin/python3.9")

-- "===================================================================
-- " CUSTOM INDENTATION
-- "===================================================================
local set_ident = function()
    vim.o.tabstop = 4          -- number of spaces in tab when editing
    vim.o.softtabstop = 4      -- number of spaces in tab when editing.
    vim.o.shiftwidth = 4       -- number of spaces used for >> and <<
    vim.o.expandtab = true     -- tabs are spaces
end

local set_yml_ident = function()
    vim.o.tabstop = 2          -- number of spaces in tab when editing
    vim.o.softtabstop = 2      -- number of spaces in tab when editing.
    vim.o.shiftwidth = 2       -- number of spaces used for >> and <<
end

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},
                            {pattern = {"*.py", "*.sv", "*.cpp"},
                             callback = set_ident
                            })

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"},
                            {pattern = {"*.yml"},
                             callback = set_yml_ident
                            })

-- Enable true colors in the terminal
vim.cmd('set termguicolors')
