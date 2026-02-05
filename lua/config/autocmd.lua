-- Group to lsp autocommand
local group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })

-- Enable rename symbol
vim.api.nvim_create_autocmd("LspAttach", {
	group = group,
	callback = function(ev)
		local opts = { buffer = ev.buf, desc = "Rename symbol" }
		vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename, opts)
	end,
})
