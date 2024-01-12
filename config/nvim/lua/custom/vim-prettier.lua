-- Enable auto formatting of files that have "@format" or "@prettier" tag
vim.cmd([[ let g:prettier#autoformat = 1 ]])

-- Allow auto formatting for files without "@format" or "@prettier" tag
vim.cmd([[ let g:prettier#autoformat_require_pragma = 0 ]])
