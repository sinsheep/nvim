require('core.options')
require('core.colorscheme')
require('core.plugins')
require('core.telescope')
require('keymap')
require('core.toggleterm')
require('core.gitsigns')
require('core.lualine')
-- require("core.null-ls")

-- require("core.handlers").setup()
require("core.lsp")
-- require('core.galaxyline')

require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
        go = "go run"
	},
})
