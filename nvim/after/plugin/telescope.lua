local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Find [F]iles' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Find by [G]rep' })
