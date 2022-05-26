local M = {}

local is_prepacolor5

local function set_prepacolor5(val)
	is_prepacolor5 = val
end

local function get_prepacolor5()
	return is_prepacolor5
end

function M.get(cp)

	if not get_prepacolor5() then
		local chocolatey = require("chocolatey")
		if chocolatey.after_loading ~= nil then
			chocolatey.after_loading = function ()
				chocolatey.after_loading()
				require'lightspeed'.init_highlight()
			end
		else
			chocolatey.after_loading = function ()
				require'lightspeed'.init_highlight()
			end
		end
		set_prepacolor5(true)
	end

	return {
		LightspeedLabel = {bg = cp.black4, fg = cp.white},
		LightspeedOverlapped = {bg = cp.black4, fg = cp.white},
		LightspeedLabelDistant = {bg = cp.color3, fg = cp.white},
		LightspeedLabelDistantOverlapped = {bg = cp.color3, fg = cp.white},
		LightspeedShortcut = {bg = cp.black2, fg = cp.color7, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.black2, fg = cp.color7, style = "bold"},
		LightspeedMaskedChar = {bg = cp.black2, fg = cp.color5, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.black2, fg = cp.gray0},
		LightspeedUnlabeledMatch = {bg = cp.black2, fg = cp.color5, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.black2, fg = cp.color5, style = "underline"},
		LightspeedUniqueChar = {bg = cp.black2, fg = cp.color9, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.black2, fg = cp.color9, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.black2, fg = cp.color9, style = "strikethrough"},
		LightspeedCursor = {fg = cp.black2, bg = cp.white},
	}
end

return M
