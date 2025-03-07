return {
	"mfussenegger/nvim-dap-python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap_python = require("dap-python")

		local path
		local venv_path = vim.fn.getcwd() .. "/venv/bin/python"
		local mason_path = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/bin/python"

		if vim.fn.filereadable(mason_path) then
			path = mason_path
		elseif vim.fn.filereadable(venv_path) == 1 then
			path = venv_path
		elseif vim.fn.exepath("python") ~= "" then
			path = vim.fn.exepath("python")
		elseif vim.fn.exepath("python3") ~= "" then
			path = vim.fn.exepath("python3")
		else
			path = "python"
		end
		dap_python.setup(path)
	end,
}
