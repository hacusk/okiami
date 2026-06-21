local map = vim.keymap.set

-- ウィンドウ間移動
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- ウィンドウを閉じる
-- map("n", "<C-w>", "<cmd>close<CR>")

-- lazygit
map("n", "<leader>gg", function() Snacks.lazygit.open() end, { desc = "Lazygit" })
map("n", "<leader>gl", function() Snacks.lazygit.log() end, { desc = "Lazygit log" })
map("n", "<leader>gf", function() Snacks.lazygit.log_file() end, { desc = "Lazygit log (current file)" })
