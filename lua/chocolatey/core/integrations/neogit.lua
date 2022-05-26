local M = {}

function M.get(cp)
	return {
		NeogitBranch = { fg = cp.color6 },
		NeogitRemote = { fg = cp.color6 },
		NeogitHunkHeader = { bg = cp.color10, fg = cp.white },
		NeogitHunkHeaderHighlight = { bg = cp.black2, fg = cp.color10 },
		NeogitDiffContextHighlight = { bg = cp.black1, fg = cp.gray2 },
		NeogitDiffDeleteHighlight = { bg = cp.black1, fg = cp.color5 },
		NeogitDiffAddHighlight = { bg = cp.black1, fg = cp.color9 },
	}
end

return M
