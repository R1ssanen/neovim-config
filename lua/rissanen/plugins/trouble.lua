return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<CR>",
            desc = "diagnostics (Trouble)",
        },
        {
            "<leader>xf",
            "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
            desc = "buffer Diagnostics (Trouble)",
        },
        {
            "<leader>xs",
            "<cmd>Trouble symbols toggle focus=false<CR>",
            desc = "symbols (Trouble)",
        },
        {
            "<leader>xd",
            "<cmd>Trouble lsp toggle focus=false win.position=right<CR>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>xl",
            "<cmd>Trouble loclist toggle<CR>",
            desc = "location List (Trouble)",
        },
        {
            "<leader>xq",
            "<cmd>Trouble qflist toggle<CR>",
            desc = "quickfix List (Trouble)",
        },
    },
}
