local function joinStationId(data)
	local channel = data.inputted1
	if Config.Debug then print("Print Data ",json.encode(data),"Print Channel ",json.encode(channel)) end
	if Config.Voice == "pma" then
		exports['pma-voice']:setVoiceProperty('radioEnabled', true)
		exports['pma-voice']:setVoiceProperty('micClicks', true)
		exports['pma-voice']:setRadioChannel(tonumber(channel))
		TriggerServerEvent('pma-voice:setTalkingOnRadio', false)
	elseif Config.Voice == "salty" then
		exports.saltychat:SetRadioChannel(tonumber(channel), true)
	end
	NotifyPlayer("Encryption has been broken and you are connected to radio channel "..channel.." ", "success")
	if Config.Logs then TriggerServerEvent("MrNewbRadioIntrusion:server:doLogging", data) end
end

local function DoDispatchAlert()
	local coords = GetEntityCoords(PlayerPedId())
    local data = {}
    data.message = "Strange Frequiency Noise"
    data.description = "Possible Pirate Radio In Area"
    data.icon = 'fa-solid fa-phone'
    data.coords = coords
    data.gender = false
    data.radius = 30
    data.sprite = 817
    data.color = 1
    data.scale = 0.8
    data.length = 5
    data.shortrange = true
	DispatchData(data)
end

local function DoRadioChan(data)
	local miniGame = DoMiniGame()
	if miniGame then
		joinStationId(data)
	else
		NotifyPlayer("Encryption crack has failed ", error)
		DoDispatchAlert()
	end
end

function ReturnedInput(data)
	if Config.Debug then print(json.encode(data)) end
	if not data.inputted1 then return NotifyPlayer("You haven't submitted any data ", "error") end
	TriggerServerEvent("MrNewbRadioIntrusion:server:doCheckForRadio", data)
end

RegisterNetEvent('MrNewbRadioIntrusion:client:UseRadioCrackUnit', function()
	local data = {}
	data.title = Config.Title
	data.options1 = Config.Description
	if Config.Debug then print(json.encode(data)) end
	CreateInput(data)
end)

RegisterNetEvent('MrNewbRadioIntrusion:client:DoRadioChan', function(data)
	if Config.Debug then print("DoRadioChan Event ", json.encode(data)) end
	DoRadioChan(data)
end)
