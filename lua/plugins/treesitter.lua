return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  -- `:help nvim-treesitter`
  opts = {
    ensure_installed = {
      'javascript',
      'typescript',
      'json',
      'python',
      'sql',
      'cpp',
      'html',
      'lua',
      'markdown',
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
}
