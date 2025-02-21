return {
	jsonls = {
		settings = {
			json = {
				schema = require("schemastore").json.schemas(),
				validate = { enable = true },
			},
		},
	},
	lua_ls = {
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
				},
			},
		},
	},
	rust_analyzer = {},
	eslint = {
		workingDirectory = {
			mode = "auto",
		},
	},
	ts_ls = {
		single_file_support = false,
		filetypes = {
			"typescript",
			"javascript",
			"javascriptreact",
			"typescriptreact",
			"typescript.tsx",
			"javascript.jsx",
            "vue",
		},
	},
	gopls = {},
	volar = {},
	svelte = {},
	denols = {
		single_file_support = false,
	},
	intelephense = {
		intelephense = {
			format = {
				braces = "k&r",
			},
		},
	},
}
