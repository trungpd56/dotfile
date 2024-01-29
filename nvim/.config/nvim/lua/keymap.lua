vim.keymap.set({ "i"}, "jj", "<esc>")
vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>et", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "U", "<C-R>")
vim.keymap.set("n", "<bs>", '<C-^>`"zz')
vim.keymap.set("n", "c*", "*``cgn")
vim.keymap.set("n", "c#", "#``cgN")
vim.keymap.set("i", "<C-e>", "<C-o>$")
vim.keymap.set("n", "<C-e>", "A")
vim.keymap.set("n", "<leader>w", "<cmd>:w!<cr>")
vim.keymap.set("n", "<leader>q", "<cmd>:q!<cr>")
vim.keymap.set("n", "<leader>fa", "<cmd>:set ft=yaml.ansible<cr>")
vim.keymap.set("ia", "ife", "if err != nil {<CR>log.Fatal(err)<CR>}")

-- Web reference
vim.keymap.set("n", "<C-w><left>", "5<C-w><")
vim.keymap.set("n", "<C-w><right>", "5<C-w>>")
vim.keymap.set("n", "<C-w><up>", "5<C-w>+")
vim.keymap.set("n", "<C-w><down>", "5<C-w>-")
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")


-- New tab
-- local opts = { noremap = true, silent = true }
-- vim.keymap.set("n", "te", ":tabedit")
-- vim.keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
-- vim.keymap.set("n", "ss", ":split<Return>", opts)
-- vim.keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
-- vim.keymap.set("n", "sh", "<C-w>h")
-- vim.keymap.set("n", "sk", "<C-w>k")
-- vim.keymap.set("n", "sj", "<C-w>j")
-- vim.keymap.set("n", "sl", "<C-w>l")
