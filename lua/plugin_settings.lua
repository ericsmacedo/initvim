-- ============================================================================
-- Plugin settings
-- ============================================================================

--  gruvbox colorscheme
vim.g.gruvbox_italic = 1
vim.g.gruvbox_contrast_dark = 'hard'
vim.cmd[[colorscheme gruvbox]]

-- " COQ: Removes start-up welcome message.
vim.g.coq_settings = {auto_start = 'shut-up'}
vim.g.coq_settings = {keymap =  {jump_to_mark = null}, }

-- " airline
vim.g["airline#extensions#tabline#enabled"] = 1

-- verible
local servers = {'pylsp'}
local nvim_lsp = require('lspconfig')
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = lsp_flags,
        root_dir = nvim_lsp.util.root_pattern(".p4config", ".git")
    }
end

-- ctrl-p 
-- CtrlP cache directory
vim.g.ctrlp_cache_dir = os.getenv('HOME') .. '/.cache/ctrlp'
-- The Silver Searcher
-- if vim.fn.executable('ag') == 1 then
--   vim.g.ctrlp_user_command = 'ag %s -l --nocolor -g ""'
-- end

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

