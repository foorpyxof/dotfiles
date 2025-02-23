-- bootstrap lazy.nvim, LazyVim and your plugin0
require("config.lazy")

vim.cmd("source ~/.vimrc")
vim.cmd("colorscheme fluoromachine")
vim.b.autoformat = false

vim.keymap.set({'n', 'i', 'v'}, '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set({'n', 'i', 'v'}, '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set({'n', 'i', 'v'}, '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set({'n', 'i', 'v'}, '<Right>', '<Nop>', { noremap = true, silent = true })
