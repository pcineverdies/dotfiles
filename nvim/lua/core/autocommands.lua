vim.api.nvim_create_autocmd({ "BufLeave" }, {
  pattern = "*",
  command = "wa",
  nested = true
})

-- Function to remove trailing whitespace
local function trim_trailing_whitespace()
  local view = vim.fn.winsaveview()
  vim.cmd([[%s/\s\+$//e]])
  vim.fn.winrestview(view)
end

-- Autocommand to call the function on BufWritePre
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = trim_trailing_whitespace,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.foldmethod = "indent"
    vim.opt_local.foldlevel = 99  -- All folds open initially
  end,
})
