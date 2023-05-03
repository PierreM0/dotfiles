---@type ChadrcConfig 
 local M = {}
 M.ui = {
  theme = "gruvbox",
  theme_toggle = {"gruvbox", "gruvbox_light"},
}
 M.mappings = require 'custom.mappings'
 M.plugins = 'custom.plugins'
 return M
