-- configure movement(<C+hjkl>)
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- screen split 
vim.keymap.set('n', '<leader>wh', '<cmd>split<CR>', { desc = 'Horizontal split' })
vim.keymap.set('n', '<leader>wv', '<cmd>vsplit<CR>', { desc = 'Vertical split' })


-- exit highlighting on search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
