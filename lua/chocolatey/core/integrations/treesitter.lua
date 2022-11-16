local M = {}

function M.get(cp)
	local delimeters = cp.gray1
	local operators = cp.color11
	local cl = cp.color3 -- conditionals, loops
	local keywords = cp.color5

	local math_logic = cp.color7
	return {
		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.
		TSField = { fg = cp.color1 }, -- For fields.
		TSProperty = { fg = cp.color8}, -- Same as TSField.
		TSInclude = { fg = cp.color12}, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		TSOperator = { fg = operators, style = "bold" }, -- For any operator: +, but also -> and * in cp.
		TSKeywordOperator = { fg = operators, style = "bold" }, -- For new keyword operator
		TSPunctSpecial = { fg = cp.color4, style = "bold" }, -- For special punctutation that does not fall in the catagories before.

		TSFloat = { fg = math_logic, style = "bold,italic" }, -- For floats.
		TSNumber = { fg = math_logic, style = "bold,italic" }, -- For all numbers
		TSBoolean = { fg = math_logic, style = "bold,italic" }, -- For booleans.

		TSConstructor = { fg = cp.color13 }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		TSConstant = { fg = cp.color7 }, -- For constants
		TSConditional = { fg = cl, style = "bold" }, -- For keywords related to conditionnals.
		TSRepeat = { fg = cl, style = "bold" }, -- For keywords related to loops.
		TSException = { fg = cp.color7, style = cnf.styles.keywords }, -- For exception related keywords.

		-- builtin
		TSConstBuiltin = { fg = cp.color13, style = cnf.styles.keywords }, -- For constant that are built in the language: nil in Lua.
		TSFuncBuiltin = { fg = cp.color7, style = "italic" }, -- For builtin functions: table.insert in Lua.
		TSTypeBuiltin = { fg = cp.color8, style = "italic" }, -- For builtin types.
		TSVariableBuiltin = { fg = cp.color12}, -- Variable names that are defined by the languages, like this or self.

		TSFunction = { fg = cp.color10, style = cnf.styles.functions }, -- For function (calls and definitions).
		TSFuncMacro = { fg = cp.color5 }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
		TSParameter = { fg = cp.color1, style = "bold" }, -- For parameters of a function.
		TSKeywordFunction = { fg = cp.color4, style = cnf.styles.keywords }, -- For keywords used to define a fuction.
		TSKeyword = { fg = keywords, style = cnf.styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordReturn = { fg = cp.color6 },
		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		-- TSCharacter         = { };    -- For characters.
		-- TSgray0           = { };    -- For gray0 blocks.
		TSNote = { fg = cp.black2, bg = cp.color10 },
		TSWarning = { fg = cp.black2, bg = cp.color8 },
		TSDanger = { fg = cp.black2, bg = cp.color5 },
		-- TSConstMacro        = { };    -- For constants that are defined by macros: NULL in cp.
		-- TSError = { fg = cp.color5 }, -- For syntax/parser errors.
		-- rustTSField = { fg = cp.black4 }, -- For fields.
		TSLabel = { fg = cp.color10 }, -- For labels: label: in C and :label: in Lua.
		TSMethod = { fg = cp.color10, style = "bold" }, -- For method calls and definitions.
		TSNamespace = { fg = cp.color1, style = "bold" }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSParameterReference= { };    -- For references to parameters of a function.
		tomlTSProperty = { fg = cp.color10 }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = cp.color12 }, -- For delimiters ie: .
		TSPunctBracket = { fg = delimeters }, -- For brackets and parenthesis.
		TSString = { fg = cp.color9 }, -- For strings.
		TSStringRegex = { fg = cp.color7, style = cnf.styles.strings }, -- For regexes.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		TSType = { fg = cp.color8 }, -- For types.
		TSVariable = { fg = cp.white, style = cnf.styles.variables }, -- Any variable name that does not have another highlighcp.
		TSTagAttribute = { fg = cp.color3, style = "bold" }, -- Tags like html tag names.
		TSTag = { fg = cp.color7 }, -- Tags like html tag names.
		TSTagDelimiter = { fg = cp.color4 }, -- Tag delimiter like < > /
		TSText = { fg = cp.white }, -- For strings considerated text in a markup language.
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcp.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcp.
		-- TSURI               = { };    -- Any URI like a link or email.
		--
		-- Markdown tresitter parser support
		TSURI = { fg = cp.color1, style = "italic,underline" }, -- urls, links and emails
		TSLiteral = { fg = cp.color12, style = "italic" }, -- used for inline code in markdown and for doc in python (""")
		TSTextReference = { fg = cp.color13, style = "bold" }, -- references
		TSTitle = { fg = cp.color10, style = "bold" }, -- titles like: # Example
		TSEmphasis = { fg = cp.color4, style = "bold" }, -- bold
		TSStrong = { fg = cp.color4, style = "bold" }, -- italic
		TSStringEscape = { fg = cp.color6, style = cnf.styles.strings }, -- For escape characters within a string.

		-- bash
		bashTSFuncBuiltin = { fg = cp.color5, style = "italic" },
		bashTSParameter = { fg = cp.color8, style = "italic" },

		-- lua
		luaTSField = { fg = cp.color13 },
		luaTSConstructor = { fg = cp.color2 }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

		-- java
		javaTSConstant = { fg = cp.color12 },

		-- typescript
		typescriptTSProperty = { fg = cp.color13, style = "bold" }, -- Same as TSField.

		-- css
		cssTSType = { fg = cp.color13 },
		cssTSProperty = { fg = cp.color8}, -- Same as TSField.

		-- cpp
		cppTSProperty = { fg = cp.white },
	}
end

return M
