-- remap button
vim.keymap.set("n", ";", ":", {})
vim.keymap.set("n", ":", ";", {})
vim.keymap.set("n", "gj", ":tabnext<cr>", { desc = "tab next" })
vim.keymap.set("n", "gk", ":tabprevious<cr>", { desc = "tab previous" })

-- Edit file
vim.keymap.set("n", "<leader>ee", ":Neotree position=current<cr>", { desc = "Neotree Current Folder" })
vim.keymap.set("n", "<leader>en", ":Neotree<cr>", { desc = "Neotree open folder" })
vim.keymap.set("n", "<leader>ev", ":tabnew ~/marc/GitHub/ubuntu/config/nvim/lua/custom/keymaps.lua<cr>",
	{ desc = "Edit Vim Keymap" })
vim.keymap.set("n", "<leader>eo", ":tabnew ~/marc/GitHub/ubuntu/config/nvim/lua/custom/options.lua<cr>",
	{ desc = "Edit Vim options" })
vim.keymap.set("n", "<leader>ez", ":tabnew ~/marc/GitHub/ubuntu/zshrc<cr>",
	{ desc = "Edit zshrc" })
vim.keymap.set("n", "<leader>eu", ":tabnew ~/marc/GitHub/ubuntu/ubuntu.md<cr>",
	{ desc = "Edit ubuntu.md file" })
vim.keymap.set("n", "<leader>er", ":tabnew ~/marc/GitHub/ubuntu/config/ranger/rc.conf<cr>",
	{ desc = "Edit ranger config file" })
vim.keymap.set("n", "<leader>ea", ":tabnew ~/marc/GitHub/ubuntu/aliases<cr>",
	{ desc = "Edit aliases" })

-- Go to folder
vim.keymap.set("n", "<leader>go", ":Neotree ~/Downloads<cr>", { desc = "Neotree Downloads" })
vim.keymap.set("n", "<leader>gc", ":Neotree ~/.config/<cr>", { desc = "Neotree Config Folder" })
vim.keymap.set("n", "<leader>gn", ":Neotree ~/Dropbox/notes/<cr>", { desc = "Neotree Notes" })

-- Functionality
vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save Progress" })
vim.keymap.set("i", "<C-s>", "<esc>:w<cr>", { desc = "Save Progress" })

vim.keymap.set("n", "x", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("n", "X", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("n", "<Del>", '"_x', { desc = "prevent yank character when deleting" })

vim.keymap.set("n", "H", "0", { desc = "" })
vim.keymap.set("v", "H", "0", { desc = "" })
vim.keymap.set("n", "L", "$", { desc = "" })
vim.keymap.set("v", "L", "$", { desc = "" })

vim.keymap.set("n", "<M-t>", ":Startify<cr>", { desc = "startify" })
vim.keymap.set("n", "<M-h>", "0", { desc = "" })
vim.keymap.set("n", "<M-l>", "$", { desc = "" })
vim.keymap.set("n", "<M-j>", ":tabnext<cr>", { desc = "" })
vim.keymap.set("n", "<M-k>", ":tabprevious<cr>", { desc = "" })

vim.keymap.set("n", "<leader>sR", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>sc", require("telescope.builtin").command_history, { desc = "Find command history" })
vim.keymap.set("n", "<leader>sC", require("telescope.builtin").commands, { desc = "Find available command" })


vim.keymap.set("i", "<C-d>", "<esc>ddi", { desc = "delete line when insert mode" })
vim.keymap.set("n", "<F10>", ":let @+ = expand('%:p')<cr>", { desc = "copy filepath" })

vim.keymap.set("n", '<leader>"', 'viw<esc>a"<esc>hbi"<esc>lel<cr>', { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader>'", "viw<esc>a'<esc>hbi'<esc>lel<cr>", { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader><", "viw<esc>a><esc>hbi<<esc>lel<cr>", { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader><", "viw<esc>a)<esc>hbi(<esc>lel<cr>", { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader>{", "viw<esc>a}<esc>hbi{<esc>lel<cr>", { desc = "Surround word with double quotes" })

vim.keymap.set("v", '<leader>"', '<esc>a"<esc>`<i"<esc>`>2l', { desc = "Surround word with double quotes" })
vim.keymap.set("v", "<leader>'", "<esc>a'<esc>`<i'<esc>`>2l", { desc = "Surround word with double quotes" })

vim.keymap.set("v", "<leader><Enter>", ":.! bc -l <CR>", { desc = "calculate number" })
vim.keymap.set("i", "jk", "<esc>", { desc = "escape from insert mode" })

vim.keymap.set("n", "tc", '"qyy', { desc = "copy to buffer q" })
vim.keymap.set("v", "tc", '"qy', { desc = "copy to buffer q" })
vim.keymap.set("n", "tp", '"qP', { desc = "paste from q buffer" })
vim.keymap.set("i", "tp", '<C-r>q', { desc = "paste from q buffer" })
vim.keymap.set("n", "tt", ':tabnew<cr>', { desc = "copy to buffer" })
vim.keymap.set("n", "tr", ':%s//gc<left><left><left>', { desc = "search and replace" })

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
