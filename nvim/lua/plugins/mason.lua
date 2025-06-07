return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		local lspconfig = require("lspconfig")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {},
			automatic_installation = true,
		})

		mason_lspconfig.setup_handlers({
			function(server_name) -- Default handler for installed servers
				lspconfig[server_name].setup({})
			end,
		})
	end,
}
