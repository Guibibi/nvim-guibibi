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
-- require('coc-config')
require('telescope-config')
require('which-key-config')
require('barbar-config')
require('vim-gutentags')
require('lsps')
require('plugins/coc')
