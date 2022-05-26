local M = {}

function M.get(cp)
	return {
		TelescopeBorder = { fg = cp.color10 },
		TelescopeSelectionCaret = { fg = cp.color2 },
		TelescopeSelection = { fg = cp.white, bg = cp.black3, style = "bold" },
		TelescopeMatching = { fg = cp.color10 },
	}
end

return M
