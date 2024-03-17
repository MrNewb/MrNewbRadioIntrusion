if Config.Input ~= "qb" then return end

if Config.Debug then print("Input Set To ", Config.Input) end

function CreateInput(data)
	local qbdata = exports['qb-input']:ShowInput({
		header = data.title,
		submitText = "Confirm",
		inputs = {
			{
				type = 'text',
				isRequired = true,
				text = data.options1,
				name = 'inputted1',
				default = Config.Placeholder,
			},
		}
	})
	local inputMenuData = qbdata and qbdata.inputted1 or nil

	if not inputMenuData then return NotifyPlayer("You havent filled out the channel", "error") end
	local finalize = qbdata.inputted1
	qbdata.inputted1 = finalize
	data.inputted1 = qbdata.inputted1
	ReturnedInput(data)
end