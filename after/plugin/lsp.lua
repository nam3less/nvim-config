local lsp = require('lsp-zero')
local cmp = require('cmp')
local cmp_action = lsp.cmp_action()
local lspconfig = require('lspconfig')

cmp.setup({
    preselect = 'item',
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
	"lua_ls",
    "jdtls",
    "kotlin_language_server",
    "pylsp"
})

-- (Optional) Configure lua language server for neovim
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lspconfig.pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                rope_autoimport = {
                    enabled = true
                },
                mypy = {
                    enabled = true
                }
            }
        }
    }
})

lsp.on_attach(function (client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', '<leader>ch', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>cr', function() vim.lsp.buf.references() end, opts)
    vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

