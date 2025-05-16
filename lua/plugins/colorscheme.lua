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
		"zenbones-theme/zenbones.nvim",
		priority = 1000,
		lazy = false,
		dependencies = "rktjmp/lush.nvim",
		config = function()
			vim.cmd("colorscheme zenbones")
		end,
	},
}
