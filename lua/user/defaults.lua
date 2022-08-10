-- vim.opt.expandtab = true
vim.opt.breakindent = true --Enable break indent
vim.opt.clipboard = "unnamedplus" -- Allow neovim to access the system clipboard.
vim.opt.cmdheight = 1 -- Set the commandline height
vim.opt.completeopt = {"menuone", "noselect"} -- mostly for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.cursorline = true -- highlight current line
vim.opt.fileencoding = "utf-8" -- Defautl file encoding
vim.opt.guifont = "FiraCode Nerd Font:h15" -- Font for gui application
vim.opt.hidden = true -- Do not save when switching buffers
vim.opt.hlsearch = false -- Set highlight on search
vim.opt.ignorecase = true --Case insensitive searching UNLESS /C or capital in search
vim.opt.inccommand = "nosplit" -- Incremental live completition
vim.opt.laststatus = 3 -- unify bottom bar
vim.opt.mouse = "a" -- Enable mouse mode
vim.opt.number = true -- Show lines number
vim.opt.pumheight = 10 -- popup menu height
vim.opt.shiftwidth = 2 -- number of spaces inserted for each indentation
vim.opt.showmode = false -- Show/hide current mode
vim.opt.showtabline = 0 -- always show tab
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force split to go below current window
vim.opt.splitright = true -- force split to go right of the current window
vim.opt.swapfile = false -- create a swapfile
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.termguicolors = true
vim.opt.undofile = true --Save undo history
vim.opt.updatetime = 250 --Decrease update time
vim.opt.wrap = false -- Don't wrap text
vim.opt.foldmethod="expr" -- Use an expression to determine folding.
vim.opt.foldexpr="nvim_treesitter#foldexpr()" -- Use treesitter for folding
vim.opt.foldenable = false -- Disable automatic folding when opening new buffer.




--Map blankline
vim.g.indent_blankline_char = "┊"
vim.g.indent_blankline_filetype_exclude = { "help", "packer" }
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_char_highlight = "LineNr"
vim.g.indent_blankline_show_trailing_blankline_indent = false

