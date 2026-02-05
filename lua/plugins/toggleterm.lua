return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_terminals = true,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			float_opts = {
				border = "curved",
				winblend = 3,
			},
		})

		local opts = { noremap = true, silent = true }
		local set_keymap = vim.api.nvim_set_keymap

		function _G.set_terminal_keymaps()
			local opt = { buffer = 0 }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opt)
			vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opt)
			vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opt)
			vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opt)
			vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opt)
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		-- Horizontal
		set_keymap("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", opts)
		-- Vertical
		set_keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", opts)
		-- Float
		set_keymap("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", opts)
		-- Tab
		set_keymap("n", "<leader>ts", "<cmd>ToggleTerm direction=tab<cr>", opts)

		-- Multiple terminals
		set_keymap("n", "<leader>t1", "<cmd>1ToggleTerm<cr>", opts)
		set_keymap("n", "<leader>t2", "<cmd>2ToggleTerm<cr>", opts)
	end,
}
