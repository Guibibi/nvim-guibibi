local wk = require("which-key")

wk.register({
	["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Hover documentation" },
	["gs"] = { "<cmd>Lspsaga signature_help<CR>", "Signature help" },
	["gj"] = { " <cmd>Lspsaga diagnostic_jump_next<cr>", "Goto next diagnostic" },
	["gk"] = { " <cmd>Lspsaga diagnostic_jump_prev<cr>", "Goto previous diagnostic" },
	["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Show Declaration" },
	["gd"] = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Show Definition" },
	["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Show Implementation" },
	["gr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "Show References" },
	["<leader>"] = {
		["g"] = { "<cmd>LazyGit<CR>", "LazyGit" },
		["?"] = { "Old Files" },
		["<space>"] = { " Find File" },
		["p"] = { "<cmd>Telescope projects<CR>", "Project Finder" },
    f = {
      name = "File action",
      f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format file" },
      w = { "<cmd>set wrap!<CR>", "Toggle word wrap" },
    },
		o = {
			name = "Open",
			p = { "<cmd>NvimTreeToggle<CR>", "File browser" },
			t = { "<cmd>TroubleToggle<cr>", "Diagnostics Window" },
      o = { "<cmd>SymbolsOutline<CR>", "Show Symbols" },
		},
		s = {
			name = "Search",
			b = { "Fuzzy Find Buffer" },
			h = { "Help Tags" },
			t = { "Tags" },
			d = { "Grep" },
			p = { "Live Grep" },
			o = { "Buffer Tags" },
			c = { "Colorschemes" },
			s = { "Document Symbols" },
			S = { "Workspace Symbols" },
		},
		b = {
			name = "Buffers",
			k = { "<cmd>BufferClose<CR>", "Kill Buffer" },
			h = { "<cmd>BufferPrevious<CR>", "Previous Buffer" },
			l = { "<cmd>BufferNext<CR>", "Next Buffer" },
			b = { "<cmd>BufferPick<CR>", "Pick Buffer" },
			c = { "<cmd>BufferCloseAllButCurrent<CR>", "Close Other Buffers" },
      x = { "<cmd>BufferClose!<CR>", "Force kill buffer"},
		},
		c = {
			name = "Code",
			a = { "<cmd>Lspsaga code_action<CR>", "Code Action" },
			r = { "<cmd>Lspsaga rename<CR>", "Rename" },
		},
		w = {
			name = "Workspace",
			a = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", "Add Workspace Folder" },
			r = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", "Remove Workspace Folder" },
			l = {
				"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
				"List Workspace Folders",
			},
		},
		t = {
			name = "Tests",
			f = { "<cmd>TestFile<CR>", "Test file" },
			s = { "<cmd>TestSuite<CR>", "Test suite" },
		},
	},
})
