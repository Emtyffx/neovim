return {
	-- {
	-- 	"slugbyte/lackluster.nvim",
	-- 	name = "lackluster",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		tweak_syntax = {
	-- 			comment = "#444444",
	-- 		},
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("lackluster").setup(opts)
	-- 		vim.cmd("colorscheme lackluster-hack")
	-- 	end,
	-- },
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			vim.cmd("colorscheme kanagawa-wave")
		end,
	},
}
