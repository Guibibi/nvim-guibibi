local wk = require("which-key")

wk.register({
	--Telescope
	["<leader>s"] = { name = "+search" },
	["<leader>sf"] = { name = "Files" },
	["<leader>sb"] = { name = "Fuzzy find current buffer" },
	["<leader>sh"] = { name = "Help tags" },
	["<leader>st"] = { name = "Tags" },
	["<leader>sd"] = { name = "Grep strings" },
	["<leader>sp"] = { name = "Live grep" },
	["<leader>so"] = { name = "Buffer tags" },
	["<leader>?"] = { name = "Old files" },
	["<leader>sc"] = { name = "Colorschemes" },
	["<leader><space>"] = { name = "Buffer search" },
	["<leader>p"] = { "<cmd>Telescope projects<CR>", "Project finder" },
	["<leader>ss"] = { "<cmd>Telescope lsp_document_symbols<CR>", "Document symbols" },
	["<leader>sS"] = { "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>", "Workspace symbols" },
	["<leader>n"] = { "<cmd>NvimTreeToggle<CR>", "File browser" },
	["<leader>S"] = { "<cmd>cd %:p:h<CR>", "Scope folder to current file" },
	["<leader>g"] = { "<cmd>LazyGit<CR>", "LazyGit" },
	-- Lsp's keybinds
	-- ["gh"] = {'<cmd>Lspsaga lsp_finder<CR>', 'Lsp Finder'},
	["<leader>."] = { "<cmd>Lspsaga code_action<CR>", "Code action" },
	["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Hover documentation" },
	["gs"] = { "<cmd>Lspsaga signature_help<CR>", "Signature help" },
	["gr"] = { "<cmd>Lspsaga rename<CR>", "Rename" },
	-- ["gd"] = { "<cmd>Lspsaga preview_definition<CR>", "Preview definition"},
	-- ["gD"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Goto definition"},
	-- ["C-u"] = { "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", "Scroll up in LspSaga "},
	-- ["C-d"] = { "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", "Scroll down in LspSaga"},
	-- ["go"] = {" <cmd>Lspsaga show_line_diagnostics<cr>", "Show line diagnostics"},
	-- ["gj"] = {" <cmd>Lspsaga diagnostic_jump_next<cr>", "Goto next diagnostic"},
	-- ["gk"] = {" <cmd>Lspsaga diagnostic_jump_prev<cr>", "Goto previous diagnostic"},
	["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Show Declaration" },
	["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Show Definition" },
	-- ["K"] =  {"<cmd>lua vim.lsp.buf.hover()<CR>", 'Hover documentation'},
	["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Show Implementation" },
	-- ["<C-K>"] = {"<cmd>lua vim.lsp.buf.signature_help()<CR>", 'Signature Help'},
	["<leader>wa"] = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add Workspace Folder" },
	["<leader>wr"] = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove Workspace Folder" },
	["<leader>wl"] = {
		"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
		"List Workspace Folders",
	},
	["<leader>D"] = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type Definition" },
	["<leader>r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
	-- ["<leader>."] = {"<cmd>lua vim.lsp.buf.code_action()<CR>", 'Code Action'},
	-- ["gr"] = {"<cmd>lua vim.lsp.buf.references()<CR>", 'Show References'},
	["<leader>t"] = { "<cmd>TroubleToggle<cr>", "Diagnostic window" },
	["<leader>f"] = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format file" },
	["<leader>O"] = { "<cmd>SymbolsOutline<CR>", "Show Symbols" },
})
