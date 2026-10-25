vim.lsp.config('clangd', {
	cmd = { 'clangd' },
	filetypes = { 'c', 'cpp', 'h', 'objc', 'objcpp' },
})

vim.lsp.config('zls', {
	cmd = { 'zls' },
	filetypes = { 'zig' },
})

vim.lsp.enable('clangd')
vim.lsp.enable('zls')
