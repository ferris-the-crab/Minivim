return {
    -- themes
    { "ellisonleao/gruvbox.nvim" },
    { "rose-pine/neovim", name = "rose-pine" },
    { "xero/miasma.nvim" },
    {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
	    require("themery").setup({
		themes = {"gruvbox", "rose-pine", "miasma"},
		livePreciew = true,
	    })
	end
    },

    {
	"sphamba/smear-cursor.nvim",
	opts = {},
    },

    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = { theme = "" }
    },

    {
	'windwp/nvim-autopairs',
	event = "InsertEnter",
	config = true,
    },

    {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	end
    },

    {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { }
    },

    {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
	    require("hlchunk").setup({
		chunk = {
		    chars = {
			horizontal_line = "─",
			vertical_line = "│",
			left_top = "┌",
			left_bottom = "└",
			right_arrow = "─",
		    },

		    style = "#D79921",
		    error_sign = false,
		    enable = true,
		    use_treesitter = false,
		},

		indent = {
		    enable = true, 
		},
	    })
	end
    },

    {
	"dstein64/vim-startuptime",
	cmd = "StartupTime",
	init = function()
	    vim.g.startuptime_tries = 10
	end,
    },

    {
	"folke/which-key.nvim",
	event = "VeryLazy",
    },

    {
	"neovim/nvim-lspconfig",
	lazy = false
    },

    {
	"hrsh7th/nvim-cmp",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	    "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	    "hrsh7th/cmp-cmdline",
	    "L3MON4D3/LuaSnip",
	    "saadparwaiz1/cmp_luasnip",
	    "rafamadriz/friendly-snippets",
	},
    }
}
