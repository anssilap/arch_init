return {
	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			require("which-key").setup()

			local wk = require("which-key")
			wk.add({
				{ "<leader>c", group = "[c]ode" },
				{ "<leader>c_", hidden = true },
				{ "<leader>d", group = "[d]ocument" },
				{ "<leader>d_", hidden = true },
				{ "<leader>h", group = "git [h]unk" },
				{ "<leader>h_", hidden = true },
				{ "<leader>r", group = "[r]ename" },
				{ "<leader>r_", hidden = true },
				{ "<leader>s", group = "[s]earch" },
				{ "<leader>s_", hidden = true },
				{ "<leader>t", group = "[t]oggle" },
				{ "<leader>t_", hidden = true },
				{ "<leader>w", group = "[w]orkspace" },
				{ "<leader>w_", hidden = true },
				{ "<leader>h", desc = "Git [H]unk", mode = "v" },
			})
		end,
	},
}
