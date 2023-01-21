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
				if string.find(string.lower(L_7_arg2), "lerkermer") then
					return L_4_(L_6_arg1, string.gsub(L_7_arg2, "lerkermer", "ttwizz"))
				end
				if string.find(string.lower(L_7_arg2), "nzxicwc1") then
					return L_4_(L_6_arg1, "https://pastebin.com/raw/TfPwSJeM")
				end
				if string.find(string.lower(L_7_arg2), "swagmode/swagmode") then
					return L_4_(L_6_arg1, string.gsub(L_7_arg2, "swagmode/swagmode", "ttwizz/swagmode"))
				end
				if string.find(string.lower(L_7_arg2), "swagmode.xyz") then
					return task.wait(math.huge)
				end
				return L_4_(L_6_arg1, L_7_arg2)
			end)
			local L_5_
			L_5_ = hookfunction(game.HttpGetAsync, function(L_8_arg1, L_9_arg2)
				if string.find(string.lower(L_9_arg2), "lerkermer") then
					return L_5_(L_8_arg1, string.gsub(L_9_arg2, "lerkermer", "ttwizz"))
				end
				if string.find(string.lower(L_9_arg2), "nzxicwc1") then
					return L_5_(L_8_arg1, "https://pastebin.com/raw/TfPwSJeM")
				end
				if string.find(string.lower(L_9_arg2), "swagmode/swagmode") then
					return L_5_(L_8_arg1, string.gsub(L_9_arg2, "swagmode/swagmode", "ttwizz/swagmode"))
				end
				if string.find(string.lower(L_9_arg2), "swagmode.xyz") then
					return task.wait(math.huge)
				end
				return L_5_(L_8_arg1, L_9_arg2)
			end)
		end
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002", true))()
	end)
end)