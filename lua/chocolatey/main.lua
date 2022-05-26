local M = {}

local utils = require("chocolatey.utils.util")

local function load()
	local chocolatey = require("chocolatey")

	if chocolatey.before_loading ~= nil then
		chocolatey.before_loading()
	end

	-- colorscheme gets evaluated from mapper.lua
	local theme = require("chocolatey.core.mapper").apply()
	utils.load(theme)

	if chocolatey.after_loading ~= nil then
		chocolatey.after_loading()
	end
end

local function clear()
	vim.cmd("hi clear")
end

function M.main(option)
	option = option or "load"

	if option == "load" then
		load()
	elseif option == "clear" then
		clear()
	else
		print("chocolatey: option was not recognized")
	end
end

return M
