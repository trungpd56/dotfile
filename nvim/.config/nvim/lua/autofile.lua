local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local mytype = augroup("mypython", { clear = True })


autocmd("BufWritePre", {
    group = mytype,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd("FileType", {
    group = mytype,
    pattern = "yaml.ansible",
    callback = function()
        vim.keymap.set("n", "<f9>", ":w<cr>:!ansible-playbook %<cr>")
    end,
})

autocmd("FileType", {
    group = mytype,
    pattern = "go",
    callback = function()
        vim.keymap.set("n", "<f9>", ":w<cr>:!go run %<cr>")
    end,
})

autocmd("FileType", {
    group = mytype,
    pattern = "python",
    callback = function()
        vim.keymap.set("n", "<f9>", ":w<cr>:!python3 %<cr>")
        vim.keymap.set({ "n", "i" }, "<f8>", "<esc>:w<cr>:!pytest -s<cr>")
        vim.keymap.set("n", "<leader>b", "obreakpoint()<esc>")
    end,
})
