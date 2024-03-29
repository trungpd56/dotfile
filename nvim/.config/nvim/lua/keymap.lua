vim.keymap.set({"n", "v"}, ";", ":")
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("i", "<c-c>", "<Esc>")
vim.keymap.set("n", "<bs>", '<C-^>`"zz')
vim.keymap.set("n", "<leader>q", ":qa!<cr>")
vim.keymap.set("n", "<leader>w", ":wqa!<cr>")
vim.keymap.set("n", "<leader>=", "<C-w>=")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-Down>", "<C-d>zz")
vim.keymap.set("n", "<C-Up>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({ "n", "v" }, "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>c", [["_c]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])
vim.keymap.set("n", "U", "<C-R>")
vim.keymap.set("n", "c*", "*``cgn")
vim.keymap.set("n", "c#", "#``cgN")
vim.keymap.set("i", "<C-e>", "<C-o>$")
vim.keymap.set("n", "<C-e>", "A")
vim.keymap.set("ia", "ife", "if err != nil {<CR>log.Fatal(err)<CR>}")
vim.keymap.set("n", "Q", "<nop>")

-- Terminal config
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l")

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<tab>", ":tabnext<cr>", opts)
vim.keymap.set("n", "<s-tab>", ":tabprev<cr>", opts)
vim.keymap.set("n", "tt", ":tabnew | term<cr>")
vim.keymap.set("n", "tf", ":vnew | term<cr>")
vim.keymap.set("n", "tj", ":new | term<cr>")
vim.keymap.set("n", "so", "<C-w>o")
vim.keymap.set("n", "sh", "<C-w>h")
vim.keymap.set("n", "sk", "<C-w>k")
vim.keymap.set("n", "sj", "<C-w>j")
vim.keymap.set("n", "sl", "<C-w>l")
vim.keymap.set("n", "st", function()
	vim.cmd.new()
	vim.cmd.wincmd("j")
	vim.api.nvim_win_set_height(0, 15)
	vim.api.nvim_set_option_value("winfixheight", true, { win = 0 })
	vim.cmd("term")
end)
