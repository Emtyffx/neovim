return {
	{
		"saghen/blink.cmp",
		opts = {
			signature = { enabled = true },
			keymap = { preset = "default" },
			completion = { accept = { auto_brackets = { enabled = true } } },
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {
			disable_filetype = {
				"TelescopePrompt",
				"spectre_panel",
				"snacks_picker_input",
			},
		},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format({ async = true })
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				javascriptreact = { "prettierd" },
				nix = { "nixfmt" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = { timeout_ms = 500 },
		},
		init = function()
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},
	{
		"echasnovski/mini.surround",
		opts = {},
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = true,
			},
		},
	},
	{
		"L3MON4D3/LuaSnip",
	},
	{
		"tpope/vim-fugitive",
		command = "Git",
		config = function() end,
		keys = {
			{
				"<leader>gs",
				vim.cmd.Git,
				desc = "[G]it",
			},
			{
				"<leader>gp",
				"<cmd>Git push<cr>",
				desc = "[G]it [P]ush",
			},
			{
				"<leader>gP",
				"<cmd>Git pull --rebase<cr>",
				desc = "[G]it [P]ush",
			},
			{
				"<leader>go",
				":Git push -u origin ",
				desc = "[G]it [O]rigin push",
			},
			{
				"<leader>gc",

				function()
					vim.ui.input({ prompt = "Enter commit message(empty if no message): " }, function(input)
						if input and input ~= "" then
							vim.cmd('Git commit -m "' .. input .. '"')
						else
							vim.cmd("Git commit")
						end
					end)
				end,
				desc = "[G]it [C]ommit",
			},
			{
				"<leader>ga",
				"<cmd>Git add --all<cr>",
				desc = "[G]it [A]dd All",
			},
		},
	},
}
