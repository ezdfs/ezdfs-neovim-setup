return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		-- Ensure core parsers are always installed
		ensure_installed = {
			"lua",
			"vim",
			"vimdoc",
			"query",
		},
		autotag = {
			enable = true,
		},
	},
}
