-- ============================================================================
-- Plugin settings
-- ============================================================================

--  gruvbox colorscheme
vim.g.gruvbox_italic = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.cmd[[colorscheme gruvbox]]

-- " COQ: Removes start-up welcome message
vim.g.coq_settings = {auto_start = 'shut-up'}

-- " " better key bindings for UltiSnipsExpandTrigger
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsExpandTrigger = "<tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"

-- " airline
vim.g["airline#extensions#tabline#enabled"] = 1

-- Specify which python environment is to be used with neovim
vim.g.python3_host_prog = vim.call("expand", "~/miniconda3/bin/python3.9")

-- verible
local servers = {'pyright'}
local nvim_lsp = require('lspconfig')
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = lsp_flags,
        root_dir = nvim_lsp.util.root_pattern(".p4config", ".git")
    }
end

-- "  Leader key +b will open the list of buffers and write buffer<space>, so the 
-- "  user can select a different buffer easily
-- nnoremap <Leader>b :buffers<CR>:buffer<Space>

-- use tabs instead of spaces for makefiles
-- autocmd FileType make setlocal noexpandtab 

-- "" Ctrl-P: ingore xsim directories
--- vim.g.ctrlp_custom_ignore = {\ 'dir':  'xsim.dir', \}

-- " NERD TREE plugin
-- map <C-n> :NERDTreeToggle<CR>

--  ALE (Asynchronous Lint Engine)
-- let b:ale_linters = ['pylint'] ", 'flake8']
-- let b:ale_fixers = ['autopep8', 'yapf', 'trim_whitespace', 'remove_trailing_lines']

