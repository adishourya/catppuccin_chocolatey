local M = {}

function M.get(cp)
	return {
		DiagnosticError = { fg = cp.color5 },
		DiagnosticWarning = { fg = cp.color8 },
		DiagnosticInformation = { fg = cp.color10 },
		DiagnosticHint = { fg = cp.hint },
		LspFloatWinNormal = { bg = cp.black0 },
		LspFloatWinBorder = { fg = cp.color10 },
		LspSagaBorderTitle = { fg = cp.color2 },
		LspSagaHoverBorder = { fg = cp.color10 },
		LspSagaRenameBorder = { fg = cp.color12 },
		LspSagaDefPreviewBorder = { fg = cp.color12 },
		LspSagaCodeActionBorder = { fg = cp.color10 },
		LspSagaFinderSelection = { fg = cp.black4 },
		LspSagaCodeActionTitle = { fg = cp.color101 },
		LspSagaCodeActionContent = { fg = cp.purple },
		LspSagaSignatureHelpBorder = { fg = cp.color5 },
		ReferencesCount = { fg = cp.purple },
		DefinitionCount = { fg = cp.purple },
		DefinitionIcon = { fg = cp.color10 },
		ReferencesIcon = { fg = cp.color10 },
		TargetWord = { fg = cp.color2 },
	}
end
return M
