local M = {}

function M.basic_keymaps()
    vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { noremap = true, silent = true })
end

return M