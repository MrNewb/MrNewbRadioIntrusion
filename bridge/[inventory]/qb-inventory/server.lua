if Config.Inventory ~= "qb" then return end

if Config.Debug then print("Inventory Set To ", Config.Inventory) end

function CheckForRadio(src)
	local doRadioCheck = exports['qb-inventory']:HasItem(src, Config.RadioName, 1)
	if not doRadioCheck then return false end
	return true
end

function CheckForItem(src)
	local doCrackCheck = exports['qb-inventory']:HasItem(src, Config.ItemName, 1)
	if not doCrackCheck then return false end
	return true
end
