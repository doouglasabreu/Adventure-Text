--package.path = "C:/Users/Rodrigo/Desktop/adventure-text/Jogo/lib/?.lua"
json = require("./lib/json")

json_filemanager = {}
 
local function read_file(path)
	local file = io.open(path, "rb") -- r read mode and b binary mode
	if not file then
    print("Arquivo nao encontrado")
    return nil
  end
	local content = file:read "*a" -- *a or *all reads the whole file
	file:close()
	return content
end

local function write_file(path, content)
	local file = io.open(path, "wb")
	file:write(content)
	file:close()
end

function json_filemanager.read(filepath)
	local fileContent = read_file(filepath..".json")
	local decode = json.decode(fileContent)
	return decode
end

function json_filemanager.write(filepath, content)
  local encode = json.encode(content)
  write_file(filepath..".json", encode)
end

return json_filemanager
