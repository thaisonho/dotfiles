local M = {}

function M.basic_keymaps()
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>h', '<C-w>h', { noremap = true, silent = true})
    vim.keymap.set('n', '<leader>l', '<C-w>l', { noremap = true, silent = true})
    vim.keymap.set('n', '<leader>j', '<C-w>j', { noremap = true, silent = true})
    vim.keymap.set('n', '<leader>k', '<C-w>k', { noremap = true, silent = true})
end

return M
