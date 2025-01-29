require("neo-tree").setup({
  sources = { "filesystem", "buffers", "git_status" },
  open_files_do_not_replace_types = {
    "terminal",
    "Trouble",
    "qf",
    "edgy",
  },
  popup_border_style = "rounded",
  hide_root_node = true,
  enable_git_status = true,
  enable_diagnostics = true,
  filesystem = {
    filtered_items = {
      visible = false,
      hide_dotfiles = false,
      hide_gitignored = true,
      respect_gitignore = true,
    },
  },
  event_handlers = {
    {
      event = "file_opened",
      handler = function(file_path)
        require("neo-tree.command").execute({ action = "close" })
      end,
    },
  },
})