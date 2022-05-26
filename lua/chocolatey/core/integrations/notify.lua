local M = {}

function M.get(cp)
	return {
		NotifyERRORBorder = { fg = cp.color5 },
		NotifyERRORIcon = { fg = cp.color5 },
		NotifyERRORTitle = { fg = cp.color5, style = "italic" },
		NotifyWARNBorder = { fg = cp.color8 },
		NotifyWARNIcon = { fg = cp.color8 },
		NotifyWARNTitle = { fg = cp.color8, style = "italic" },
		NotifyINFOBorder = { fg = cp.color10 },
		NotifyINFOIcon = { fg = cp.color10 },
		NotifyINFOTitle = { fg = cp.color10, style = "italic" },
		NotifyDEBUGBorder = { fg = cp.color7 },
		NotifyDEBUGIcon = { fg = cp.color7 },
		NotifyDEBUGTitle = { fg = cp.color7, style = "italic" },
		NotifyTRACEBorder = { fg = cp.color1 },
		NotifyTRACEIcon = { fg = cp.color1 },
		NotifyTRACETitle = { fg = cp.color1, style = "italic" },
	}
end

return M
