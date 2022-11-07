-- This file setups all the plugins

require("impatient") -- Need to be loaded first!

-- Treesitter setup
require("nvim-treesitter.configs").setup({
	auto_install = true,
	context_commentstring = {
		enable = true,
	},
	highlight = {
		enable = true,
		disable = { 'org' }, -- Remov this to use TS highlighter (experimental)
		additional_vim_regex_highlighting = { 'org' }
	},
	rainbow = {
		enable = true,
		extended_mode = true,
	},
})

-- Setup Noice
require('noice').setup()

-- Setup org mode ts grammar
require('orgmode').setup_ts_grammar()

--which-key setup
require("which-key").setup()

-- Trouble setup
require("trouble").setup()

--nvim-colorizer setup
require("colorizer").setup()

-- Neoscroll setup
require("neoscroll").setup()

-- Nvim-autopairs setup
require("nvim-autopairs").setup({
	check_ts = true,
	disable_filetype = { "TelescopePrompt" },
})



-- Lualine setup
require("lualine").setup({
	options = {
		globalstatus = true,
		theme = 'gruvbox-material'
	}
})

-- Gitsigns setup
require("gitsigns").setup()

-- Nvim-tree setup
require("nvim-tree").setup({
	update_cwd = true,
	respect_buf_cwd = true,
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

-- Neogen setup
require("neogen").setup({
	enabled = true,
})

-- Wilder setup
local wilder = require("wilder")
wilder.setup({ modes = { ":" } })
wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer({
		highlighter = wilder.basic_highlighter(),
		left = { " ", wilder.popupmenu_devicons() },
		right = { " ", wilder.popupmenu_scrollbar() },
	})
)

-- Litee ui setup
require('litee.lib').setup()

-- Litee github PR setup
require('litee.gh').setup()

-- Org mode setup
require('orgmode').setup({
	org_agenda_files = '~/org/*',
	org_default_notes_files = '~/org/*',
})

-- Org bullet setup
require('org-bullets').setup()

-- Satellite setup
-- require('satellite').setup()

-- Buffer line setup
require("bufferline").setup()

-- Leap Setup 
require('leap').set_default_keymaps()

-- Modes setup
require('modes').setup()

-- Copilot setup
require('copilot').setup()
