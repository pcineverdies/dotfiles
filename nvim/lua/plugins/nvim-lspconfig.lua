return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local util = require("lspconfig.util")

		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }

		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Define custom diagnostic signs.
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

    -- clangd setup
    lspconfig.clangd.setup({
      cmd = { "clangd" },  -- Optional if clangd is in your PATH
      filetypes = { "c", "cpp", "objc", "objcpp" },
      root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    })

    -- pyright setup
	  lspconfig.pyright.setup({
		  capabilities = capabilities,
		  root_dir = util.root_pattern("pyproject.toml", "setup.py", "requirements.txt", ".git"),
	  })

    -- Groovy - groovyls
	  lspconfig.groovyls.setup({
		  capabilities = capabilities,
		  cmd = { "groovy-language-server" },
		  root_dir = util.root_pattern(".git", "build.gradle", "settings.gradle"),
	  })

    -- Bash - bashls
	  lspconfig.bashls.setup({
		  cmd = { "bash-language-server", "start" },
		  filetypes = { "sh", "bash" },
		  root_dir = util.find_git_ancestor or vim.loop.cwd,
		  capabilities = capabilities,
	  })
	end,
}
