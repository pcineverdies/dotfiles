return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			h = { "clang-format" },
			hpp = { "clang-format" },
			python = { "black" },
			json = { "fixjson" },
		},
		format_on_save = {
			lsp_fallback = true,
		},
		formatters = {
			black = {
				prepend_args = { "--line-length", "80" },
			},
		},
	},
}
