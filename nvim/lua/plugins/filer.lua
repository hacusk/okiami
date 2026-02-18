return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    opts = {
      close_if_last_window = true,
      filesystem = {
        bind_to_cwd = false,
      },
    },
    keys = {
      { "<C-n>", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
    -- ディレクトリを開いた時に自動で Neo-tree を表示
    init = function()
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
            require("lazy").load({ plugins = { "neo-tree.nvim" } })
            vim.cmd("Neotree show")
          end
        end,
      })
    end,
  },
}
