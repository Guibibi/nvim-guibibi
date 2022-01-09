local wk = require("which-key")

wk.register({
  --Telescope
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
  ["<leader>n"] = { "<cmd>NvimTreeToggle<CR>", "File browser"},
  ["<leader>S"] = { "<cmd>cd %:p:h<CR>", "Scope folder to current file"},
  ["<leader>g"] = { "<cmd>LazyGit<CR>", 'LazyGit'},
  -- Lsp's keybinds
  ["gh"] = {'<cmd>Lspsaga lsp_finder<CR>', 'Lsp Finder'},
  ["<leader>."] = {"<cmd>Lspsaga code_action<CR>", "Code action"},
  ["K"] = { "<cmd>Lspsaga hover_doc<CR>", 'Hover documentation'},
  ["gs"] = { "<cmd>Lspsaga signature_help<CR>", 'Signature help'},
  ["gr"] = { "<cmd>Lspsaga rename<CR>", "Rename"},
  ["gd"] = { "<cmd>Lspsaga preview_definition<CR>", "Preview definition"},
  ["gD"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto definition"},
  ["C-u"] = { "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", "Scroll up in LspSaga "},
  ["C-d"] = { "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", "Scroll down in LspSaga"},
  ["go"] = {" <cmd>Lspsaga show_line_diagnostics<cr>", "Show line diagnostics"},
  ["gj"] = {" <cmd>Lspsaga diagnostic_jump_next<cr>", "Goto next diagnostic"},
  ["gk"] = {" <cmd>Lspsaga diagnostic_jump_prev<cr>", "Goto previous diagnostic"},
  ["<leader>t"] = {" <cmd>TroubleToggle<cr>", 'Diagnostic window'},
})
