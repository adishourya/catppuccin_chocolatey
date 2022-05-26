local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.black2, fg = cp.color7, style = "bold,underline" },
		HopNextKey1 = { bg = cp.black2, fg = cp.color10, style = "bold" },
		HopNextKey2 = { bg = cp.black2, fg = cp.color12, style = "bold,italic" },
		HopUnmatched = { bg = cp.black2, fg = cp.gray0 },
	}
end

return M
