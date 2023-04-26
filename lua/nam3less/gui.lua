function ColorMyPencils()
    local bg_transparent = true

    if vim.g.neovide then
        vim.o.guifont = "FiraCode Nerd Font:h11"
        -- vim.g.transparency = math.floor(255 * 0.9)
        vim.g.neovide_transparency = 0.9
        bg_transparent = false
    end

    print(bg_transparent)
    require('catppuccin').setup({
        flavour = 'mocha',
        transparent_background = bg_transparent,
        integrations = {
            treesitter_context = true
        },
    })

    vim.cmd.colorscheme 'catppuccin'
end

ColorMyPencils()

