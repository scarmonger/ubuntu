-- remap button
vim.keymap.set("n", ";", ":", {})
vim.keymap.set("n", ":", ";", {})
vim.keymap.set("n", "gj", ":tabnext<cr>", { desc = "tab next" })
vim.keymap.set("n", "gk", ":tabprevious<cr>", { desc = "tab previous" })
-- vim.keymap.set("n", "gh", ":tabprevious<cr>", { desc = "tab previous" })

vim.keymap.set("n", "<leader>ee", ":Neotree position=current<cr>", { desc = "Open Current Folder" })
vim.keymap.set("n", "<leader>en", ":Neotree<cr>", { desc = "Open Current Folder" })

vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save Progress" })
vim.keymap.set("i", "<C-s>", "<esc>:w<cr>", { desc = "Save Progress" })

vim.keymap.set("n", "<C-w>t", ":Startify", { desc = "startify" })

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
