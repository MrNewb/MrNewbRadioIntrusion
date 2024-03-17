if Config.Inventory ~= "ox" then return end
if Config.Debug then print("Inventory Set To ", Config.Inventory) end
local ox_inventory = exports.ox_inventory

function CheckForRadio(src)
	local doRadioCheck = ox_inventory:GetItem(src, Config.RadioName, nil, false)
	local itemcount = doRadioCheck.count
	if Config.Debug then print("CheckForRadio Function ",json.encode(itemcount)) end
	if itemcount == 1 then return true end
	return false
end

function CheckForItem(src)
	local doCrackCheck = ox_inventory:GetItem(src, Config.ItemName, nil, false)
	local itemcount = doCrackCheck.count
	if Config.Debug then print("CheckForItem Function ",json.encode(itemcount)) end
	if itemcount == 1 then return true end
	return false
end