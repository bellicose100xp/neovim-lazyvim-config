-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Normal Mode Keymaps
vim.keymap.set("n", "J", "10jzz")
vim.keymap.set("n", "K", "10kzz")
vim.keymap.set("n", "H", "10h")
vim.keymap.set("n", "L", "10l")
vim.keymap.set("n", "<leader>j", "J", { desc = "Join line below" })

vim.keymap.set("n", "<leader>o", "o<ESC>k", { desc = "Add Empty Line Below" })
vim.keymap.set("n", "<leader>i", "O<ESC>j", { desc = "Add Empty Line Above" })

vim.keymap.set("n", "<leader>v", "<C-q>", { desc = "Visual Block Mode" }) -- Visual block mode

-- Visual Mode Keymaps
vim.keymap.set("v", ">", ">gv") -- Re-select text after indentation
vim.keymap.set("v", "<", "<gv")

-- Move lines up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true })
vim.keymap.set("i", "<A-j>", "<ESC>:m .+1<CR>==gi", { silent = true })
vim.keymap.set("i", "<A-k>", "<ESC>:m .-1<CR>==gi", { silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "s", '"_s')

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })
