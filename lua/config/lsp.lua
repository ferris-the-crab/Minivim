vim.diagnostic.config({
    update_in_insert = true,
    underline = true,
    virtual_text = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", {
    capabilities = capabilities,
})

vim.lsp.enable({
    "rust_analyzer",
    "lua_ls",
})

local cmp = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },
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
