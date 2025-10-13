require("config.lazy")
require("mason").setup()
require("mason-lspconfig").setup()

-- enable LSP
vim.lsp.enable({ "pyright", "clangd" })

-- color scheme
vim.cmd[[colorscheme tokyonight-night]]

-- set up autocmd for markdown file type to enable spell check
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "tex" },
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- set tabstop to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- keybinds

-- set clipboard to unnamedplus
vim.opt.clipboard = "unnamedplus"
