local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local setup = augroup("setup", { clear = true })
autocmd("TextYankPost", {
	group = setup,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

autocmd("InsertLeave", {
	group = setup,
	pattern = "*",
	command = "set nopaste",
})

autocmd("BufWritePre", {
	group = setup,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

autocmd({ "TermOpen", "BufEnter" }, {
	group = setup,
	pattern = { "*" },
	callback = function()
		if vim.opt.buftype:get() == "terminal" then
			vim.cmd(":startinsert")
			vim.opt.nu = false
			vim.opt.relativenumber = false
		end
	end,
})

local ThePrimeagen_Fugitive = augroup("ThePrimeagen_Fugitive", { clear = true })
autocmd("BufWinEnter", {
	group = ThePrimeagen_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git("push")
		end, opts)

		-- rebase always
		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, opts)

		-- NOTE: It allows me to easily set the branch i am pushing and any tracking
		-- needed if i did not set the branch up correctly
		vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
	end,
})
