--		___  ___       _   _                  _      _____              _         _
--		|  \/  |      | \ | |                | |    /  ___|            (_)       | |
--		| .  . | _ __ |  \| |  ___ __      __| |__  \ `--.   ___  _ __  _  _ __  | |_  ___
--		| |\/| || '__|| . ` | / _ \\ \ /\ / /| '_ \  `--. \ / __|| '__|| || '_ \ | __|/ __|
--		| |  | || |   | |\  ||  __/ \ V  V / | |_) |/\__/ /| (__ | |   | || |_) || |_ \__ \
--		\_|  |_/|_|   \_| \_/ \___|  \_/\_/  |_.__/ \____/  \___||_|   |_|| .__/  \__||___/
--									          							  | |
--									          							  |_|
--		  Need support? Join our Discord server for help: https://discord.gg/d3Kh2vz3a7
Config = {
	Debug = true,												-- set this to turn on prints
	ItemName = "zipper9",										-- The item that would be used for this to work
	RadioName = "radio",										-- The radio item name that you use
	framework = "qb",											-- set this to the name of the method, pass as string. options are "qb", "esx" if using qbx just set to qb
	Voice = "pma",												-- set this to the name of the method, pass as string. options are "pma", "salty"
	Logs = false,												-- set this to the name of the method, pass as string. options are "qb","ox", set to false to disable like Logs = false,
	Notify = "ox",												-- set this to the name of the method, pass as string. options are "ox","qb","ok","sd", "brutal", "mythic", "pnotify"
	Input = "ox",												-- set this to the name of the method, pass as string. options are "ox","qb"
	Inventory = "ox",											-- set this to the name of the method, pass as string. options are "ox","qb",
	Progress = "ox",											-- set this to the name of the method, pass as string. options are "ox","qb",
	Icon = "fa-solid fa-walkie-talkie",							-- set this to the icon you want to use, only works on ox_lib menu so if not using it leave it blank
	Description = "Put the frequiency in here.",				-- set this to the icon you want to use, only works on ox_lib menu so if not using it leave it blank
	Placeholder = "IAMNEWB1",									-- set this to the text that sits in the box before you type, I request you not change this but I wont stop you =(
	Title = "Radio Frequiency",									-- set this to the title of the menu the player sees
	Alert = "Standalone",										-- set this to the name of the method, pass as string. options are "PsDispatch","Standalone","cd_Dispatch","qs_Dispatch"
	MiniGameS = "psui",											-- set this to the minigame creator, supported options are "skeletonnetworks" or "psui"
	MiniGame = "Circle",
	-- set this to the minigame, supported options for skeletonnetworks are "SNSkillCheck","SNMemoryGame","SNNumberUp","SNThermite","SNSkillBar","SNKeyPad","SNColorPicker","SNMemoryCards","SNMines"
	-- set this to the minigame, supported options for psui are "Circle","Maze","VarHack","Thermite","Scrambler"
}