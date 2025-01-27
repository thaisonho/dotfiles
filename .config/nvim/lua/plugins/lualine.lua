return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},

				lualine_x = {
					{
						"datetime",
						style = "%H:%M",
					},
					"encoding",
					"filetype",
				},
			},
		})
	end,
}
