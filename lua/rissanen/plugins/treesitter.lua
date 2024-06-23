return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            -- enable indentation
            indent = { enable = true },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true,
            },

            modules = {},

            sync_install = false,
            auto_install = false,
            ignore_install = {},

            -- ensure these language parsers are installed
            ensure_installed = {
                "json",
                "yaml",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "gitignore",
                "c",
                "cpp",
                "cmake",
                "make",
                "markdown",
                "markdown_inline"
            },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<S-s>",
                    node_incremental = "<S-d>",
                    node_decremental = "<S-a>",
                    scope_incremental = false,
                },
            },
        })
    end,
}
