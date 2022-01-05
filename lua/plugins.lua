-- Check that packer is installed.

-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('No packer found')
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager
  use 'arcticicestudio/nord-vim' -- Theme
  use 'nvim-treesitter/nvim-treesitter' -- Syntax highlighthing
  use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'} -- LSP's and autocompletion (IDE Experience)
  use {'nvim-telescope/telescope.nvim', -- Search plugin
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- FZF extension for telescope (faster finding)
  use {'kyazdani42/nvim-web-devicons'} -- Icons
  use 'ggandor/lightspeed.nvim' -- Faster movement in code
  use 'norcalli/nvim-colorizer.lua' -- Hex colorizer
  use 'folke/trouble.nvim' -- Code problem window
  use 'ms-jpq/chadtree' -- File browser
  use 'rmagatti/auto-session' -- Auto session manager
  use 'karb94/neoscroll.nvim' -- Smooth scrolling
  use 'ludovicchabant/vim-gutentags' -- Automatic tags management
  use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
  use 'kdheepak/lazygit.nvim' -- Git UI
  use 'windwp/nvim-autopairs' -- Autopairs tags
  use 'folke/which-key.nvim' -- Show keybindings
  use 'romgrk/barbar.nvim' -- Tabline plugin
  use 'catppuccin/nvim' -- Another theme
  use 'feline-nvim/feline.nvim' -- Bottom info bar
  use 'lewis6991/gitsigns.nvim' -- Gitsigns
end)

require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  }
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }


-- CHADTree setup
map('n', '<leader>n', ':CHADopen<CR>', opts)
-- Trouble setup
require('trouble').setup()
map('n', '<leader>t', ':TroubleToggle<CR>', opts)

--nvim-colorizer setup
require'colorizer'.setup()

--which-key setup
require('which-key').setup()
--trouble setup
require('trouble').setup()
-- Neoscroll setup
require('neoscroll').setup()
-- Nvim-autopairs setup
require('nvim-autopairs').setup()
-- Feline setup
require('feline').setup({
  components = require('catppuccin.core.integrations.feline'),
})
-- Gitsigns setup
require('gitsigns').setup()
