local M = {}

function M.basic_keymaps()
	vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate to left window", noremap = true, silent = true })
	vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate to right window", noremap = true, silent = true })
	vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate to top window", noremap = true, silent = true })
	vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate to bottom window", noremap = true, silent = true })
	vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode", noremap = true, silent = true })
end

function M.buffer_keymaps()
	vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "[B]uffer [D]elete", noremap = true, silent = true })
	vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "[B]uffer [N]ext", noremap = true, silent = true })
	vim.keymap.set(
		"n",
		"<leader>bp",
		"<cmd>bprevious<CR>",
		{ desc = "[B]uffer [P]revious", noremap = true, silent = true }
	)
end
return M
