local M = {}

function M.get(cp)
	local config = require("chocolatey.config").options
	local nvimtree = config.integrations.nvimtree

	local root_dir_color = cp.color6

	if nvimtree.show_root then
		root_dir_color = cp.color10
	end


	return {
		NvimTreeFolderName = { fg = cp.color10 },
		NvimTreeFolderIcon = { fg = cp.color10 },
		NvimTreeNormal = { fg = cp.white, bg = nvimtree.transparent_panel and "NONE" or cp.black1 },
		NvimTreeOpenedFolderName = { fg = cp.color10 },
		NvimTreeEmptyFolderName = { fg = cp.color10 },
		NvimTreeIndentMarker = { fg = cp.gray0 },
		NvimTreeVertSplit = { fg = cp.black2, bg = cp.black2 },
		NvimTreeRootFolder = { fg = root_dir_color, style = "bold" },
		NvimTreeSymlink = { fg = cp.color6 },
		NvimTreeStatuslineNc = { fg = cp.black1, bg = cp.black1 },
		NvimTreeGitDirty = { fg = cp.color8 },
		NvimTreeGitNew = { fg = cp.color10 },
		NvimTreeGitDeleted = { fg = cp.color5 },
		NvimTreeSpecialFile = { fg = cp.color2 },
		NvimTreeImageFile = { fg = cp.white },
		NvimTreeOpenedFile = { fg = cp.color6 },
	}
end

return M
