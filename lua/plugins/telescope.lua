return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',

      -- `build` is used to run some command when the plugin is installed/updated.
      -- This is only run then, not every time Neovim starts up.
      build = 'make',

      -- `cond`: should this plugin should be installed and loaded?
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },

    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    -- `:help telescope` and `:help telescope.setup()`
    require('telescope').setup {
      defaults = {
        layout_strategy = 'horizontal',
        layout_config = {
          horizontal = {
            preview_width = 0.5,
          },
          preview_cutoff = 80,
        },
        file_ignore_patterns = {
          'node_modules/',
          'docker/',
          'venv/',
          '.git/',
          'Downloads',
          'Applications',
          'Pictures',
          'Library',
          'Music',
        },
      },
      pickers = {
        find_files = {
          fuzzy = false,
          no_ignore = true,
          hidden = true,
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- telescope extensions
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- `:help telescope.builtin`
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = '[S]earch [F]iles' })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = '[S]earch [G]it [F]iles' })
    vim.keymap.set('n', '<leader>ps', builtin.grep_string, { desc = 'Search the string under cursor' })
    vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
  end,
}
