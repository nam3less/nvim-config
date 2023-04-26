local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader><leader>', builtin.find_files, {
    desc = "Find Files"
})

vim.keymap.set('n', '<leader>fg', builtin.git_files, {
    desc = "Find Files in Git"
})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {
    desc = "Fuzzy Search"
})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {
    desc = "Recent File"
})


vim.keymap.set('n', '<leader>bb', builtin.buffers, {
    desc = "Buffers"
})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {
    desc = "Search Help"
})


