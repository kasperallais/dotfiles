return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"jiangmiao/auto-pairs",
	{
		"lervag/vimtex",
		lazy = false,
		init = function()
			vim.g.tex_flavor = 'latex'
			vim.g.vimtex_view_method = 'zathura'
			vim.g.vimtex_quickfix_mode = 0
			vim.opt.conceallevel = 1
			vim.g.tex_conceal = 'abdmg'
		end
	},
	{
	    "SirVer/ultisnips",
	    config = function()
	      vim.g.UltiSnipsExpandTrigger = "<tab>"
	      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
	      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
	    end,
	  },
	  {
	    "honza/vim-snippets",
	    dependencies = { "SirVer/ultisnips" },
	  },
}
