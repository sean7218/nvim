vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


