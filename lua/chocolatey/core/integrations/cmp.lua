local M = {}

function M.get(cp)
	return {
		CmpItemAbbr = { fg = cp.gray2 },
		CmpItemAbbrDeprecated = { fg = cp.gray0, style = "strikethrough" },
		CmpItemKind = { fg = cp.color10 },
		CmpItemMenu = { fg = cp.white },
		CmpItemAbbrMatch = { fg = cp.white, style = "bold" },
		CmpItemAbbrMatchFuzzy = { fg = cp.white, style = "bold" },

		-- kind support
		CmpItemKindSnippet = { fg = cp.color3 },
		CmpItemKindKeyword = { fg = cp.color5 },
		CmpItemKindText = { fg = cp.color12 },
		CmpItemKindMethod = { fg = cp.color10 },
		CmpItemKindConstructor = { fg = cp.color10 },
		CmpItemKindFunction = { fg = cp.color10 },
		CmpItemKindFolder = { fg = cp.color10 },
		CmpItemKindModule = { fg = cp.color10 },
		CmpItemKindConstant = { fg = cp.color7 },
		CmpItemKindField = { fg = cp.color9 },
		CmpItemKindProperty = { fg = cp.color9 },
		CmpItemKindEnum = { fg = cp.color9 },
		CmpItemKindUnit = { fg = cp.color9 },
		CmpItemKindClass = { fg = cp.color8 },
		CmpItemKindVariable = { fg = cp.color2 },
		CmpItemKindFile = { fg = cp.color10 },
		CmpItemKindInterface = { fg = cp.color8 },
		CmpItemKindColor = { fg = cp.color5 },
		CmpItemKindReference = { fg = cp.color5 },
		CmpItemKindEnumMember = { fg = cp.color5 },
		CmpItemKindStruct = { fg = cp.color10 },
		CmpItemKindValue = { fg = cp.color7 },
		CmpItemKindEvent = { fg = cp.color10 },
		CmpItemKindOperator = { fg = cp.color10 },
		CmpItemKindTypeParameter = { fg = cp.color10 },
	}
end

return M
