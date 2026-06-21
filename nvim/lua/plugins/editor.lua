return {
  { "vim-airline/vim-airline", dependencies = { "vim-airline/vim-airline-themes" } },
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim", event = { "BufReadPre", "BufNewFile" }, opts = {} },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      lazygit = {
        enabled = true,
        configure = false,
      },
      styles = {
        minimal = {
          wo = {
            listchars = "extends:>,tab:  ",
            fillchars = "eob: ,lastline:>",
          },
        },
      },
    },
  },
}
