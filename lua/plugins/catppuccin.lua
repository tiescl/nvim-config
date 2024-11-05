return {
  -- `:Telescope colorscheme`.
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin'

    -- prev color: #010618 (%s/000000/010618/gc)
    vim.cmd.hi 'Normal guibg=#000000'
    vim.cmd.hi 'LineNr guibg=#000000'
    vim.cmd.hi 'SignColumn guibg=#000000'
    vim.cmd.hi 'NonText guibg=#000000'
    vim.cmd.hi 'NormalNC guibg=#000000'
    vim.cmd.hi 'Comment gui=none'
    vim.cmd.hi 'TreesitterContextBottom gui=NONE'
    vim.cmd 'hi TreesitterContextLineNumberBottom gui=NONE'
  end,
}
