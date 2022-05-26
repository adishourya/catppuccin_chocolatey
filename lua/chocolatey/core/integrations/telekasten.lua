local M = {}

function M.get(cp)
	return {
		tkLink = { fg = cp.color10 },
		tkBrackets = { fg = cp.color6 },
		tkTag = { fg = cp.color11 },
	}
end

return M
