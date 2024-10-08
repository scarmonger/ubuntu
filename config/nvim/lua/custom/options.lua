-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.guicursor = ""
local o = vim.opt
o.winbar = "%=%m %f"
o.cursorlineopt = "number,line"
o.cursorline = true

local options = {
  clipboard = "unnamed",
  smartcase = true,
  conceallevel = 0,
  relativenumber = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undodir = "/home/mc/marc/GitHub/ubuntu/vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"

vim.opt.iskeyword:append("-") -- hyphenated words recognized by searches / "asdf-asdf" is treated as one word

-- vim.highlight = "CursorLineNr ctermfg=220 ctermbg=25 gui=bold guifg=#ffd700 guibg=#005faf"
-- vim.highlight = "LineNr ctermfg=DarkGrey guifg=DarkGrey"

-- startify_remove mad cow at the top
vim.cmd([[ let g:startify_custom_header = [] ]])

-- Go completion
vim.cmd([[ let g:go_def_mode='gopls' ]])
vim.cmd([[ let g:go_info_mode='gopls' ]])

-- shortcut
vim.cmd([[ cmap ;fj Neotree dir=/home/mc/marc/custom/fe-micro-standard<cr> ]])
vim.cmd([[ cmap ;fk Neotree dir=/home/mc/marc/custom/fe-micro-custom<cr> ]])
vim.cmd([[ cmap ;fl Neotree dir=/home/mc/marc/custom/fe-micro-standard-ent<cr> ]])
vim.cmd([[ cmap ;fh Neotree dir=/home/mc/marc/custom/fe-sfreport<cr> ]])
vim.cmd([[ cmap ;fc Neotree dir=/home/mc/marc/custom/fe-micro-container<cr> ]])
vim.cmd([[ cmap ;aa Neotree dir=/home/mc/marc/custom/backend/pjlhuillier/soulbackend <cr> ]])

-- Re-open at last position
vim.cmd([[ au BufReadPost * if line("'\"") >= 1 && line ("'\"") <= line("$") | exe "normal! g`\"" | endif ]])

-- Add undo break-points
vim.keymap.set("i", "<", "<<c-g>u")
vim.keymap.set("i", ">", "><c-g>u")
vim.keymap.set("i", "{", "{<c-g>u")
vim.keymap.set("i", "}", "}<c-g>u")
vim.keymap.set("i", "[", "[<c-g>u")
vim.keymap.set("i", "]", "]<c-g>u")
vim.keymap.set("i", "(", "(<c-g>u")
vim.keymap.set("i", ")", ")<c-g>u")
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", ";", ";<c-g>u")
vim.keymap.set("i", "<space>", "<space><c-g>u", { desc = "undo breakpoint" })
vim.keymap.set("i", "<CR>", "<CR><c-g>u", { desc = "undo breakpoint" })
vim.keymap.set("i", "<tab>", "<tab><c-g>u", { desc = "undo breakpoint" })

-- Primeagen: make transparent background (did not work)
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
