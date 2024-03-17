if Config.framework ~= "esx" then return end
if Config.Debug then print("Framework Set To ", Config.framework) end

local ESX = exports["es_extended"]:getSharedObject()

function RemoveItemFromInventory(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    local item = Config.ItemName
    if Config.Debug then print("Removing item ",item) end
    xPlayer.removeInventoryItem(item, 1)
end

ESX.RegisterUsableItem(Config.ItemName, function(source)
	local src = source
    local canPass = CheckForRadio(src)
    if not canPass then return NotifyPlayer(src, "You will need a radio to make use of this ", "error") end
    TriggerClientEvent("MrNewbRadioIntrusion:client:UseRadioCrackUnit", src)
end)