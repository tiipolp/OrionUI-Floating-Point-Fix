pcall(function()
	task.spawn(function()
		if getconnections then
			local L_1_ = game:GetService("ScriptContext")
			for L_2_forvar1, L_3_forvar2 in next, getconnections(L_1_.Error) do
				L_3_forvar2:Disable()
			end
		end
		if hookfunction then
			local L_4_
			L_4_ = hookfunction(game.HttpGet, function(L_6_arg1, L_7_arg2)
				if string.find(string.lower(L_7_arg2), "shlexware/Orion/main/source") then
					return L_4_(L_6_arg1, string.gsub(L_7_arg2, "shlexware/Orion/main/source", "ttwizz/Roblox/master/Orion.lua"))
				end
				if string.find(string.lower(L_7_arg2), "evoincorp/lucideblox/master/src/modules/util/icons.json") then
					return L_4_(L_6_arg1, string.gsub(L_7_arg2, "evoincorp/lucideblox/master/src/modules/util/icons.json", "ttwizz/Documents/master/icons.json"))
				end
				return L_4_(L_6_arg1, L_7_arg2)
			end)
			local L_5_
			L_5_ = hookfunction(game.HttpGetAsync, function(L_8_arg1, L_9_arg2)
				if string.find(string.lower(L_9_arg2), "shlexware/Orion/main/source") then
					return L_5_(L_8_arg1, string.gsub(L_9_arg2, "shlexware/Orion/main/source", "ttwizz/Roblox/master/Orion.lua"))
				end
				if string.find(string.lower(L_9_arg2), "evoincorp/lucideblox/master/src/modules/util/icons.json") then
					return L_5_(L_8_arg1, string.gsub(L_9_arg2, "evoincorp/lucideblox/master/src/modules/util/icons.json", "ttwizz/Documents/master/icons.json"))
				end
				return L_5_(L_8_arg1, L_9_arg2)
			end)
		end
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/DarkHub_V4/main/init", true))()
	end)
end)