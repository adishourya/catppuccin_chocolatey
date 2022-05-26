local M = {}

function M.get(cp)
	local transparent_background = require("chocolatey.config").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or cp.black2
	return {
		rainbowcol1 = {bg = bg_highlight, fg = cp.color5},
		rainbowcol2 = {bg = bg_highlight, fg = cp.color12},
		rainbowcol3 = {bg = bg_highlight, fg = cp.color8},
		rainbowcol4 = {bg = bg_highlight, fg = cp.color10},
		rainbowcol5 = {bg = bg_highlight, fg = cp.color6},
		rainbowcol6 = {bg = bg_highlight, fg = cp.color2},
		rainbowcol7 = {bg = bg_highlight, fg = cp.color9},
	}
end

return M
