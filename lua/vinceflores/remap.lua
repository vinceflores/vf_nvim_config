
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<Esc>", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pm", "<cmd>PackerSync<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+y")

-- window management
vim.keymap.set("n", "<leader>[", ":vsplit<CR>")
vim.keymap.set("n", "<leader>]", ":split<CR>")
vim.keymap.set("n", "<leader>|", ":close<CR>")

-- delete backwards
vim.keymap.set('i', '<A-BS>', '<C-w>', { noremap = true, silent = true })

-- nerd comments
-- gcc: single line comment
-- gc+<vim_motion>: multi line comment
-- gcgc: toggle chained comments

-- Lspsaga
-- vim.keymap.set("n", "<leader>caa","<cmd>Lspsaga code_action<CR>", { noremap = true })
