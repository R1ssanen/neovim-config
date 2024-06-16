return {
    "danymat/neogen",
    -- Uncomment next line if you want to follow only stable versions
    version = "*",
    config = function()
        local neogen = require("neogen")

        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap("n", "<Leader>dg", ":lua require('neogen').generate()<CR>", opts)

        neogen.setup({
            languages = {
                ["cpp.doxygen"] = require("neogen.configurations.cpp"),
                ["c.doxygen"] = require("neogen.configurations.c")
            },
        })
    end,
}
