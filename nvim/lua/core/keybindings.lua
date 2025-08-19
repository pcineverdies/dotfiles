vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Select left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Select lower split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Select upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Select right split" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
vim.keymap.set("n", "L", "<cmd>:tabnext<CR>", { desc = "Move to next tab" })
vim.keymap.set("n", "H", "<cmd>:tabprevious<CR>", { desc = "Move to previos tabn" })

vim.keymap.set("n", "<leader>gl", "<cmd>LazyGit<CR>", { desc = "Lazygit" })
vim.keymap.set("n", "<leader>gn", "<cmd>Gitsigns next_hunk<CR>", { desc = "Next git hunk" })
vim.keymap.set("n", "<leader>gN", "<cmd>Gitsigns prev_hunk<CR>", { desc = "Prev git hunk" })
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset git hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle line blame" })
vim.keymap.set("n", "<leader>gs", "<cmd>FzfLua git_status<CR>", { desc = "Show git status" })

vim.keymap.set("n", "<leader>fa", "<cmd>:FzfLua files<CR>", { desc = "Open file" })
vim.keymap.set("n", "<leader>fg", "<cmd>:FzfLua live_grep<CR>", { desc = "Live grep in work folder"})
vim.keymap.set("n", "<leader>fR", "<cmd>:FzfLua resume<CR>", { desc = "Resume last fzf query" })
vim.keymap.set("n", "<leader>fr", "<cmd>:FzfLua oldfiles<CR>", { desc = "List of recent files" })
vim.keymap.set("n", "<leader>fc", "<cmd>:FzfLua grep_cword<CR>", { desc = "Grep current word under cursor" })

vim.api.nvim_set_keymap("n", "<C-w><Right>", ":vertical resize +20<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Left>", ":vertical resize -20<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Up>", ":resize +10<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Down>", ":resize -10<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><Down>", ":resize -10<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w><C-w>", "<C-w>=", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ee", "<cmd>:NvimTreeToggle<CR>", { desc = "Open the file explorer" })

vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Smart rename", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>lh",
	"<cmd>Lspsaga hover_doc<CR>",
	{ noremap = true, silent = true, desc = "Show hover docs" }
)
vim.keymap.set(
	"n",
	"<leader>lD",
	"<cmd>FzfLua lsp_declarations<CR>",
	{ desc = "Show LSP declaration", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>li",
	"<cmd>FzfLua lsp_implementations<CR>",
	{ desc = "Show LSP implementation", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>la",
	"<cmd>FzfLua lsp_code_actions<CR>",
	{ desc = "Show code actions", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>ld",
	"<cmd>FzfLua lsp_definitions<CR>",
	{ desc = "Show LSP definition", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>lR",
	"<cmd>FzfLua lsp_references<CR>",
	{ desc = "Show LSP references", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>fv",
	"<cmd>FzfLua grep_visual<CR>",
	{ desc = "Grep current visual", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>ln",
	"<cmd>Lspsaga diagnostic_jump_next<CR>",
	{ noremap = true, silent = true, desc = "Go to next diagnostic information" }
)
vim.keymap.set(
	"n",
	"<leader>lN",
	"<cmd>Lspsaga diagnostic_jump_prev<CR>",
	{ noremap = true, silent = true, desc = "Go to next diagnostic information" }
)
vim.keymap.set(
	"n",
	"<leader>ll",
	vim.diagnostic.open_float,
	{ desc = "Open diagnostic", noremap = true, silent = true }
)

vim.keymap.del("n", "gcc")
