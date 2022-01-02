local wk = require("which-key")

wk.register({
  ["<leader>s"] = { name = "+search"},
  ["<leader>sf"] = { name = "Files"},
  ["<leader>sb"] = { name = "Fuzzy find current buffer"},
  ["<leader>sh"] = { name = "Help tags"},
  ["<leader>st"] = { name = "Tags"},
  ["<leader>sd"] = { name = "Grep strings"},
  ["<leader>sp"] = { name = "Live grep"},
  ["<leader>so"] = { name = "Buffer tags"},
  ["<leader>?"] =  { name = "Old files"},
  ["<leader>sc"] = { name = "Colorschemes"},
  ["<leader><space>"] = { name = "Buffer search"},
  ["<leader>t"] = { name = "Trouble toggle"},
  ["<leader>."] = { name = "Code action"},
  ["<leader>f"] = { name = "Prettier format"},
  ["<leader>l"] = { name = "Eslint fix"},
  ["<leader>n"] = { Name = "File browser"},
})
