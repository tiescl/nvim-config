return {
  -- completion, annotations and signatures of Neovim apis
  'folke/lazydev.nvim',
  ft = 'lua',
  opts = {
    library = {
      { path = 'luvit-meta/library', words = { 'vim%.uv' } },
    },
  },
}
