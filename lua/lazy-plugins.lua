require('lazy').setup({
  'tpope/vim-sleuth',
  'tpope/vim-fugitive',
  'mbbill/undotree',

  require 'plugins.gitsigns',
  require 'plugins.telescope',
  require 'plugins.lazydev',
  require 'plugins.lspconfig',
  require 'plugins.conform',
  require 'plugins.cmp',
  require 'plugins.catppuccin',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.context',

  { 'Bilal2453/luvit-meta', lazy = true },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
