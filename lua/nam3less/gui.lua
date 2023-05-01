function ColorMyPencils()
    local bg_transparent = true
    if vim.g.neovide then
        bg_transparent = false

        vim.o.termguicolors = true
        vim.o.guifont = "FiraCode Nerd Font:h11"
        -- vim.g.transparency = math.floor(255 * 0.9)
        vim.g.neovide_transparency = 0.95
    end

    require('catppuccin').setup({
        flavour = 'macchiato',
        transparent_background = bg_transparent,
        integrations = {
            telescope = true,
            treesitter_context = true,
        },
    })

    vim.cmd.colorscheme 'catppuccin'
end

ColorMyPencils()

