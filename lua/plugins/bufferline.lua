return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			indicator = { icon = "▎", style = "icon" },
			diagnostics_indicator = function(_, _, diag)
				local ret = (diag.error and "󰅚 " .. diag.error .. " " or "")
				return ret .. (diag.warning and " " .. diag.warning or "")
			end,
			offsets = { { filetype = "NvimTree", text = "File Explorer", separator = true } },
		},
	},
	init = function()
		local group = vim.api.nvim_create_augroup("AlphaNoBufferline", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			group = group,
			pattern = "alpha",
			callback = function()
				vim.opt.showtabline = 0
			end,
		})
		vim.api.nvim_create_autocmd("BufLeave", {
			group = group,
			pattern = "*",
			callback = function()
				if vim.bo.filetype == "alpha" then
					vim.opt.showtabline = 2
				end
			end,
		})
	end,
}
