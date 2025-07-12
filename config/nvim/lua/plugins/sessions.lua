return {
	{
		"natecraddock/sessions.nvim",
		opts = {
			events = { "VimLeavePre", "BufWritePost" },
			session_filepath = vim.fn.stdpath("data") .. "/sessions",
			absolute = true,
		},
	},
}
