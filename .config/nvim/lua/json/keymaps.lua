local M = {}

function M.basic_keymaps()
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Navigate to left window', noremap = true, silent = true})
    vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Navigate to right window',noremap = true, silent = true})
    vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Navigate to top window', noremap = true, silent = true})
    vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Navigate to bottom window', noremap = true, silent = true})
    vim.keymap.set('t', '<leader><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode', noremap = true, silent = true})
end

return M
