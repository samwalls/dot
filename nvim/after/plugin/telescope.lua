local builtin = require('telescope.builtin')

-- <leader>ff => "find"
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- <leader>fgf => "find-git-files"
vim.keymap.set('n', '<leader>fgf', builtin.git_files, {})

-- <leader>fgf => "find-grep"
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- <leader>fgf => "find-buffers"
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

