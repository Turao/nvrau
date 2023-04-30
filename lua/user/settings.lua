-- vim options
-- vim.cmd('colorscheme rose-pine')
-- vim.cmd('colorscheme one-monokai')
-- vim.cmd('colorscheme aylin')
-- vim.cmd('colorscheme oceanicnext')
-- vim.cmd('colorscheme kanagawa')
vim.cmd("colorscheme catppuccin")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- spaces and tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.copyindent = true

-- mouse
vim.opt.mouse = "a"

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- ui
vim.opt.hidden = true
vim.opt.number = true
vim.opt.wildmenu = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.termguicolors = true

-- other
vim.opt.backup = false
vim.opt.swapfile = false


