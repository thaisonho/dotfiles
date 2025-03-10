return {
	"windwp/nvim-autopairs",
	lazy = true,
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({})

		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		cmp.event:on("confim-done", cmp_autopairs.on_confirm_done())
	end,
}
