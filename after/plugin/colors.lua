function ColorMyPencils(colorscheme)
	colorscheme = colorscheme or 'catppuccin-mocha'
	vim.cmd.colorscheme(colorscheme)
    vim.g.neovide_transparency = 0.8
    vim.g.transparency = math.floor(255 * 0.8)
end

ColorMyPencils()

