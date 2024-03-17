if Config.Input ~= "ox" then return end
if Config.Debug then print("Input Set To ", Config.Input) end

function CreateInput(data)
	local title = data.title
	local description = data.options1
	local input = lib.inputDialog(tostring(title), {{type = 'input', label = tostring(title), description = tostring(description), placeholder = Config.Placeholder, icon = Config.Icon, required = true}})
	if not input then return NotifyPlayer("You havent filled out the radio channel", "error") end
	data.inputted1 = tonumber(input[1])
	if Config.Debug then print("CreateInput Debug",json.encode(data)) end
	ReturnedInput(data)
end