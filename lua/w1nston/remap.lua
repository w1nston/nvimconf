
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Yank selection into system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", 'gg"+yG')

--" Navigate the quickfix list, the list when for instance doing `:grep <term> <regexp>`
vim.keymap.set("n", "<C-k>", vim.cmd.cnext)
vim.keymap.set("n", "<C-j>", vim.cmd.cprev)

-- Move selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Make executable
vim.keymap.set("n", "<leader>x", ':!chmod +x %')

-- Start new tmux session
--vim.keymap.set("n", "<silent> <C-f>", ':silent !tmux neww tmux-sessionizer<CR>')

