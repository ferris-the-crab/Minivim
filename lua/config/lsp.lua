require("config.config")

vim.diagnostic.config({
    update_in_insert = true,
    underline = true,
    virtual_text = true,
})

vim.lsp.enable(enabled_lsps)

local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
	["<CR>"] = cmp.mapping.confirm({ select = true }),
	["<Tab>"] = cmp.mapping.select_next_item(),
	["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),

    sources = {
	{ name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    }
})
