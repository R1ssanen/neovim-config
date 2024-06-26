return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                cpp = { "clang-format" },
                c = { "clang-format" },
                json = { "prettier" },
                cmake = { "cmake-format" },
                markdown = { "markdownlint" },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })
    end,
}
