require("config.config")

vim.opt.number = show_numbers
vim.opt.cursorline = cursor_line
vim.opt.shiftwidth = shiftwidth
vim.g.mapleader = mapleader

require("config.lazy")
vim.cmd(string.format("colorscheme %s", theme))
