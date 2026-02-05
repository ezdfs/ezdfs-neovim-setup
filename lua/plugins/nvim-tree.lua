return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local keymap = vim.keymap

		require("nvim-tree").setup({
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					error = "",
					warning = "",
					hint = "󰋼",
					info = "",
				},
			},
			filters = {
				exclude = { "node_modules" },
			},
		})

		-- NvimTree keymaps
		keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>", { silent = true })
		keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { silent = true })
	end,
}
