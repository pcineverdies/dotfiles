return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local mason_registry = require("mason-registry")

		vim.keymap.set("n", "<F10>", '<cmd>lua require"dap".step_into()<CR>', { desc = "DAP step into" })
		vim.keymap.set("n", "<F11>", '<cmd>lua require"dap".step_over()<CR>', { desc = "DAP step over" })
		vim.keymap.set("n", "<F12>", '<cmd>lua require"dap".step_out()<CR>', { desc = "DAP step out" })
		vim.keymap.set("n", "<F5>", function()
			require("dap").continue()
		end, { desc = "DAP continue" })

		vim.keymap.set("n", "<leader>du", '<cmd>lua require"dapui".toggle()<CR>', { desc = "DAP toggle UI" })

		-- reset dap ui
		vim.keymap.set("n", "<leader>dr", function()
			local dapui = require("dapui")
			dapui.close()
			dapui.open({ reset = true })
		end, { desc = "DAP reset UI" })

		vim.keymap.set("n", "<leader>de", '<cmd>lua require"dapui".eval()<CR>', { desc = "DAP eval" })

		vim.keymap.set(
			"n",
			"<leader>db",
			'<cmd>lua require"dap".toggle_breakpoint()<CR>',
			{ desc = "DAP toggle breakpoint" }
		)
		vim.keymap.set(
			"n",
			"<leader>dc",
			'<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>',
			{
				desc = "DAP set breakpoint with condition",
			}
		)

		vim.api.nvim_create_user_command("DapDisconnect", function()
			require("dap").disconnect()
			require("dapui").close()
		end, {})

		local dap = require("dap")

		dap.adapters.python = {
			type = "executable",
			command = vim.fn.exepath("python3"), -- Or use your virtual environment path
			args = { "-m", "debugpy.adapter" },
		}

		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch current file",
				program = "${file}", -- Launches the current file
				cwd = "${workspaceFolder}", -- Sets the working directory to your project root
				console = "integratedTerminal",
			},
			{
				type = "python",
				request = "attach",
				name = "Attach to running process",
				connect = {
					host = "127.0.0.1",
					port = 5678, -- Default debugpy port
				},
				cwd = "${workspaceFolder}",
			},
		}
	end,
}
