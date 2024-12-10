--  See `:help vim.keymap.set()`
vim.keymap.set('n', '<leader>er', ':Explore<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pv', ':Vex<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set('x', '<leader>y', [["*y]])

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set('n', '<leader>gs', '<cmd>tab G<CR>')
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>')
vim.keymap.set('n', '<C-f>', '<cmd>!tmux neww tmux-sessionizer<CR>')

-- diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<left>', '<cmd>echo "use h"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "use l"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "use k"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "use j"<CR>')

-- split navigation
-- See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
