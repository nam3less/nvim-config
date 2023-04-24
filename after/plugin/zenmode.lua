local zenmode = require('zen-mode')

local function OpenZenmode()
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
end

vim.keymap.set('n', '<leader>zz', OpenZenmode, { desc = 'Toggle zenmode'})

