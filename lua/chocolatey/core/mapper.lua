local colors_util = require("chocolatey.utils.colors")
local color_palette = require("chocolatey.core.color_palette")

local M = {}

local function get_properties()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assert_brightness(color_palette.black2) then
		props["background"] = "light"
	end

	return props
end

local function get_base()
	local cp = color_palette
	cp.none = "NONE"

	return {
		Comment = { fg = cp.gray0, style = cnf.styles.comments }, -- just comments
		ColorColumn = { bg = cp.black3 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cp.gray1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.black2, bg = cp.white }, -- character under the cursor
		lCursor = { fg = cp.black2, bg = cp.white }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.black2, bg = cp.white }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.black1 }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.black3 }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if foreground (ctermfg OR guifg) is not secp.
		Directory = { fg = cp.color10 }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.black2 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.color5, style = "bold,italic" }, -- error messages on the command line
		VertSplit = { fg = cp.black0 }, -- the column separating vertically split windows
		Folded = { fg = cp.color10, bg = cp.black4 }, -- line used for closed folds
		FoldColumn = { bg = cp.black2, fg = cp.gray0 }, -- 'foldcolumn'
		SignColumn = { bg = cnf.transparent_background and cp.none or cp.black2, fg = cp.black4 }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.black0, fg = cp.black4 }, -- column where |signs| are displayed
		Substitute = { bg = cp.black4, fg = cp.color6 }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.black4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.color9 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = cp.color7, style = "bold" }, -- The character under the cursor or just before it, if it is a paicolor5 bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.white, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.white }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.color10 }, -- |more-prompt|
		NonText = { fg = cp.gray0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.white, bg = cnf.transparent_background and cp.none or cp.black2 }, -- normal text
		NormalNC = { fg = cp.white, bg = cnf.transparent_background and cp.none or cp.black2 }, -- normal text in non-current windows
		NormalSB = { fg = cp.white, bg = cp.black0 }, -- normal text in non-current windows
		NormalFloat = { fg = cp.white, bg = cp.black1 }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.color10 },
		Pmenu = { bg = cp.black3, fg = cp.gray2 }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.white, bg = cp.black4, style = "bold" }, -- Popup menu: selected item.
		PmenuSbar = { bg = cp.black4 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.gray0 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.color10 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.black4, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = cp.black4, fg = cp.color6, style = "bold" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.color6, fg = cp.black4 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cp.white }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = cp.color5, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cp.color8, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cp.color10, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cp.color9, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.white, bg = cp.black1 }, -- status line of current window
		StatusLineNC = { fg = cp.black4, bg = cp.black1 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cp.black1, fg = cp.black4 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cp.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cp.color9, bg = cp.black4 }, -- tab pages line, active tab page label
		Title = { fg = cp.color10, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { bg = cp.black4, style = "bold" }, -- Visual mode selection
		VisualNOS = { bg = cp.black4, style = "bold" }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.color8 }, -- warning messages
		Whitespace = { fg = cp.black4 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.gray0 }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- gray0ed out groups should chain up to their "prefercolor5" group by
		-- default,
		-- Ungray0 and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cp.color7 }, -- (prefercolor5) any constant
		String = { fg = cp.color9, style = cnf.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cp.color12 }, --  a character constant: 'c', '\n'
		Number = { fg = cp.color7 }, --   a number constant: 234, 0xff
		Float = { fg = cp.color7 }, --    a floating point constant: 2.3e10
		Boolean = { fg = cp.color7 }, --  a boolean constant: TRUE, false
		Identifier = { fg = cp.color2, style = cnf.styles.variables }, -- (prefercolor5) any variable name
		Function = { fg = cp.color10, style = cnf.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cp.color3 }, -- (prefercolor5) any statement
		Conditional = { fg = cp.color5 }, --  if, then, else, endif, switch, etcp.
		Repeat = { fg = cp.color5 }, --   for, do, while, etcp.
		Label = { fg = cp.color7 }, --    case, default, etcp.
		Operator = { fg = cp.color11,style="bold" }, -- "sizeof", "+", "*", etcp.
		Keyword = { fg = cp.color6, style = cnf.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cp.color6 }, -- (prefercolor5) generic Preprocessor
		Include = { fg = cp.color6 }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

		StorageClass = { fg = cp.color8 }, -- static, register, volatile, etcp.
		Structure = { fg = cp.color8 }, --  struct, union, enum, etcp.
		Typedef = { fg = cp.color8 }, --  A typedef
		Special = { fg = cp.color6 }, -- (prefercolor5) any special symbol
		Type = { fg = cp.color10 }, -- (prefercolor5) int, long, char, etcp.
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- Specialgray0= { }, -- special things inside a gray0
		-- Debug         = { }, --    debugging statements

		Underlined = { style = "underline" }, -- (prefercolor5) text that stands out, HTML links
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (prefercolor5) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.color5 }, -- (prefercolor5) any erroneous construct
		Todo = { bg = cp.color8, fg = cp.black2, style = "bold" }, -- (prefercolor5) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cp.color8 },
		qfFileName = { fg = cp.color10 },
		htmlH1 = { fg = cp.color6, style = "bold" },
		htmlH2 = { fg = cp.color10, style = "bold" },
		-- mkdHeading = { fg = cp.color7, style = "bold" },
		-- mkdCode = { bg = cp.terminal_black, fg = cp.white },
		mkdCodeDelimiter = { bg = cp.black2, fg = cp.white },
		mkdCodeStart = { fg = cp.color2, style = "bold" },
		mkdCodeEnd = { fg = cp.color2, style = "bold" },
		-- mkdLink = { fg = cp.color10, style = "underline" },

		-- debugging
		debugPC = { bg = cp.black0 }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = cp.black2, fg = cp.gray0 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = cp.black4 },
		illuminatedCurWord = { bg = cp.black4 },
		-- diff
		diffAdded = { fg = cp.color9 },
		diffRemoved = { fg = cp.color5 },
		diffChanged = { fg = cp.color8 },
		diffOldFile = { fg = cp.color8 },
		diffNewFile = { fg = cp.color7 },
		diffFile = { fg = cp.color10 },
		diffLine = { fg = cp.gray0 },
		diffIndexLine = { fg = cp.color6 },
		DiffAdd = { fg = cp.color9, bg = cp.black2 }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.color8, bg = cp.black2 }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.color5, bg = cp.black2 }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cp.color10, bg = cp.black2 }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cp.color5 },
		healthSuccess = { fg = cp.color12 },
		healthWarning = { fg = cp.color8 },
		-- misc
		-- LspSaga
		LspSagaCodeActionTitle = { fg = cp.color9, bold = true },
		LspSagaCodeActionBorder = { fg = cp.color12},
		LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
		LspSagaCodeActionContent = { fg = cp.color1, bold = true },
		-- finder
		LspSagaLspFinderBorder = { fg = cp.color10},
		LspSagaAutoPreview = { fg = cp.color12},
		LspSagaFinderSelection = { fg = cp.color3, bold = true },
		TargetFileName = { fg = cp.color1},
		FinderParam = { fg = cp.color14, bg = cp.color13, bold = true },
		FinderVirtText = { fg = cp.color2},
		DefinitionsIcon = { fg = cp.color8},
		Definitions = { fg = cp.color14, bold = true },
		DefinitionCount = { link = 'Title' },
		ReferencesIcon = { fg = cp.color8},
		References = { fg = cp.color13, bold = true },
		ReferencesCount = { link = 'Title' },
		ImplementsIcon = { fg = cp.color13},
		Implements = { fg = cp.color13, bold = true },
		ImplementsCount = { link = 'Title' },
		--finder spinner
		FinderSpinnerBorder = { fg = cp.color10},
		FinderSpinnerTitle = { fg = cp.color6, bold = true },
		FinderSpinner = { fg = cp.color6, bold = true },
		-- definition
		LspSagaDefPreviewBorder = { fg = cp.color10},
		DefinitionPreviewIcon = { link = 'Title' },
		DefinitionPreviewFile = { link = 'Define' },
		DefinitionPreviewTip = { link = 'Comment' },
		-- hover
		LspSagaHoverBorder = { fg = cp.gray0},
		LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
		-- rename
		LspSagaRenameBorder = { fg = cp.color14},
		LspSagaRenameMatch = { link = 'Search' },
		-- diagnostic
		LspSagaDiagnosticSource = { fg = cp.color7},
		LspSagaDiagnosticError = { link = 'DiagnosticError' },
		LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
		LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
		LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
		LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
		LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
		LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
		LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
		LspSagaDiagnosticBorder = { fg = cp.color14},
		LspSagaDiagnosticHeader = { fg = cp.color9},
		LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
		ColInLineDiagnostic = { link = 'Comment' },
		-- signture help
		LspSagaSignatureHelpBorder = { fg = cp.gray0},
		LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
		-- lightbulb
		LspSagaLightBulb = { link = 'DiagnosticSignHint' },
		-- shadow
		SagaShadow = { fg = 'black' },
		-- float
		LspSagaBorderTitle = { link = 'String' },
		-- Outline
		LSOutlinePreviewBorder = { fg = cp.color9},
		OutlineIndentEvn = { fg = cp.color1},
		OutlineIndentOdd = { fg = cp.color2},
		OutlineFoldPrefix = { fg = cp.color4},
		OutlineDetail = { fg = cp.gray0},
		-- all floatwindow of lspsaga
		LspFloatWinNormal = { link = 'Normal' },

		-- glyphs
		GlyphPalette1 = { fg = cp.color5 },
		GlyphPalette2 = { fg = cp.color12 },
		GlyphPalette3 = { fg = cp.color8 },
		GlyphPalette4 = { fg = cp.color10 },
		GlyphPalette6 = { fg = cp.color12 },
		GlyphPalette7 = { fg = cp.white },
		GlyphPalette9 = { fg = cp.color5 },

		-- Go
		goTSNamespace = { fg = cp.white, style = "bold" },
		goTSNumber = { fg = cp.color9 },
		goTSType = { fg = cp.color13 },
		goTSOperator = {fg=cp.white,style="bold"},
		operand = { fg = cp.white, style = "bold" },
	}
end

local function get_integrations()
	local integrations = cnf["integrations"]
	local final_integrations = {}

	for integration in pairs(integrations) do
		local cot = false
		if type(integrations[integration]) == "table" then
			if integrations[integration]["enabled"] == true then
				cot = true
			end
		else
			if integrations[integration] == true then
				cot = true
			end
		end

		if cot then
			final_integrations = vim.tbl_deep_extend(
				"force",
				final_integrations,
				require("chocolatey.core.integrations." .. integration).get(color_palette)
			)
		end
	end

	final_integrations = vim.tbl_deep_extend(
		"force",
		final_integrations,
		require("chocolatey.core.remaps").get_hig_remaps() or {}
	)
	return final_integrations
end

local function get_terminal()
	return color_palette
end

function M.apply()
	_G.cnf = require("chocolatey.config").options

	local theme = {}
	theme.properties = get_properties() -- nvim settings
	theme.base = get_base() -- basic hi groups
	theme.integrations = get_integrations() -- plugins
	theme.terminal = get_terminal() -- terminal colors

	-- uninstantiate to avoid poluting global scope and because it's not needed anymore
	_G.cnf = nil

	return theme
end

return M
