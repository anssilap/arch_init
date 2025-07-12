return {
	{
		"Hoffs/omnisharp-extended-lsp.nvim",
		config = function()
			vim.keymap.set("n", "gr", function()
				require("omnisharp_extended").telescope_lsp_references()
			end)
			vim.keymap.set("n", "<leader>D", function()
				require("omnisharp_extended").telescope_lsp_definition({ jump_type = "vsplit" })
			end)
			vim.keymap.set("n", "gd", function()
				require("omnisharp_extended").telescope_lsp_definition()
			end)
		end,
	},
}
