if Config.framework ~= "qb" then return end
if Config.Debug then print("Framework Set To ", Config.framework) end

local QBCore = exports['qb-core']:GetCoreObject()

function RemoveItemFromInventory(src)
    local Player = QBCore.Functions.GetPlayer(src)
    local item = Config.ItemName
    if Config.Debug then print("Removing item ",item) end
    Player.Functions.RemoveItem(item, 1)
end

QBCore.Functions.CreateUseableItem(Config.ItemName, function(source, item)
	local src = source
    local canPass = CheckForRadio(src)
    if not canPass then return NotifyPlayer(src, "You will need a radio to make use of this ", "error") end
    TriggerClientEvent("MrNewbRadioIntrusion:client:UseRadioCrackUnit", src)
end)