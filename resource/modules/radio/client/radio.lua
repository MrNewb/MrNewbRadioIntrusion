local function joinChannel(channel)
    if Config.Voice == 'pma-voice' then
        exports['pma-voice']:setVoiceProperty('radioEnabled', true)
        exports['pma-voice']:setVoiceProperty('micClicks', true)
        exports['pma-voice']:setRadioChannel(channel)
    else
        exports.saltychat:SetRadioChannel(tostring(channel), true)
    end
    bridge.notifications.notify({ description = locale('Radio.Cracked', channel), type = 'success' })
end

local function askFrequency()
    local values = bridge.inputs.inputdialog(locale('Radio.InputTitle'), {
        {
            type = 'number',
            label = locale('Radio.InputLabel'),
            description = locale('Radio.InputDescription'),
            icon = Config.InputIcon,
            min = 1,
            required = true,
        },
    })
    return values and math.floor(tonumber(values[1]) or 0) or 0
end

local function onUsedCrackUnit()
    local channel = askFrequency()
    if channel < 1 then
        bridge.notifications.notify({ description = locale('Radio.NoFrequency'), type = 'error' })
        return
    end
    if not lib.callback.await('MrNewbRadioIntrusion:callback:startCrack', false) then return end

    local success = RunMiniGame()
    lib.callback.await('MrNewbRadioIntrusion:callback:finishCrack', false, success, channel)
    if success then
        joinChannel(channel)
        return
    end
    bridge.notifications.notify({ description = locale('Radio.CrackFailed'), type = 'error' })
end

RegisterNetEvent('MrNewbRadioIntrusion:client:usedCrackUnit', onUsedCrackUnit)
