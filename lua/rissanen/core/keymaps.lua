vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "increment a number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "decrement a number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "exit current window split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })

-- building & running

keymap.set("n", "<leader>bb", "<cmd>!bash build.sh<CR>", { desc = "run build.sh script in cwd" })
keymap.set("n", "<leader>br", "<cmd>!bash run.sh<CR>", { desc = "run run.sh script in cwd" })
