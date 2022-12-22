function ColourMyPencils(colour)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none"})	-- primeagen's trans background snippet
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColourMyPencils()
