return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				ensure_installed = {
					"json",
					"yaml",
					"html",
					"css",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"vim",
          "vimdoc",
					"dockerfile",
					"gitignore",
					"python",
					"regex",
					"c",
				},
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				autotag = { enable = true },
				context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
				auto_install = true,
			})
		end,
	},
}
