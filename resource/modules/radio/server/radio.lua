local pendingCracks = {}

local function hasRadio(src)
    return bridge.inventory.hasItem(src, Config.RadioName, 1)
end

local function rollDeviceBreak(src)
    if math.random(100) > Config.BreakChance then
        bridge.notifications.notify(src, { description = locale('Radio.DeviceSaved'), type = 'success' })
        return
    end
    bridge.inventory.removeItem(src, Config.ItemName, 1)
    bridge.notifications.notify(src, { description = locale('Radio.DeviceBroke'), type = 'error' })
end

local function sendDispatch(src)
    local coords = GetEntityCoords(GetPlayerPed(src))
    local blip = Config.DispatchBlip
    blip.text = locale('Radio.DispatchBlip')
    bridge.dispatch.sendAlert(src, Config.DispatchJobs, coords, {
        title = locale('Radio.DispatchTitle'),
        description = locale('Radio.DispatchDescription'),
        icon = 'fa-solid fa-walkie-talkie',
        length = blip.length,
    }, blip)
end

local function onUseItem(src)
    if not hasRadio(src) then
        bridge.notifications.notify(src, { description = locale('Radio.NeedRadio'), type = 'error' })
        return
    end
    TriggerClientEvent('MrNewbRadioIntrusion:client:usedCrackUnit', src)
end

local function startCrack(src)
    if not hasRadio(src) or not bridge.inventory.hasItem(src, Config.ItemName, 1) then return false end
    pendingCracks[src] = true
    rollDeviceBreak(src)
    return true
end

local function finishCrack(src, success, channel)
    if not pendingCracks[src] then return end
    pendingCracks[src] = nil
    if not success then
        sendDispatch(src)
        return
    end
    if Config.LogUse then
        lib.logger(src, cache.resource, locale('Radio.LogJoined', channel))
    end
end

lib.callback.register('MrNewbRadioIntrusion:callback:startCrack', startCrack)
lib.callback.register('MrNewbRadioIntrusion:callback:finishCrack', finishCrack)

AddEventHandler('playerDropped', function()
    pendingCracks[source] = nil
end)

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName ~= cache.resource then return end
    bridge.framework.registerItemUse(Config.ItemName, onUseItem)
end)
