local fn = vim.fn
-- Check that packer is installed.
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer, close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenver we save the plugins.lua
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
}

require("packer").startup(function(use)

	-- Base packages
	use("ahmedkhalf/project.nvim") -- Project management
	use("folke/which-key.nvim") -- Show keybindings
	use("goolord/alpha-nvim") -- Startup dashboard
	use("lewis6991/impatient.nvim") -- Startup time goes BRRRR
	use("nvim-treesitter/nvim-treesitter") -- Syntax highlighthing
	-- use("romgrk/barbar.nvim") -- Tabline plugin
	use("akinsho/bufferline.nvim") -- Buffer line plugin
	use("wbthomason/packer.nvim") -- Package manager
	use({ "kyazdani42/nvim-web-devicons" }) -- Icons
	use("nvim-lualine/lualine.nvim") -- Status line

	-- LSP Packages
	use("RishabhRD/nvim-lsputils") -- Better LSP actions
	use("folke/lsp-colors.nvim") -- Provide LSP's color to theme that don't support it
	use("https://git.sr.ht/~whynothugo/lsp_lines.nvim") -- Show errors in a virtual lines
	use("neovim/nvim-lspconfig") -- LSP's
	use("tami5/lspsaga.nvim") -- Provide better actions for LSP's
	use("williamboman/nvim-lsp-installer") -- Easily install LSP's
	use("onsails/lspkind.nvim") -- Add icon to completion popup.
	-- Workflow packages
	use({
		"nvim-telescope/telescope.nvim", -- Search plugin
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("folke/trouble.nvim") -- Code problem window
	use("kyazdani42/nvim-tree.lua") -- Tree file manager
	use("ludovicchabant/vim-gutentags") -- Automatic tags management
	use("simrat39/symbols-outline.nvim") -- Show symbol outline with :SymbolsOutline
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- FZF extension for telescope (faster finding)
	use({ "akinsho/toggleterm.nvim", branch = "main" }) -- Open a float terminal
	-- use("ggandor/lightspeed.nvim") -- Faster movement in code

	-- QOL packages
	use("romgrk/nvim-treesitter-context") -- Sticky function name
	use("norcalli/nvim-colorizer.lua") -- Hex colorizer
	use("karb94/neoscroll.nvim") -- Smooth scrolling
	use("RRethy/vim-illuminate") -- Illuminate the same instance of words
	use("tversteeg/registers.nvim") -- Better registers experience
	use("andymass/vim-matchup") -- Better % operator
	use("nacro90/numb.nvim") -- Peek when entering line number
	use("ellisonleao/glow.nvim") -- Markdown previewer
	use("tpope/vim-surround") -- Surround operator
	use("gelguy/wilder.nvim") -- Provide completion for command line.
	use('zane-/cder.nvim') -- Telescope extension to CD into other folder
	-- use('lewis6991/satellite.nvim') -- Better scrollbar
	use { 'anuvyklack/hydra.nvim',
		requires = 'anuvyklack/keymap-layer.nvim' -- needed only for pink hydras
	}

	-- Coding packages
	use("tpope/vim-commentary") -- "gc" to comment visual regions/lines
	use("windwp/nvim-autopairs") -- Autopairs tags
	use("p00f/nvim-ts-rainbow") -- Rainbow parentheses
	use("lukas-reineke/indent-blankline.nvim") -- Indent guidelines
	-- use("kkoomen/vim-doge") -- Documentation generator
	use("danymat/neogen") -- Documentation generator
	use("vim-test/vim-test") -- Testing extension
	use("JoosepAlviste/nvim-ts-context-commentstring") -- Make comment work in Vue

	-- Git packages
	use({ "kdheepak/lazygit.nvim", branch = "main" }) -- Git UI
	use("lewis6991/gitsigns.nvim") -- Gitsigns
	use("ldelossa/gh.nvim") -- Github pull request

	-- Dependencies packages
	use("RishabhRD/popfix")
	use("ldelossa/litee.nvim") -- Framework for UIs (Used by gh.nvim)
	use("rcarriga/nvim-notify") -- Notification module

	-- Org mode plugins
	use('nvim-orgmode/orgmode') -- Add orgmode to neovim.
	use('akinsho/org-bullets.nvim') -- Add better styling to org.

	-- Colorschemes
	use("EdenEast/nightfox.nvim") -- Another theme
	use("folke/tokyonight.nvim") -- Adother  theme
	use("catppuccin/nvim") -- Another theme
	use("arcticicestudio/nord-vim") -- Theme

	-- formatter plugins
	use("jose-elias-alvarez/null-ls.nvim") -- Formatter  plugin
	use("PlatyPew/format-installer.nvim") -- Formatter plugin installer

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

	-- Automatically set up your config after cloning packer.nvim
	-- This needs to be at the end of the plugin list
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
