return {
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup {
            icons = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
        vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle quickfix<cr>",
            { silent = true, noremap = true }
        )
    end
}
