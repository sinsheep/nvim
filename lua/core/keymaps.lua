local opts = { noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)


keymap("n","S",":w<cr>",opts)
keymap("n","Q",":q<cr>",opts)
keymap("n","s","<nop>",opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

vim.keymap.set("n","<C-t>",":NvimTreeToggle<cr>",opts)

--keymap("n","<leader>ff",require('telescope.builtin').find_files(),opts)
--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
--nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
--nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
--nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
