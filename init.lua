require("options")
require("nixCatsUtils").setup({
	non_nix_value = true,
})
-- NOTE: nixCats: You might want to move the lazy-lock.json file
local function getlockfilepath()
	if require("nixCatsUtils").isNixCats and type(nixCats.settings.unwrappedCfgPath) == "string" then
		return nixCats.settings.unwrappedCfgPath .. "/lazy-lock.json"
	else
		return vim.fn.stdpath("config") .. "/lazy-lock.json"
	end
end
local lazyOptions = {
	lockfile = getlockfilepath(),
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
	install = {
		colorscheme = { "lackluster" },
	},
}

require("nixCatsUtils.lazyCat").setup(
	nixCats.pawsible({ "allPlugins", "start", "lazy.nvim" }),
	{ "nvim-lua/plenary.nvim", { import = "plugins" } },
	lazyOptions
)

require("keymaps")
