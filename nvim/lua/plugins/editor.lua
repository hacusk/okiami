return {
  { "vim-airline/vim-airline", dependencies = { "vim-airline/vim-airline-themes" } },
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },
}
