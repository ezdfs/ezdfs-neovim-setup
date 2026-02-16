local group = vim.api.nvim_create_augroup("LSP_CONFIG", { clear = true })

vim.lsp.enable("biome")
vim.lsp.enable("stylua")

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	group = group,
	pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.lua" },
	callback = function()
		vim.lsp.buf.format({ timeout_ms = 1000 })
	end,
})
