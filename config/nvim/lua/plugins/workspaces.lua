return {
	"natecraddock/workspaces.nvim",
	-- dependencies = {
	-- 	"nvim-telescope/telescope.nvim",
	-- },
	opts = {
		auto_open = false,
		hooks = {
			add = function()
				require("sessions").save(nil, { silent = true })
			end,
			open_pre = {
				-- If recording, save current session state and stop recording
				"SessionsStop",

				-- delete all buffers (does not save changes)
				"silent %bdelete!",
			},
			open = function()
				require("sessions").load(nil, { silent = true })
			end,
		},
	},
}
