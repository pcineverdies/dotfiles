return {
	"mfussenegger/nvim-lint",
	config = function()
		-- Basic setup, you can configure linters here
		require("lint").linters_by_ft = {
			python = { "ruff" },
		}

		-- Trigger linting on save
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
