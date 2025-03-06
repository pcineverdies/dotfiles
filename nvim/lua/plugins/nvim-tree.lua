return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local api = require("nvim-tree.api")

		require("nvim-tree").setup({
			view = {
				width = 40,
			},
			on_attach = function(bufnr)
				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				api.config.mappings.default_on_attach(bufnr)

				-- Custom keybindings
				vim.keymap.set("n", "<CR>", api.node.open.tab, opts("Open"))
				vim.keymap.set("n", "<C-v>", api.node.open.vertical, opts("Open: Vertical Split"))
				vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts("Open: Horizontal Split"))
			end,
		})
	end,
}
