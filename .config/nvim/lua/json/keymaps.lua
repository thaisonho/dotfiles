local M = {}

function M.basic_keymaps()
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Navigate to left window', noremap = true, silent = true})
    vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Navigate to right window',noremap = true, silent = true})
    vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Navigate to top window', noremap = true, silent = true})
    vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Navigate to bottom window', noremap = true, silent = true})
end

return M
