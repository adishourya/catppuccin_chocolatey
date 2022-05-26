local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.color9 },
		LspTroubleCount = { fg = cp.color6, bg = cp.black4 },
		LspTroubleNormal = { fg = cp.white, bg = cp.black0 },
	}
end

return M
