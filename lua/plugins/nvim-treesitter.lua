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
	config = function(_, opts)
		require("nvim-treesitter").setup(opts)

		local bug_fix_group = vim.api.nvim_create_augroup("TS_Force_Start", { clear = true })

		vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
			group = bug_fix_group,
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
