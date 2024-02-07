require('telescope').setup({
    defaults = {
        layout_config = {
            height = 0.95,
            width = 0.95,
            preview_width = 0.6
        }
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg',builtin.git_files, {})

