local function removalEvent(src)
    local chance = math.random(1,2)
    if chance >= 2 then
        if Config.Debug then print("RemoveItemFromInventory Triggered") end
        NotifyPlayer(src, "The device seems to have broken.", "error")
        RemoveItemFromInventory(src)
    else
        if Config.Debug then print("RemoveItemFromInventory Not Triggered") end
        NotifyPlayer(src, "You managed to save the device", "success")
    end
end

RegisterNetEvent("MrNewbRadioIntrusion:server:doCheckForRadio", function(data)
    local src = source
    local canProceed = CheckForRadio(src)
    if Config.Debug then print("CanProceed ",canProceed) end
    if not canProceed then return NotifyPlayer(src, "You dont have a radio to use this.", "error") end
    removalEvent(src)
    TriggerClientEvent("MrNewbRadioIntrusion:client:DoRadioChan", src, data)
end)