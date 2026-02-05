local keymap = vim.keymap

-- File manipulation
-- Save file
keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })

-- Save all files
keymap.set("n", "<leader>wa", "<cmd>wa<cr>", { desc = "Save all files" })

-- Close file
keymap.set("n", "<leader>q", "<cmd>bd<cr>", { desc = "Close file" })

-- Close all files
keymap.set("n", "<leader>qa", "<cmd>%bd|e#|bd#<cr>", { desc = "Close all files" })

-- Save and quit
keymap.set("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save file and quit" })

-- Save all files and quit
keymap.set("n", "<leader>waq", "<cmd>waq<cr>", { desc = "Save all files and quit" })

-- Quit
keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

-- Quit all
keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })

-- Code edition
-- Rename symbol
keymap.set("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename symbol" })
