local M = {}

function M.get(cp)

	local hi = {
		IndentBlanklineChar = { fg = cp.black3 },
		IndentBlanklineContextChar = { fg = cp.color14 },
	}

	if cnf.integrations.indent_blankline.colocolor5_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cp.color8}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cp.color5}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cp.color12}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cp.color7}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cp.color10}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cp.color6}
	end

	return hi
end

return M
