-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winbar = "%=%m %f"
vim.opt.clipboard = "unnamed"
vim.opt.smartcase = true
vim.opt.conceallevel = 0
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.noswapfile = 1
-- vim.opt.nobackup = 1
vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile = true

vim.opt.iskeyword:append("-") -- hyphenated words recognized by searches / "asdf-asdf" is treated as one word
-- vim.highlight = "CursorLineNr ctermfg=220 ctermbg=25 gui=bold guifg=#ffd700 guibg=#005faf"
-- vim.highlight = "LineNr ctermfg=DarkGrey guifg=DarkGrey"

-- startify_remove mad cow at the top
vim.cmd([[ let g:startify_custom_header = [] ]])

-- Re-open at last position
vim.cmd([[ au BufReadPost * if line("'\"") >= 1 && line ("'\"") <= line("$") | exe "normal! g`\"" | endif ]])

vim.cmd([[ set noswapfile ]])
vim.cmd([[ set nobackup ]])
