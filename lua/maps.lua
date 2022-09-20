-- "split navigations
options = { noremap = true }
vim.api.nvim_set_keymap("n", "<C-J>", "<C-W><C-J>", options)
vim.api.nvim_set_keymap("n", "<C-K>", "<C-W><C-K>", options)
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W><C-L>", options)
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W><C-H>", options)
-- " vim tabs
vim.api.nvim_set_keymap("n", "<F6>", "tabprevious<CR>", options)
vim.api.nvim_set_keymap("n", "<F7>", "tabnext<CR>", options)

-- turn off search highlight
vim.api.nvim_set_keymap("n", "<leader><space>", ":nohlsearch<CR>", options)

-- remove conflict with <c-h> keymap, mapping jump_to_Mark to something else
vim.g.coq_settings = {
    keymap =  { jump_to_mark = "<c-\\" },
}




-- Use this to auto-insert a file header
-- "nnoremap <F6> :source ~/Templates/header_sv.txt<CR> 
