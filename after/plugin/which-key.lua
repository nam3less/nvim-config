local wk = require('which-key')

wk.setup({})


-- Groups
wk.register({
    ["<leader>b"] = { name = "Buffer" },
    ["<leader>c"] = { name = "Code" },
    ["<leader>f"] = { name = "Files" },
    ["<leader>g"] = { name = "Git" },
    ["<leader>h"] = { name = "Help" },
    ["<leader>z"] = { name = "Zen" },
})
