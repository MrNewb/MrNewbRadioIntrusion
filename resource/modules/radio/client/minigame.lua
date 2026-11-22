local function waitForCallback(start)
    local result = promise.new()
    start(function(success) result:resolve(success) end)
    return Citizen.Await(result)
end

local psUi = {
    Circle = function(done) exports['ps-ui']:Circle(done, 2, 20) end,
    Maze = function(done) exports['ps-ui']:Maze(done, 20) end,
    VarHack = function(done) exports['ps-ui']:VarHack(done, 2, 3) end,
    Thermite = function(done) exports['ps-ui']:Thermite(done, 10, 5, 3) end,
    Scrambler = function(done) exports['ps-ui']:Scrambler(done, 'numeric', 30, 0) end,
}

local snHacking = {
    SkillCheck = function() return exports['SN-Hacking']:SkillCheck(50, 5000, { 'w', 'a', 's', 'w' }, 2, 20, 3) end,
    MemoryGame = function() return exports['SN-Hacking']:MemoryGame(3, 2, 10) end,
    NumberUp = function() return exports['SN-Hacking']:NumberUp(28, 2, 2, 40, 20) end,
    Thermite = function() return exports['SN-Hacking']:Thermite(7, 5, 10000, 2, 2, 3000) end,
    SkillBar = function() return exports['SN-Hacking']:SkillBar({ 2000, 3000 }, 10, 2) end,
    KeyPad = function() return exports['SN-Hacking']:KeyPad(999, 3000) end,
    ColorPicker = function() return exports['SN-Hacking']:ColorPicker(3, 7000, 3000) end,
    MemoryCards = function() return exports['SN-Hacking']:MemoryCards('medium') end,
    Mines = function() return exports['SN-Hacking']:Mines(5, 3, 9, 1) end,
}

function RunMiniGame()
    local provider = Config.MiniGame
    local setting = Config.MiniGames[provider]
    if provider == 'ox_lib' then
        return lib.skillCheck(setting)
    elseif provider == 'ps-ui' then
        return waitForCallback(psUi[setting])
    end
    return snHacking[setting]() and true or false
end
