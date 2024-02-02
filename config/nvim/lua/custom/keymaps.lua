-- CHEATSHEET
-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n

-- remap button
vim.keymap.set("n", ";", ":", {})
vim.keymap.set("n", ":", ";", {})
vim.keymap.set("i", "jk", "<esc>", { desc = "escape from insert mode" })
vim.keymap.set("i", "kj", "<esc>", { desc = "escape from insert mode" })
vim.keymap.set("n", "gj", ":tabnext<cr>", { desc = "tab next" })
vim.keymap.set("n", "gk", ":tabprevious<cr>", { desc = "tab previous" })
vim.keymap.set("v", "<leader><Enter>", ":.! bc -l <CR>", { desc = "calculate number" })

vim.keymap.set("n", "Q", "<nop>", {})

-- Edit file
vim.keymap.set("n", "<leader>en", ":Neotree reveal position=current<cr>", { desc = "Neotree Full Window" })
vim.keymap.set("n", "<leader>ee", ":Neotree reveal<cr>", { desc = "Neotree left pane" })
vim.keymap.set("n", "<leader>ei", ":e ~/marc/GitHub/ubuntu/config/nvim/init.lua<cr>",
	{ desc = "Edit init.lua" })
vim.keymap.set("n", "<leader>ep", ":e ~/marc/GitHub/ubuntu/config/nvim/lua/custom/plugins/plugins.lua<cr>",
	{ desc = "Edit plugins.lua" })
vim.keymap.set("n", "<leader>ek", ":e ~/marc/GitHub/ubuntu/config/nvim/lua/custom/keymaps.lua<cr>",
	{ desc = "Edit Vim Keymap" })
vim.keymap.set("n", "<leader>eo", ":e ~/marc/GitHub/ubuntu/config/nvim/lua/custom/options.lua<cr>",
	{ desc = "Edit Vim options" })
vim.keymap.set("n", "<leader>ez", ":e ~/marc/GitHub/ubuntu/zshrc<cr>",
	{ desc = "Edit zshrc" })
vim.keymap.set("n", "<leader>eu", ":e ~/marc/GitHub/ubuntu/ubuntu.md<cr>",
	{ desc = "Edit ubuntu.md file" })
vim.keymap.set("n", "<leader>er", ":e ~/marc/GitHub/ubuntu/config/ranger/rc.conf<cr>",
	{ desc = "Edit ranger config file" })
vim.keymap.set("n", "<leader>ea", ":e ~/marc/GitHub/ubuntu/aliases<cr>",
	{ desc = "Edit aliases" })
vim.keymap.set("n", "<leader>eb", ":e ~/marc/GitHub/ubuntu/config/nvim/lua/custom/abbreviation.lua<cr>",
	{ desc = "Edit abbreviation" })

vim.keymap.set("n", "<leader>ty", ":let @+= @*<cr>", { desc = "transfer / copy * registers to clipboard" })

vim.keymap.set("n", "<c-u>", '"uyy', { desc = "copy to buffer u" })
vim.keymap.set("v", "<c-u>", '"uy', { desc = "copy to buffer u" })
vim.keymap.set("n", "<m-u>", '"uP', { desc = "paste from u buffer" })
vim.keymap.set("i", "<m-u>", '<c-r>u', { desc = "paste from u buffer" })
vim.keymap.set("n", "<leader>tt", ':tabnew<cr>', { desc = "new tab" })
vim.keymap.set("n", "<leader>tr", ':%s//gc<left><left><left>', { desc = "search and replace" })
vim.keymap.set("n", "<leader>tm", ":tabm<space>", { desc = "Move tab to [n] input" })
vim.keymap.set("n", "<leader>tg", "yy:bd<CR>:<C-r>0<CR>", { desc = "go to bookmark selection" })
vim.keymap.set("n", "<leader>th", ":! thorium-browser \"<c-r>%\"<CR>", { desc = "preview markdown" })
vim.keymap.set("n", "<leader>tf", ":! firefox \"<c-r>%\"<CR>", { desc = "preview markdown" })
vim.keymap.set("n", "<leader>ts", ":set spell!<cr>", { desc = "Set Wrap" })

