-- local sections = { lualine_c = { "os.date('%a')", 'data', "require'lsp-status'.status()" } }
require('core')
require("nvim-tree").setup()
require('nvim-autopairs').setup{}
require('impatient').enable_profile()
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
