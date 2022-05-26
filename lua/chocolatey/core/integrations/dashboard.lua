local M = {}

function M.get(cp)
	return {
		DashboardShortCut = { fg = cp.color6 },
		DashboardHeader = { fg = cp.color10 },
		DashboardCenter = { fg = cp.color9 },
		DashboardFooter = { fg = cp.color8, style = "italic" },
	}
end

return M
