local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()

cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        ['<cr>'] = cmp.mapping.confirm(),
        ['<tab>'] = cmp_action.tab_complete(),
        ['<s-tab>'] = cmp_action.select_prev_or_fallback(),
    }
})

lsp.preset('recommended')

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"rust_analyzer",
	"lua_ls",
    "jdtls",
    "kotlin_language_server",
    "jedi_language_server"
})

lsp.setup()

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
