-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit Inset Mode
-- ThePrimeagen
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Move highlighted lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move selected lines up" })

-- Exit Terminal Mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- LSP
-- Code action
vim.keymap.set("n", "<leader>lc", vim.lsp.buf.code_action, { desc = "Code Action" })
-- Rename Symbol
vim.keymap.set("n", "<leader>lR", vim.lsp.buf.rename, { desc = "LSP Rename Symbol" })