vim.keymap.set("n", "<leader>tc", ":let @+ = expand('%:p')<cr>", { desc = "copy filepath" })
vim.keymap.set("n", "<leader>t.", ":pwd<enter>", { desc = "check cwd / current working directory" })
vim.keymap.set("n", "<leader>tD",
	":let @+ = expand('%:p')<cr>o<c-r>+<Esc>dF/xv0d:let @+ = @*<cr>i<backspace><esc>:cd <c-r>+<enter>",
	{ desc = "change cwd to current file location" })

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

--keywordprg
vim.keymap.set("n", "<leader>tk", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- new file
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })

-- diagnostic
local diagnostic_goto = function(next, severity)
	local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
	severity = severity and vim.diagnostic.severity[severity] or nil
	return function()
		go({ severity = severity })
	end
end
-- vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
-- vim.keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
-- vim.keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

vim.keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
vim.keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- Functionality
vim.keymap.set("i", "<C-d>", "<esc>ddi", { desc = "delete line when insert mode" })
vim.keymap.set("i", "<C-v>", "<C-r>\"", { desc = "paste in insert mode" })
vim.keymap.set("n", "<C-q>", ":bd!<cr>", { desc = "Close file" })

vim.keymap.set("n", "x", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("n", "X", '"_x', { desc = "prevent yank character when deleting" })
vim.keymap.set("n", "<Del>", '"_x', { desc = "prevent yank character when deleting" })

vim.keymap.set("n", "H", "0", { desc = "" })
vim.keymap.set("v", "H", "0", { desc = "" })
vim.keymap.set("n", "L", "$", { desc = "" })
vim.keymap.set("v", "L", "$h", { desc = "" })

vim.keymap.set("n", "<M-t>", ":Startify<cr>", { desc = "startify" })
vim.keymap.set("n", "<M-h>", vim.lsp.buf.hover, { desc = "" })
vim.keymap.set("n", "<M-l>", "J", { desc = "" })
vim.keymap.set("n", "K", ":bnext<cr>", { desc = "" })
vim.keymap.set("n", "J", ":bprevious<cr>", { desc = "" })
vim.keymap.set("i", "<M-k>", "<esc>:bnext<cr>", { desc = "" })
vim.keymap.set("i", "<M-j>", "<esc>:bprevious<cr>", { desc = "" })
vim.keymap.set("n", "<M-q>", ":TodoQuickFix", { desc = "To-do quickfixlist" })
vim.keymap.set("n", "<M-w>", ":set wrap!<cr>", { desc = "Set Wrap" })

vim.keymap.set("n", "<leader>sR", require("telescope.builtin").resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>sr", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
vim.keymap.set("n", "<leader>sc", require("telescope.builtin").command_history, { desc = "Find command history" })
vim.keymap.set("n", "<leader>sC", require("telescope.builtin").commands, { desc = "Find available command" })
vim.keymap.set("n", "<leader>so", require("telescope.builtin").vim_options, { desc = "Find vim_options" })

vim.keymap.set("n", "<F5>", ":UndotreeToggle<CR>", { desc = "UndotreeToggle" })
vim.keymap.set("n", "<F11>", 'a<C-R>=strftime("%c")<CR><Esc>', { desc = "insert date and time" })

vim.keymap.set("n", '<leader>"', 'viw<esc>a"<esc>hbi"<esc>lel<cr>', { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader>'", "viw<esc>a'<esc>hbi'<esc>lel<cr>", { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader><", "viw<esc>a><esc>hbi<<esc>lel<cr>", { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader><", "viw<esc>a)<esc>hbi(<esc>lel<cr>", { desc = "Surround word with double quotes" })
vim.keymap.set("n", "<leader>{", "viw<esc>a}<esc>hbi{<esc>lel<cr>", { desc = "Surround word with double quotes" })

vim.keymap.set("v", '<leader>"', '<esc>a"<esc>`<i"<esc>`>2l', { desc = "Surround word with double quotes" })
vim.keymap.set("v", "<leader>'", "<esc>a'<esc>`<i'<esc>`>2l", { desc = "Surround word with double quotes" })


vim.keymap.set("n", "<leader>1", "1gt", { desc = "go to tab" })
vim.keymap.set("n", "<leader>2", "2gt", { desc = "go to tab" })
vim.keymap.set("n", "<leader>3", "3gt", { desc = "go to tab" })
vim.keymap.set("n", "<leader>4", "4gt", { desc = "go to tab" })
vim.keymap.set("n", "<leader>5", "5gt", { desc = "go to tab" })

-- vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zzzv", { desc = "quickfixlist cnext" })
-- vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zzzv", { desc = "quickfixlist cprev" })
vim.keymap.set("n", "<M-f>", "<cmd>cnext<CR>zz", { desc = "quickfixlist cnext" })
vim.keymap.set("n", "<M-d>", "<cmd>cprev<CR>zz", { desc = "quickfixlist cprev" })
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz", { desc = "quickfixlist lnext" })
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz", { desc = "quickfixlist lprev" })

-- Add undo break-points
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")
vim.keymap.set("i", "<space>", "<space><c-g>u", { desc = "undo breakpoint" })
vim.keymap.set("i", "<CR>", "<CR><c-g>u", { desc = "undo breakpoint" })
vim.keymap.set("i", "<tab>", "<tab><c-g>u", { desc = "undo breakpoint" })

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moving text" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moving text" })
vim.keymap.set("i", "<C-j>", "<esc>:m .+1<CR>==i", { desc = "moving text" })
vim.keymap.set("i", "<C-k>", "<esc>:m .-2<CR>==i", { desc = "moving text" })
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
vim.keymap.set(
	"n",
	"<leader>ur",
	"<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
	{ desc = "Redraw / clear hlsearch / diff update" }
)

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
vim.keymap.set("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.keymap.set("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
vim.keymap.set("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.keymap.set("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

vim.keymap.set("n", "\\html", ":read $HOME/.config/nvim/snippets/skeleton.html<CR>3jwf>a", { desc = "snippets" })
vim.keymap.set("n", "\\sig", ":read $HOME/.config/nvim/snippets/signature<CR>", { desc = "snippets" })
vim.keymap.set("n", "\\bm", ":tabnew $HOME/.config/nvim/snippets/bm<CR>", { desc = "bookmark" })

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", {})
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", {})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", {})

-- Primeagen

vim.keymap.set("n", "<leader>d", '"_d', { desc = "delete into void" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "delete into void" })
vim.keymap.set("x", "<leader>d", '"_d', { desc = "delete into void" })

vim.keymap.set("n", "<leader>y", '"+y', { desc = "copy into system clipboard(+)" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "copy into system clipboard(+)" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "copy into system clipboard(+)" })

vim.keymap.set("n", "<leader>p", '"+p', { desc = "paste from system clipboard(+)" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "paste from system clipboard(+)" })
vim.keymap.set("x", "<leader>P", "\"_dP", { desc = "paste in visual mode, don't yank" })
-- foo
-- bar
-- copy foo, visual select bar, <leader>p, and pppp afterwards

-- vim.keymap.set("n", "<F2>", ":let @+= @*<cr>", { desc = "copy * registers to clipboard" })
-- vim.keymap.set("n", "<F4>", ":dis<cr>", { desc = "check registers" })
-- vim.keymap.set("i", "<F4>", "<ESC>:reg<CR>", { desc = "check registers" })

-- vim.keymap.set("n", "<C-f>", ":Prettier<CR>", { desc = "Prettier" })
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "change project" })
-- go back to previous session with <tmux-leader>+L

vim.keymap.set(
	"n",
	"<leader>se",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gcI<Left><Left><Left>]],
	{ desc = "replace word using sed" }
)

vim.keymap.set("n", "<leader>xe", "<cmd>!chmod +x %<CR>", { silent = true, desc = "make this file executable" })

-- markdown
vim.keymap.set("n", "<leader>cn", "yi(0di[hpF/dT[x", { desc = "change name markdown attachment" })
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "Launch Lazygit" })
