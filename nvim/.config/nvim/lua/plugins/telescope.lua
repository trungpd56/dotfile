return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', 'gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fg', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

        require('telescope').setup {
            defaults = {
                layout_strategy = 'vertical',
                layout_config = { height = 0.95 },
                file_ignore_patterns = {
                    "pytest",
                    "pycache"
                }
            },

        }
    end,
}
