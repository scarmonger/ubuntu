-- remap button
vim.keymap.set("n", ";", ":", {})
vim.keymap.set("n", ":", ";", {})


-- Primeagen
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "paste in visual mode, don't yank" })

vim.keymap.set("n", "<leader>d", '"_d', { desc = "delete into void" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "delete into void" })
vim.keymap.set("x", "<leader>d", '"_d', { desc = "delete into void" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "copy into system clipboard(+)" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "copy into system clipboard(+)" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "copy into system clipboard(+)" })

vim.keymap.set("n", "<leader>p", '"+p', { desc = "paste from system clipboard(+)" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "paste from system clipboard(+)" })

vim.keymap.set("n", "<F2>", ":let @+= @*<cr>", { desc = "copy * registers to clipboard" })
vim.keymap.set("n", "<F4>", ":dis<cr>", { desc = "check registers" })
vim.keymap.set("i", "<F4>", "<ESC>:reg<CR>", { desc = "check registers" })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "change project" })
-- go back to previous session with <tmux-leader>+L

vim.keymap.set("i", "<C-v>", "<esc>pa", { desc = "paste in insert mode" })
vim.keymap.set(
	"n",
	"<leader>se",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "replace word using sed" }
)
vim.keymap.set("n", "<leader>xe", "<cmd>!chmod +x %<CR>", { silent = true, desc = "make this file executable" })
