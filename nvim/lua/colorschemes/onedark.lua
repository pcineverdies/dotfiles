return {
	"navarasu/onedark.nvim",
	lazy = false,
	name = "onedark",
	config = function()
		require("onedark").setup({
			style = "cool",
		})
		require("onedark").load()
	end,
}
