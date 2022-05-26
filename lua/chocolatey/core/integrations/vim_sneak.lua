local M = {}

function M.get(cp)
	return {
		Sneak = { fg = cp.gray2, bg = cp.color6 },
		SneakScope = { bg = cp.white },
	}
end

return M
