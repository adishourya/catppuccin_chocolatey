local M = {}

function M.get(cp)
	local config = require("chocolatey.config").options
	local neotree = config.integrations.neotree

	local root_dir_color = cp.color6

	if neotree.show_root then
		root_dir_color = cp.color10
	end

	return {
		NeoTreeDirectoryName = { fg = cp.color10 },
		NeoTreeDirectoryIcon = { fg = cp.color10 },
		NeoTreeNormal = { fg = cp.white, bg = neotree.transparent_panel and "NONE" or cp.black1 },
		NeoTreeIndentMarker = { fg = cp.gray0 },
		NeoTreeRootName = { fg = root_dir_color, style = "bold" },
		NeoTreeSymbolicLinkTarget = { fg = cp.color6 },
		NeoTreeGitModified = { fg = cp.color8 },
		NeoTreeUntracked = { fg = cp.color10 },
		NeoTreeFileNameOpened = { fg = cp.color6 },
	}
end

return M
