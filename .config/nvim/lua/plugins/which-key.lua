return {
	{
		"echasnovski/mini.nvim",
		version = false,
		lazy = true,
	},
	{
		"folke/which-key.nvim",
		name = "which-key.nvim",
		lazy = true,
		event = "VeryLazy",
		opts = {},
		dependency = {
			"echasnovski/mini.nvim",
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
		config = function()
			require("mini.icons").setup()
		end,
	},
}
