return {
    -- colorscheme
    {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
	    vim.cmd([[colorscheme gruvbox]])
	    vim.o.background = "dark"
	end,
    },

    {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = { theme = "gruvbox" },
    },

    {
	"sphamba/smear-cursor.nvim",
	opts = {},
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
}
