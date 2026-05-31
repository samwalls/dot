local builtin = require('telescope.builtin')

-- see here for more info:
-- https://github.com/nvim-telescope/telescope.nvim/wiki/Showcase

-- <leader>ff => "find in files"
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- <leader>fgf => "find-git-files"
vim.keymap.set('n', '<leader>fgf', builtin.git_files, {})

-- <leader>fgf => "find-grep"
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- <leader>fgf => "find-buffers"
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- <leader>fu => "find-usages"
vim.keymap.set('n', '<leader>fu', builtin.lsp_references, {})

-- <leader>fsd => "find-symbols"
vim.keymap.set('n', '<leader>fsd', builtin.lsp_document_symbols, {})

-- <leader>fsd => "find-symbols"
vim.keymap.set('n', '<leader>fsw', builtin.lsp_workspace_symbols, {})

-- <leader>fh => "find-help-tags"
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- <leader>mtc => "misc-telescope-colorscheme"
vim.keymap.set('n', '<leader>mtc', builtin.colorscheme, {})

-- <leader>mtc => "misc-telescope-keymaps"
vim.keymap.set('n', '<leader>mtk', builtin.keymaps, {})
