local wk = require("which-key")

wk.register({
	["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Hover documentation" },
	g = {
		s = { "<cmd>Lspsaga signature_help<CR>", "Signature help" },
		j = { " <cmd>Lspsaga diagnostic_jump_next<cr>", "Goto next diagnostic" },
		k = { " <cmd>Lspsaga diagnostic_jump_prev<cr>", "Goto previous diagnostic" },
		D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Show Declaration" },
		d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Show Definition" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Show Implementation" },
		r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Show References" },
	},
	["<leader>"] = {
		["g"] = { "<cmd>LazyGit<CR>", "LazyGit" },
		["?"] = { "Old Files" },
		["<space>"] = { " Find File" },
		["p"] = { "<cmd>Telescope projects<CR>", "Project Finder" },
		f = {
			name = "File action",
			f = { "<cmd>lua vim.lsp.buf.format{async = true}<CR>", "Format file" },
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
			k = { "<cmd>bdelete<CR>", "Kill Buffer" },
			h = { "<cmd>BufferLineCyclePrev<CR>", "Previous Buffer" },
			l = { "<cmd>BufferLineCycleNext<CR>", "Next Buffer" },
			b = { "<cmd>BufferLinePick<CR>", "Pick Buffer" },
			c = { "<cmd>BufferLinePickClose<CR>", "Close Other Buffers" },
			x = { "<cmd>bdelete!<CR>", "Force kill buffer" },
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
		z = {
			name = "Zen mode",
			v = {"<cmd>TZNarrow<CR>", "Focus on selected"},
			w = {"<cmd>TZFocus<CR>", "Focus current window"},
			z = {"<cmd>TZAtaraxis<CR>", "Zen mode"},
		}
	},
})
