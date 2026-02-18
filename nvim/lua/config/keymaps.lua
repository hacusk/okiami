local map = vim.keymap.set

-- ウィンドウ間移動
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- ウィンドウを閉じる
-- map("n", "<C-w>", "<cmd>close<CR>")

-- lazygit
map("n", "<leader>gg", function()
  vim.cmd("tabnew | terminal lazygit")
  vim.cmd("startinsert")
end)
