function ColorMyPencils(colorscheme)
    if (os.getenv("TERM") ~= nil) then
        require("catppuccin").setup({
            transparent_background = true
       })
    else
        require("catppuccin").setup({
       })
    end

	colorscheme = colorscheme or 'catppuccin-mocha'
	vim.cmd.colorscheme(colorscheme)
    vim.g.neovide_transparency = 0.8
    vim.g.transparency = math.floor(255 * 0.8)
end

ColorMyPencils()

