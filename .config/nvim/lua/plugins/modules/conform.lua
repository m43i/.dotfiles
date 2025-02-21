return {
	"stevearc/conform.nvim",
	cmd = "ConformInfo",
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = { "n", "v" },
		},
	},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				javascript = { "biome", "prettierd", stop_after_first = true },
				javascriptreact = { "biome", "prettierd", stop_after_first = true },
				typescript = { "biome", "prettierd", stop_after_first = true },
				typescriptreact = { "biome", "prettierd", stop_after_first = true },
				vue = { "prettierd" },
				svelte = { "prettierd" },
				go = { "goimports", "gofmt" },
				lua = { "stylua" },
				["*"] = { "injected" },
			},
			formatters = {
				biome = {
					condition = function(self, ctx)
                        local find = vim.fs.find({ "biome.json" }, { path = ctx.filename, upward = true })[1]
                        return find ~= nil
					end,
				},
				prettierd = {
					env = {
						PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/utils/linter-config/.prettierrc.json"),
					},
				},
			},
		})
	end,
}
