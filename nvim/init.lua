require("config.lazy")

-- set up autocmd for markdown file type to enable spell check
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- set clipboard to unnamedplus
vim.opt.clipboard = "unnamedplus"

