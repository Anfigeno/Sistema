require("telescope").setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",

    sorting_strategy = "ascending",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0,
      },
      width = 0.45,
      height = 0.80,
    },
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<space>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<space>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<space>fh', builtin.help_tags, { desc = 'Telescope help tags' })
