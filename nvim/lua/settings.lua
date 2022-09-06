require('plugins') -- Plugins settings

local options = vim.o -- This is an alias to vim.api.nvim_set_option()
local window_options = vim.wo -- This is an alias to vim.api.nvim_win_set_option()
local buffer_options = vim.bo -- This is an alias to vim.api.nvim_buf_set_option()

options.background = "dark"
options.hlsearch = true -- highlight matches at search
options.mouse = "a" -- Mouse support.
options.guicursor = false -- Disable changing the cursor

window_options.number = true
window_options.cursorline = true -- highlight current line
--window_options.foldmethod = "indent" -- Folding
window_options.colorcolumn = "80"

buffer_options.expandtab = true -- Expand tabs.
buffer_options.shiftwidth = 4
buffer_options.tabstop = 4

vim.cmd("syntax enable")
vim.cmd("colorscheme gruvbox")
--vim.cmd("autocmd BufReadPost * \\ if line("'"") >= 1 && line("'"") <= line("$") && &ft !~# 'commit' \\ | exe "normal! g`"" \\ | endif")
