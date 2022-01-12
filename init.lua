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


require('defaults')
require('plugins')
require('lsps')
require('plugins.telescope')
require('plugins.which-key')
require('plugins.barbar')
require('plugins.vim-gutentags')
require('plugins.cmp')
require('plugins.null-ls')
require('plugins.alpha')
