local M = {}

function M.get(cp)
	return {
		markdownHeadingDelimiter = { fg = cp.color7, style = "bold" },
		markdownCode = { fg = cp.color2 },
		markdownCodeBlock = { fg = cp.color2 },
		markdownLinkText = { fg = cp.color10, style = "underline" },
		markdownH1 = { fg = cp.color13 },
		markdownH2 = { fg = cp.color3 },
		markdownH3 = { fg = cp.color9 },
		markdownH4 = { fg = cp.color8 },
		markdownH5 = { fg = cp.color6 },
		markdownH6 = { fg = cp.color12 },
	}
end

return M
