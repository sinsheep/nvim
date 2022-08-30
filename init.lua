require('core')
local status , nvim_tree = pcall(require,'nvim-tree')
if not status then
   return
end

nvim_tree.setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
})

require('nvim-autopairs').setup{}
require('impatient').enable_profile()
require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}
