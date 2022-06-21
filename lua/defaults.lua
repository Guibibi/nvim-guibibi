vim.o.inccommand = "nosplit" -- Incremental live completition
vim.wo.number = true -- Show lines number
vim.o.hlsearch = false -- Set highlight on search
vim.o.hidden = true -- Do not save when switching buffers
vim.o.mouse = "a" -- Enable mouse mode
vim.o.breakindent = true --Enable break indent
vim.opt.undofile = true --Save undo history
vim.opt.clipboard = "unnamedplus" -- Allow neovim to access the system clipboard.
vim.opt.cmdheight = 2
vim.opt.fileencoding = "utf-8"
vim.opt.wrap = false -- Don't wrap text
-- vim.o.guifont = "FiraCode Nerd Font:h15"
-- vim.g.neovide_fullscreen = true // This will crash neovide lol
vim.g.neovide_input_use_logo= true
-- Set to tabs with a width of 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2

vim.o.ignorecase = true --Case insensitive searching UNLESS /C or capital in search
vim.o.smartcase = true

vim.o.updatetime = 250 --Decrease update time
vim.wo.signcolumn = "yes"

--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.cmd([[colorscheme catppuccin]])

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

opts = { noremap = true, silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap for windows navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-j>", "<C-w>j", opts)

-- Highlight on yank
vim.api.nvim_exec(
	[[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
	false
)

-- Y yank until the end of line  (note: this is now a default on master)
keymap("n", "Y", "y$", { noremap = true })

--Map blankline
vim.g.indent_blankline_char = "┊"
vim.g.indent_blankline_filetype_exclude = { "help", "packer" }
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_char_highlight = "LineNr"
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Visual
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
