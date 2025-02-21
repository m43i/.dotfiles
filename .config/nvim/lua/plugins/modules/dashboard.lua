return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{
						icon = "󰊳 ",
                        icon_hl = "@variable",
						desc = "Lazy",
						group = "@property",
						action = "Lazy",
						key = "l",
					},
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Live Grep",
						group = "Files",
						action = "Telescope live_grep",
						key = "g",
					},
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "NeoTree",
						group = "Files",
						action = "Neotree",
						key = "e",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
