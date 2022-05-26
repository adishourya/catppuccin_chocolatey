local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.color2 },
		WhichKeyGroup = { fg = cp.color10 },
		WhichKeyDesc = { fg = cp.color6 },
		WhichKeySeperator = { fg = cp.gray0 },
		WhichKeySeparator = { fg = cp.gray0 },
		WhichKeyFloat = { bg = cp.black0 },
		WhichKeyValue = { fg = cp.gray0 },
	}
end

return M
