return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = {"nvim-mini/mini.icons"},
  opts = {
    default_file_explorer = true,
  },
    keys = {
      { "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
    },
}
