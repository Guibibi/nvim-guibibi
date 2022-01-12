-- Check that packer is installed.

-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print("No packer found")
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	execute("packadd packer.nvim")
end

vim.api.nvim_exec(
	[[
  augroup Packer
    autocmd!
    autocmd BufWritePost plugins.lua PackerInstall
  augroup end
]],
	false
)
vim.cmd([[packadd packer.nvim]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

require("packer").startup(function(use)
	use("wbthomason/packer.nvim") -- Package manager
	use("nvim-treesitter/nvim-treesitter") -- Syntax highlighthing
	use({
		"nvim-telescope/telescope.nvim", -- Search plugin
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- FZF extension for telescope (faster finding)
	use({ "kyazdani42/nvim-web-devicons" }) -- Icons
	use("ggandor/lightspeed.nvim") -- Faster movement in code
	use("norcalli/nvim-colorizer.lua") -- Hex colorizer
	use("folke/trouble.nvim") -- Code problem window
	use("rmagatti/auto-session") -- Auto session manager
	use("karb94/neoscroll.nvim") -- Smooth scrolling
	use("ludovicchabant/vim-gutentags") -- Automatic tags management
	use("tpope/vim-commentary") -- "gc" to comment visual regions/lines
	use("kdheepak/lazygit.nvim") -- Git UI
	use("windwp/nvim-autopairs") -- Autopairs tags
	use("folke/which-key.nvim") -- Show keybindings
	use("romgrk/barbar.nvim") -- Tabline plugin
	use("feline-nvim/feline.nvim") -- Bottom info bar
	use("lewis6991/gitsigns.nvim") -- Gitsigns
	use("kyazdani42/nvim-tree.lua") -- Tree file manager
	use("https://git.sr.ht/~whynothugo/lsp_lines.nvim") -- Show errors in a virtual lines
	use("neovim/nvim-lspconfig") -- LSP's
	use("williamboman/nvim-lsp-installer") -- Easily install LSP's
	use("tami5/lspsaga.nvim") -- Provide better actions for LSP's
	use("tversteeg/registers.nvim") -- Better registers experience
	use("akinsho/toggleterm.nvim") -- Open a float terminal
	use("p00f/nvim-ts-rainbow") -- Rainbow parentheses
	use("lukas-reineke/indent-blankline.nvim") -- Indent guidelines
	use("RishabhRD/popfix")
	use("RishabhRD/nvim-lsputils") -- Better LSP actions
	use("RRethy/vim-illuminate") -- Illuminate the same instance of words
	use("andymass/vim-matchup") -- Better % operator
	use("nacro90/numb.nvim") -- Peek when entering line number
	use("lewis6991/impatient.nvim") -- Speed up load modules
	use("ahmedkhalf/project.nvim") -- Project management
	use("romgrk/nvim-treesitter-context") -- Show sticky function name
	use("simrat39/symbols-outline.nvim") -- Show symbol outline with :SymbolsOutline
	use("goolord/alpha-nvim") -- Startup dashboard
  use("ellisonleao/glow.nvim") -- Markdown previewer

	-- Colorschemes
	use("EdenEast/nightfox.nvim") -- Another theme
	use("folke/tokyonight.nvim") -- Adother  theme
	use("catppuccin/nvim") -- Another theme
	use("arcticicestudio/nord-vim") -- Theme

	-- formatter plugins
	use("jose-elias-alvarez/null-ls.nvim") -- Formatter  plugin
	use("PlatyPew/format-installer.nvim") -- Formatter plugin installer
	use("folke/lsp-colors.nvim") -- Provide LSP's color to theme that don't support it

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-emoji")
	use("hrsh7th/cmp-nvim-lua")

	-- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use
end)

require("nvim-treesitter.configs").setup({
	ensure_installed = "maintained",
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
})

-- Trouble setup
require("trouble").setup()

--nvim-colorizer setup
require("colorizer").setup()

--which-key setup
require("which-key").setup()
-- Neoscroll setup
require("neoscroll").setup()
-- Nvim-autopairs setup
require("nvim-autopairs").setup()
-- Feline setup
require("feline").setup({
	components = require("catppuccin.core.integrations.feline"),
})
-- Gitsigns setup
require("gitsigns").setup()
-- Nvim-tree setup
vim.g.nvim_tree_respect_buf_cwd = 1
require("nvim-tree").setup({
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
})
-- Lsp saga setup
require("lspsaga").init_lsp_saga()
-- ToggleTerm setup
require("toggleterm").setup({
	direction = "float",
	open_mapping = [[<c-\>]],
})
-- Numb setup
require("numb").setup()
-- Project setup
require("project_nvim").setup()
-- treesitter-context setup
require("treesitter-context").setup()
