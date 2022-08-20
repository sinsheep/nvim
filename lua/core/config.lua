local config = {}

function config.nvim_treesitter()
  -- vim.api.nvim_command('set foldmethod=manual')
  -- vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
  require('nvim-treesitter.configs').setup({
    ensure_installed = 'all',
    ignore_install = { 'phpdoc' },
    highlight = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
      },
    },
  })
end

-- function config.gitsigns()
--     require('gitsigns').setup({
--     signs = {
--         add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
--         change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--         delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--         topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--         changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--       },
--      signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
--      numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
--      linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
--      word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
--     })
-- end

function config.comment()
    require('Comment').setup()
end


return config
