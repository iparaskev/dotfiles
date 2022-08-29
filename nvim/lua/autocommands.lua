-- Autoremove trailing whitespaces
vim.api.nvim_create_autocmd("BufWritePre",
   {pattern="*", command='%s/\\s\\+$//e'})

-- Python identation
vim.api.nvim_create_autocmd("FileType",
   {pattern="py", command='setlocal tabstop=4 softtabstop=4 expandtab'})

-- matlab identation
vim.api.nvim_create_autocmd("FileType",
   {pattern="matlab", command=[[ setlocal tabstop=4 softtabstop=4
                               expandtab shiftwidth=4]]})
-- java identation
vim.api.nvim_create_autocmd("FileType",
   {pattern="java", command=[[ setlocal tabstop=4 softtabstop=4
                               expandtab shiftwidth=4]]})

-- c language indentation
vim.api.nvim_create_autocmd("FileType",
   {pattern="c", command='setlocal tabstop=8 softtabstop=8 noexpandtab shiftwidth=8'})

-- bash indentation
vim.api.nvim_create_autocmd("FileType",
   {pattern="sh", command='setlocal tabstop=4 softtabstop=4 expandtab'})

-- Latex spell check
vim.api.nvim_create_autocmd("FileType",
   {pattern="tex", command='setlocal spell spelllang=el,en_us'})
