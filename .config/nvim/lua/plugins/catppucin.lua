return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        local config = require('catppuccin')
        config.setup({
            flavour = 'macchiato',
            transparent_background = true,
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
