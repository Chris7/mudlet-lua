if package.loaded["rex_pcre"] then rex = require "rex_pcre" end
if package.loaded["lpeg"] then lpeg = require "lpeg" end

local PATH_SEP = string.char(getMudletHomeDir():byte()) == "/" and "/" or "\\"
local MUDLET_DIR = string.format(getMudletHomeDir().."%s..%s..%s", PATH_SEP, PATH_SEP, PATH_SEP)

local packages = { 
	"StringUtils.lua",
	"TableUtils.lua",
	"Logging.lua",
	"DebugTools.lua",
	"GUIUtils.lua",
	"Other.lua"
	}
	
for _, package in ipairs(packages) do
	local result = pcall(dofile, MUDLET_DIR .. package) or echo("Error attempting to load file: " .. package .. "\n")
end