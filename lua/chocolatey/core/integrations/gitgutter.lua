local M = {}

function M.get(cp)
	return {
		GitGutterAdd = { fg = cp.color9 },
		GitGutterChange = { fg = cp.color8 },
		GitGutterDelete = { fg = cp.color5 },
	}
end
return M
