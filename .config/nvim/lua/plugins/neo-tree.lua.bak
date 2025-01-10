return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        {
            's1n7ax/nvim-window-picker',
            version = '2.*',
            config = function()
                require('window-picker').setup({
                    filter_rules = {
                        includer_current_win = false,
                        autoselect_one = true,
                        -- filter using buffer options
                        bo = {
                            -- if the file type is one of following, the window will be ignore
                            filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
                            -- if the buffer type is one of following, the window will be ignore
                            buftype = { 'terminal', 'quickfix' }
                        },
                    },
                })
            end
        }
    },

    config = function()
        vim.fn.sign_define('DiagnosticSignError',
            { text = " ", texthl = 'DiagnosticSignError' })
        vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
        vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
        vim.fn.sign_define("DiagnosticSignHint",
            {text = "󰌵", texthl = "DiagnosticSignHint"})
        -- Keymap
        vim.keymap.set('n', '<leader>tt', ':Neotree filesystem reveal left<CR>', { desc = 'Open Neotree' })
        vim.keymap.set("n", "<leader>tr", ":Neotree filesystem close <CR>", { desc = 'Close Neotree'})

        vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
    end
}
