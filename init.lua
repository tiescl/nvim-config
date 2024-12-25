vim.g.have_nerd_font = true

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- require 'set'
require 'remap'
require 'lazy-init'
require 'lazy-plugins'

vim.cmd 'source ~/.config/nvim/lua/set2.vim'

-- `:help lua-guide-autocommands`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight on yank',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_user_command('FormatDisable', function()
  vim.b.disable_autoformat = true
end, {
  desc = 'Disable autoformat-on-save',
})

vim.api.nvim_create_user_command('FormatEnable', function()
  vim.b.disable_autoformat = false
end, {
  desc = 'Re-enable autoformat-on-save',
})

vim.api.nvim_create_user_command('Q', 'q', {})
vim.api.nvim_create_user_command('W', 'w', {})

-- `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
