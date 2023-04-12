local zenmode = require('zen-mode')

vim.keymap.set('n', '<leader>zz', function ()
    zenmode.setup({
        window = {
            backdrop = 1,
            width = 120,
        }
    })
    zenmode.toggle()
    -- vim.wo.wrap = false
    -- vim.wo.number = true
    -- vim.wo.rnu = true
    ColorMyPencils()
end)

