return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

        local function change_nvim_tree_dir()
            local nvim_tree = require("nvim-tree")
            nvim_tree.change_dir(vim.fn.getcwd())
        end

        auto_session.setup({
            log_level = "error",
            auto_restore_enabled = true,
            auto_save_enabled = true,
            auto_session_suppress_dirs = nil,
            post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
            pre_save_cmds = { "NvimTreeClose" },
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "restore workspace" })
        keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "save workspace" })
    end
}
