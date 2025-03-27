require("http-client").setup()

vim.keymap.set("n", "<space>z", "<cmd>HttpClient sendRequest<cr>")
