return {
  {
    "junegunn/fzf",
    build = "./install --all",
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf", "airblade/vim-rooter" },
    keys = {
      { "<C-p>", function()
        if vim.fn.finddir(".git", vim.fn.expand("%:p:h") .. ";") ~= "" then
          vim.cmd("GFiles")
        else
          vim.cmd("Files")
        end
      end, desc = "Find files" },
      { "<C-g>", "<cmd>Rg<CR>", desc = "Grep" },
    },
  },
}
