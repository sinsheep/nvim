require("core.lsp.cmp")
require('nvim-lsp-installer').setup{}
local util = require('lspconfig/util')
local path = util.path
local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
    -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>fa', vim.lsp.buf.formatting, bufopts)
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
local servers = { "jsonls", "sumneko_lua", "gopls", "zk" }
for _, lsp in ipairs(servers) do
    local opts = {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    local has_custom_opts, server_cutom_opts = pcall(require, "core.lsp.setting")
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_cutom_opts)
    end
    lspconfig[lsp].setup(opts)
end

-- just for pyright
local function get_python_path(workspace)
    -- Use activated virtualenv.
    if vim.env.VIRTUAL_ENV then
        return path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
    end

    -- Find and use virtualenv in workspace directory.
    for _, pattern in ipairs({ '*', '.*' }) do
        local match = vim.fn.glob(path.join(workspace, pattern, 'pyvenv.cfg'))
        if match ~= '' then
            return path.join(path.dirname(match), 'bin', 'python')
        end
    end

    -- Fallback to system Python.
    return 'python3'
    -- return exepath('python3') or exepath('python') or 'python'
end

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = false,
                typeCheckingMode = 'off',
            },
            pythonPath = get_python_path(vim.lsp.buf.list_workspace_folders())
        },
    },
    -- before_init = function(_, config)
    --     config.settings.python.pythonPath = get_python_path(config.root_dir)
    -- end,
})
