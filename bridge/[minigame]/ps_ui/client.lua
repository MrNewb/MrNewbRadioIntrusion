if Config.MiniGameS ~= "psui" then return end
if Config.Debug then print("Minigame Set To ", Config.MiniGame) end

function DoMiniGame()
	local value = false
	if Config.MiniGame == "Circle" then
		exports['ps-ui']:Circle(function(success)
			if success then
				if Config.Debug then print(Config.MiniGame," status is success") end
				value = true
			else
				if Config.Debug then print(Config.MiniGame," status is fail") end
				value = false
			end
		end, 2, 20) -- NumberOfCircles, MS
	elseif Config.MiniGame == "Maze" then
		exports['ps-ui']:Maze(function(success)
			if success then
				if Config.Debug then print(Config.MiniGame," status is success") end
				value = true
			else
				if Config.Debug then print(Config.MiniGame," status is fail") end
				value = false
			end
		end, 20) -- Hack Time Limit
	elseif Config.MiniGame == "VarHack" then
		exports['ps-ui']:VarHack(function(success)
			if success then
				if Config.Debug then print(Config.MiniGame," status is success") end
				value = true
			else
				if Config.Debug then print(Config.MiniGame," status is fail") end
				value = false
			end
		 end, 2, 3) -- Number of Blocks, Time (seconds)
	elseif Config.MiniGame == "Thermite" then
		exports['ps-ui']:Thermite(function(success)
			if success then
				if Config.Debug then print(Config.MiniGame," status is success") end
				value = true
			else
				if Config.Debug then print(Config.MiniGame," status is fail") end end
				value = false
			end
		 end, 10, 5, 3) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
	elseif Config.MiniGame == "Scrambler" then
		exports['ps-ui']:Scrambler(function(success)
			if success then
				if Config.Debug then print(Config.MiniGame," status is success") end
				value = true
			else
				if Config.Debug then print(Config.MiniGame," status is fail") end
				value = false
			end
		end, "numeric", 30, 0) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
	end
	return value
end