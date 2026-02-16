local ok, err = pcall(function()
	require("config.leader")
	require("config.lazy")
	require("config.keymaps")
	require("config.options")
    require("config.lsp")
	require("config.ui")
end)

if not ok then
	print("\n[ERRO DE INICIALIZAÇÃO]:")
	print(err)
	print("\nPressione qualquer tecla para sair ou depurar...")
	vim.fn.getchar()
	os.exit(1)
end
