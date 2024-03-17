if Config.MiniGameS ~= "skeletonnetworks" then return end
if Config.Debug then print("Minigame Set To ", Config.MiniGame) end

function DoMiniGame()
	if Config.MiniGame == "SNSkillCheck" then
		local success = exports['SN-Hacking']:SkillCheck(50, 5000, {'w','a','s','w'}, 2, 20, 3) --SkillCheck(speed(milliseconds), time(milliseconds), keys(string or table), rounds(number), bars(number), safebars(number))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNMemoryGame" then
		local success = exports['SN-Hacking']:MemoryGame(3, 2, 10) --MemoryGame(keysNeeded(number), rounds(number), time(milliseconds))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNNumberUp" then
		local success = exports['SN-Hacking']:NumberUp(28, 2, 2, 40, 20) --NumberUp(keys(number), rounds(number), tries(number), time(milliseconds), shuffleTime(milliseconds))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNThermite" then
		local success = exports['SN-Hacking']:Thermite(7, 5, 10000, 2, 2, 3000) --Thermite(boxes(number), correctboxes(number), time(milliseconds), lifes(number), rounds(number), showTime(milliseconds))
		if success then
			print("success")
		else
			print("fail")
		end
	elseif Config.MiniGame == "SNSkillBar" then
		local success = exports['SN-Hacking']:SkillBar({2000, 3000}, 10, 2) --SkillBar(duration(milliseconds or table{min(milliseconds), max(milliseconds)}), width%(number), rounds(number))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNKeyPad" then
		local success = exports['SN-Hacking']:KeyPad(999, 3000) --KeyPad(code(number), time(milliseconds))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNColorPicker" then
		local success = exports['SN-Hacking']:ColorPicker(3, 7000, 3000)--ColorPicker(icons(number), typeTime(milliseconds), viewTime(milliseconds))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNMemoryCards" then
		local success = exports['SN-Hacking']:MemoryCards('medium') --MemoryCards(difficulty(easy, medium, hard), rounds(number))
		if success then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	elseif Config.MiniGame == "SNMines" then
		local multiplier = exports['SN-Hacking']:Mines(5, 3, 9, 1) --Mines(boxes(number), lifes(number), mines(number), special(number), values defaut: {normal= 0.1, mine= -0.5, special= 2, finished= 10})
		if multiplier then
			print("success")
			return true
		else
			print("fail")
			return false
		end
	end
end