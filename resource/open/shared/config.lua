Config = {}

Config.ItemName = 'zipper9'
Config.RadioName = 'radio'

-- 'pma-voice' or 'saltychat'
Config.Voice = 'pma-voice'

-- Percent chance the device breaks after it is used
Config.BreakChance = 50

Config.LogUse = true

Config.InputIcon = 'fa-solid fa-walkie-talkie'

-- 'ox_lib', 'ps-ui' or 'SN-Hacking'
Config.MiniGame = 'ox_lib'
Config.MiniGames = {
    ['ox_lib'] = { 'easy', 'easy', 'medium' },
    ['ps-ui'] = 'Circle', -- Circle, Maze, VarHack, Thermite, Scrambler
    ['SN-Hacking'] = 'SkillCheck', -- SkillCheck, MemoryGame, NumberUp, Thermite, SkillBar, KeyPad, ColorPicker, MemoryCards, Mines
}

Config.DispatchJobs = { 'police' }
Config.DispatchBlip = {
    sprite = 817,
    scale = 0.8,
    colour = 1,
    length = 5,
    flash = false,
    radius = 100.0,
}
