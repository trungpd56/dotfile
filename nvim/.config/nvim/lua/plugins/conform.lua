return
{
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                go = { "goimports", "gofmt" },
                html = { "prettierd", "prettier" },

            },
        })
        vim.keymap.set({ "n", "v" }, "<leader>fm", function()
        -- vim.keymap.set({ "n", "v" }, "<F3>", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
