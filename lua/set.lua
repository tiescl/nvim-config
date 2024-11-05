-- `:help option-list`

-- mouse mode, can be useful for resizing splits
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.breakindent = true
vim.opt.signcolumn = 'yes'

-- no backups
vim.opt.undofile = true
vim.opt.updatetime = 50
vim.opt.swapfile = false
vim.opt.backup = false

-- how much to wait before keymap completes
vim.opt.timeoutlen = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- certain whitespace characters in the editor.
-- `:help 'list'`
-- `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '> ', trail = '·', nbsp = '␣' }

-- preview substitutions live
vim.opt.inccommand = 'split'

vim.opt.scrolloff = 8

-- numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.colorcolumn = '85'

-- misc
vim.opt.showcmd = true
vim.opt.showmode = false
vim.opt.ttimeoutlen = 25
vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20'

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- tab options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- netrw settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.winsize = 25

-- dumb SQL
vim.g.ftplugin_sql_omni_key = '<C-j>'
