local M = {}

function M.get(cp)
	return {
		BufferCurrent = { bg = cp.black4, fg = cp.white },
		BufferCurrentIndex = { bg = cp.black4, fg = cp.color10 },
		BufferCurrentMod = { bg = cp.black4, fg = cp.color8 },
		BufferCurrentSign = { bg = cp.black4, fg = cp.color10 },
		BufferCurrentTarget = { bg = cp.black4, fg = cp.color5 },
		BufferVisible = { bg = cp.black1, fg = cp.white },
		BufferVisibleIndex = { bg = cp.black1, fg = cp.color10 },
		BufferVisibleMod = { bg = cp.black1, fg = cp.color8 },
		BufferVisibleSign = { bg = cp.black1, fg = cp.color10 },
		BufferVisibleTarget = { bg = cp.black1, fg = cp.color5 },
		BufferInactive = { bg = cp.black1, fg = cp.gray0 },
		BufferInactiveIndex = { bg = cp.black1, fg = cp.gray0 },
		BufferInactiveMod = { bg = cp.black1, fg = cp.color8 },
		BufferInactiveSign = { bg = cp.black1, fg = cp.color10 },
		BufferInactiveTarget = { bg = cp.black1, fg = cp.color5 },
		BufferTabpages = { bg = cp.black1, fg = cp.none },
		BufferTabpage = { bg = cp.black1, fg = cp.color10 },
	}
end

return M
