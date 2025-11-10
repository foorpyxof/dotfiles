-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd("source ~/.vimrc")
vim.cmd("colorscheme catppuccin")
-- vim.b.autoformat = false

vim.keymap.set("n", "<leader>r", "<C-W>r")

vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>m", function()
  vim.cmd("!make")
end)
