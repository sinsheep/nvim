require('keymap.config')
local key = require('core.keymap')
local nmap, vmap = key.nmap, key.vmap
local silent, noremap = key.silent, key.noremap
local opts = key.new_opts
local cmd = key.cmd

-- usage of plugins
nmap({
    -- packer
    { '<Leader>pu', cmd('PackerUpdate'), opts(noremap, silent) },
    { '<Leader>pi', cmd('PackerInstall'), opts(noremap, silent) },
    { '<Leader>pc', cmd('PackerCompile'), opts(noremap, silent) },
    -- dashboard { '<Leader>n', cmd('DashboardNewFile'), opts(noremap, silent) }, { '<Leader>ss', cmd('SessionSave'), opts(noremap, silent) }, { '<Leader>sl', cmd('SessionLoad'), opts(noremap, silent) },
    -- nvimtree
    { '<Leader>e', cmd('NvimTreeToggle'), opts(noremap, silent) },
    -- Telescope
    { '<Leader>fb', cmd('Telescope buffers'), opts(noremap, silent) },
    { '<Leader>fg', cmd('Telescope live_grep'), opts(noremap, silent) },
    { '<Leader>ff', cmd('Telescope find_files'), opts(noremap, silent) },
    { '<Leader>fh', cmd('Telescope help_tags'), opts(noremap, silent) },
    { '<leader>fo', cmd('Telescope oldfiles'), opts(noremap, silent)},
    -- toggleterm
    { '<leader>lg', cmd('lua _LAZYGIT_TOGGLE()'), opts(noremap, silent)},
    { '<leader>py', cmd('lua _PYTHON_TOGGLE()'), opts(noremap, silent)},


    -- diagnostic
    {'<leader>g', vim.diagnostic.open_float, opts(noremap,silent)},
    -- code_runnign

    {'<leader>R', cmd("RunCode"), opts(noremap, silent)},
    {'<leader>C', cmd("RunClose"),opts(noremap,silent)},

    -- lspsaga
    {"<leader>rn", "<cmd>Lspsaga rename<CR>",opts(noremap, silent)},
    {"<leader>ca", "<cmd>Lspsaga code_action<CR>",opts(noremap, silent)},
    {"gh", "<cmd>Lspsaga lsp_finder<CR>", opts(noremap,silent) },
    {"gp", "<cmd>Lspsaga preview_definition<CR>",opts(noremap,silent)},
    {"<leader>cd", cmd('Lspsaga show_line_diagnostics'),opts(noremap, silent)},
    {'<leader>tg', cmd('LSoutlineToggle'), opts(noremap, silent)}
})

vmap({"<leader>ca", "<cmd><C-U>Lspsaga range_code_action<CR>", opts(noremap,silent)})
