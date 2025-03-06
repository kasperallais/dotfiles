require("config.lazy")
require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig").pyright.setup{}
require("lspconfig").clangd.setup{}

-- set up autocmd for markdown file type to enable spell check
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "tex" },
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- keybinds
vim.api.nvim_set_keymap("n", "<C-r>", [[:!pdflatex --shell-escape %<CR>]], { noremap = true, silent = true })

-- set clipboard to unnamedplus
vim.opt.clipboard = "unnamedplus"
