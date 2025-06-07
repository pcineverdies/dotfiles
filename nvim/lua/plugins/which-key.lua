return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = "echasnovski/mini.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {},
	config = function()
		local wk = require("which-key")

		wk.add({
			{ "<leader>d", group = " Debug " },
			{ "<leader>e", group = " File Tree" },
			{ "<leader>f", group = " File Search" },
			{ "<leader>g", group = " Git" },
			{ "<leader>l", group = " Code" },
			{ "<leader>n", group = " Other" },
			{ "<leader>t", group = " Tabs and Splits" },
		})
	end,
	setup = function()
		require("core.utils").load_mappings("whichkey")
	end,
}
