return {
	"3rd/image.nvim",
	dependencies = { "luarocks.nvim" },
	config = function()
		require("image").setup({
			backend = "kitty",
			-- Faz o Nvim "sequestrar" arquivos de imagem para renderizá-los
			hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif", "*.ico" },
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = false,
					filetypes = { "markdown", "vimwiki" },
				},
				-- Aqui está o segredo para o seu nvim-tree
				nvimtree = {
					enabled = true,
				},
			},
			max_width = nil,
			max_height = nil,
			max_width_window_percentage = nil,
			max_height_window_percentage = 50, -- Ajusta a altura da imagem para não ocupar tudo
			window_overlap_clear_enabled = true,
			-- Caminho para o executável do ImageMagick (importante no Debian)
			processor_path = "/usr/bin/convert",
		})
	end,
}
