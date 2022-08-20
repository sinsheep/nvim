local action = require("lspsaga.codeaction")

-- code action
vim.keymap.set("n", "<leader>ca", action.code_action, { silent = true })
vim.keymap.set("v", "<leader>ca", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    action.range_code_action()
end, { silent = true })
-- or use command
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })
local saga = require("lspsaga")

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

