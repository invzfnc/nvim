-- leader key is set in lazy.lua
-- vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Open netrw" })

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete (d) without yanking to register" })
vim.keymap.set("n", "D", '"_D', { desc = "Delete (D) without yanking to register" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered" })

vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights on search when pressing Ctrl-c in normal mode" })

