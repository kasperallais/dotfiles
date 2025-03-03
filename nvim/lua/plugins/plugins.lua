return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"jiangmiao/auto-pairs",
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.vimtex_view_method = "zathura"
		end
}
}
