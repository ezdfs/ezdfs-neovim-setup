return {
	"dense-analysis/ale",
	config = function()
		-- ALE Configuration for Biome Integration
		vim.g.ale_javascript_biome_use_global = 0
		vim.g.ale_typescript_biome_use_global = 0

		-- Enable ALE linters
		vim.g.ale_linters = {
			javascript = { "biome" },
			typescript = { "biome" },
			lua = { "lua_ls" },
		}

		-- Enable ALE fixers
		vim.g.ale_fixers = {
			javascript = { "biome" },
			typescript = { "biome" },
			css = { "biome" },
			json = { "biome" },
			lua = { "stylua" },
		}

		-- Enable automatic fixing on save
		vim.g.ale_fix_on_save = 1
	end,
}
