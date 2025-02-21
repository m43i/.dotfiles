return {
	"akinsho/bufferline.nvim",
	-- version = "*",
    branch = "main",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or ""
					return " " .. icon .. count
				end,
				indicator = {
					style = "underline",
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "left",
						separator = true,
					},
				},
			},
		})

		vim.keymap.set("n", "<leader>n", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>p", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>N", ":BufferLineMoveNext<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>P", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })
	end,
}
