local U = require('utils')
local fn = vim.fn
local xdg_data_home_nvim = fn.stdpath('data')

vim.cmd 'syntax enable'
vim.cmd 'filetype plugin indent on'
vim.cmd 'set shortmess+=c'
vim.cmd 'set colorcolumn=80'
vim.cmd 'au FileType css,scss,sass,html setlocal spell spelllang=en_us'

local indent = 2

local options = {
    hidden = true, -- Round indent
    updatetime = 300,
    scrolloff = 5, -- Lines of context
    shiftround = true, -- Round indent
    showmode = false, -- Don't show the mode
    sidescrolloff = 10, -- Columns of context
    smartcase = true, -- Don't ignore case with capitals
    ignorecase = true,
    splitbelow = true, -- Put new windows below current
    splitright = true, -- Put new windows right of current
    termguicolors = true, -- True color support
    timeout = true, -- Timeout
    timeoutlen = 500, -- Timeout length
    wildmenu = true, -- Command-line completion mode
    number = true, -- Print line number
    relativenumber = true, -- Relative line numbers
    signcolumn = 'yes',
    mouse = 'a',

    -- Tabs & Spaces
    expandtab = false,
    smarttab = true,
    smartindent = true, -- Insert indents automatically
    cmdheight = 2,
    shiftwidth = indent,
    tabstop = indent,
    softtabstop = indent,

    -- Backup
    undofile = true,
    backup = false,
    writebackup = false,
    swapfile = false,
    undodir = xdg_data_home_nvim .. 'undodir',

    -- Text & Breaks
    textwidth = 79,
    breakindent = true,
    clipboard = 'unnamedplus',
    encoding = 'UTF-8',
    foldenable = false,
    cursorline = true
}

U.apply_options(options)
U.apply_globals({})

require('settings._augroups')
