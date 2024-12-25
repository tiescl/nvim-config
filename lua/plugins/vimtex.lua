return {
  'lervag/vimtex',
  lazy = false,
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_quickfix_mode = 0
  end,
}
