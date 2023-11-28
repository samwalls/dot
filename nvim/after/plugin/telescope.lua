local builtin = require('telescope.builtin')
-- <leader>f => "find"
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- <leader>fg => "find-in-git"
vim.keymap.set('n', '<leader>fgf', builtin.git_files, {})

--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

