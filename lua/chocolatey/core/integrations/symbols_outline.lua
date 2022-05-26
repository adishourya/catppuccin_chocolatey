local M = {}

function M.get(cp)
	return {
		FocusedSymbol = { fg = cp.color8, bg = cp.black2 },
	}
end

return M
