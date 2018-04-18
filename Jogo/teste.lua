json = require './lib/json'

json_to_table = {}

local open = io.open
local function read_file(path)
	local file = open(path, "rb") -- r read mode and b binary mode
	if not file then return nil end
	local content = file:read "*a" -- *a or *all reads the whole file
	file:close()
	return content
end

function json_to_table.read_json(filepath)
	local fileContent = read_file(filepath)
	local decode = json.decode(fileContent)
	return decode
end


return json_to_table
