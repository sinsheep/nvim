local saga = require("lspsaga")
local keymap = vim.keymap.set
-- vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })

-- or use command
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
keymap("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

saga.init_lsp_saga({
    symbol_in_winbar = {
        in_custom = true
    }
})


local term = require("lspsaga.floaterm")

-- float terminal also you can pass the cli command in open_float_terminal function
vim.keymap.set("n", "<leader>lg", function()
    term.open_float_terminal("lazygit")
end, { silent = true })
vim.keymap.set("t", "<C-c>", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true))
    term.close_float_terminal()
end, { silent = true })

-- or use command
-- vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm custom_cli_command<CR>", { silent = true })
-- vim.keymap.set("t", "<A-d>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true })
