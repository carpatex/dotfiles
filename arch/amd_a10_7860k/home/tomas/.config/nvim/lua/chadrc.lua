-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "oxocarbon",
	changed_themes = {
		oxocarbon = {
			base_16 = {
				base00 = "#000000",
			},
			base_30 = {
				black = "#000000",
			},
		},
	}
}

return M
