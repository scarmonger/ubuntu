-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.guicursor = ""

vim.opt.winbar = "%=%m %f"
vim.opt.clipboard = "unnamed"
vim.opt.smartcase = true
vim.opt.conceallevel = 0
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undodir = "/home/mc/marc/GitHub/ubuntu/vim/undodir"
vim.opt.undofile = true

-- vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.opt.iskeyword:append("-") -- hyphenated words recognized by searches / "asdf-asdf" is treated as one word

-- vim.highlight = "CursorLineNr ctermfg=220 ctermbg=25 gui=bold guifg=#ffd700 guibg=#005faf"
-- vim.highlight = "LineNr ctermfg=DarkGrey guifg=DarkGrey"

-- startify_remove mad cow at the top
vim.cmd([[ let g:startify_custom_header = [] ]])

-- Re-open at last position
vim.cmd([[ au BufReadPost * if line("'\"") >= 1 && line ("'\"") <= line("$") | exe "normal! g`\"" | endif ]])

-- Primeagen: make transparent background (did not work)
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
