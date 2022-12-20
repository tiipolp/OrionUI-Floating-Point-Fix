pcall(function()
	local L_1_ = game:GetService("ScriptContext")
	local L_2_ = game:GetService("Debris")
	if not getconnections or not hookfunction or not checkcaller or not hookmetamethod or not getnamecallmethod or not getgenv then
		return
	end
	for L_15_forvar1, L_16_forvar2 in next, getconnections(L_1_.Error) do
		L_16_forvar2:Disable()
	end
	local L_3_ = {}
	local L_4_ = {}
	local L_5_ = {}
	local L_6_ = {}
	local L_7_ = {}
	local L_8_, L_9_
	local L_10_ = {
		"ChildAdded",
		"ChildRemoved",
		"DescendantRemoving",
		"DescendantAdded",
		"childAdded",
		"childRemoved",
		"descendantRemoving",
		"descendantAdded"
	}
	local L_11_ = {
		GetChildren = game.GetChildren,
		GetDescendants = game.GetDescendants,
		getChildren = game.getChildren,
		getDescendants = game.getDescendants,
		children = game.children
	}
	local L_12_ = {
		FindFirstChild = game.FindFirstChild,
		FindFirstChildWhichIsA = game.FindFirstChildWhichIsA,
		FindFirstChildOfClass = game.FindFirstChildOfClass,
		findFirstChild = game.findFirstChild,
		findFirstChildWhichIsA = game.findFirstChildWhichIsA,
		findFirstChildOfClass = game.findFirstChildOfClass
	}
	local L_13_ = {
		AddItem = L_2_.AddItem,
		Remove = game.Remove,
		Destroy = game.Destroy,
		addItem = L_2_.addItem,
		remove = game.remove,
		destroy = game.destroy
	}
	for L_17_forvar1, L_18_forvar2 in next, L_11_ do
		L_4_[L_17_forvar1] = hookfunction(L_18_forvar2, function(...)
			if not checkcaller() then
				local L_19_ = L_4_[L_17_forvar1](...)
				if L_19_ then
					table.foreach(L_19_, function(L_20_arg1, L_21_arg2)
						if table.find(L_3_, L_21_arg2) then
							table.remove(L_19_, L_20_arg1)
						end
					end)
					return L_19_
				end
			end
			return L_4_[L_17_forvar1](...)
		end)
	end
	for L_22_forvar1, L_23_forvar2 in next, L_12_ do
		L_5_[L_22_forvar1] = hookfunction(L_23_forvar2, function(...)
			if not checkcaller() then
				local L_24_ = L_5_[L_22_forvar1](...)
				if table.find(L_3_, L_24_) then
					L_24_ = nil
				end
				for L_25_forvar1, L_26_forvar2 in next, L_3_ do
					if L_26_forvar2 == L_24_ then
						L_24_ = nil
					end
				end
			end
			return L_5_[L_22_forvar1](...)
		end)
	end
	local function L_14_func(L_27_arg1)
		local L_28_ = {
			L_27_arg1.Parent
		}
		local L_29_ = L_27_arg1.Parent
		while L_29_ ~= game and L_29_ ~= nil do
			L_29_ = L_29_.Parent
			table.insert(L_28_, L_29_)
		end
		return L_28_
	end
	L_8_ = hookmetamethod(game, "__namecall", function(...)
		if not checkcaller() then
			local L_30_ = L_8_(...)
			local L_31_ = getnamecallmethod()
			local L_32_, L_33_ = ...
			if typeof(L_32_) ~= "Instance" then
				return L_30_
			end
			if not L_30_ then
				return nil
			end
			if L_11_[L_31_] then
				if typeof(L_30_) ~= "table" then
					return L_30_
				end
				table.foreach(L_30_, function(L_34_arg1, L_35_arg2)
					if table.find(L_3_, L_35_arg2) then
						table.remove(L_30_, L_34_arg1)
					end
				end)
				return L_30_
			end
			if L_12_[L_31_] then
				if typeof(L_30_) ~= "Instance" then
					return L_30_
				end
				if table.find(L_3_, L_30_) then
					return nil
				end
			end
		elseif checkcaller() then
			local L_36_, L_37_ = ...
			local L_38_ = getnamecallmethod()
			if L_13_[L_38_] then
				if typeof(L_36_) ~= "Instance" then
					return L_9_(...)
				end
				if table.find(L_3_, L_36_) and not L_6_[L_36_] then
					local L_39_ = L_36_.Parent
					L_7_[L_36_] = {}
					if tostring(L_39_) ~= "nil" then
						for L_40_forvar1, L_41_forvar2 in next, L_10_ do
							for L_42_forvar1, L_43_forvar2 in next, getconnections(L_39_[L_41_forvar2]) do
								table.insert(L_7_[L_36_], L_43_forvar2)
								L_43_forvar2:Disable()
							end
						end
					end
					for L_44_forvar1, L_45_forvar2 in next, getconnections(game.ItemChanged) do
						table.insert(L_7_[L_36_], L_45_forvar2)
						L_45_forvar2:Disable()
					end
					for L_46_forvar1, L_47_forvar2 in next, getconnections(game.itemChanged) do
						table.insert(L_7_[L_36_], L_47_forvar2)
						L_47_forvar2:Disable()
					end
					for L_48_forvar1, L_49_forvar2 in next, L_14_func(L_36_) do
						if tostring(L_49_forvar2) ~= "nil" then
							for L_50_forvar1, L_51_forvar2 in next, L_10_ do
								for L_52_forvar1, L_53_forvar2 in next, getconnections(L_49_forvar2[L_51_forvar2]) do
									table.insert(L_7_[L_36_], L_53_forvar2)
									L_53_forvar2:Disable()
								end
							end
						end
					end
					L_6_[L_36_] = true
					L_36_[L_38_](L_36_)
					L_6_[L_36_] = false
					table.foreach(L_7_[L_36_], function(L_54_arg1, L_55_arg2)
						L_55_arg2:Enable()
					end)
				end
			end
		end
		return L_8_(...)
	end)
	L_9_ = hookmetamethod(game, "__newindex", function(...)
		if checkcaller() then
			local L_56_, L_57_, L_58_, L_59_ = ...
			if typeof(L_56_) ~= "Instance" then
				return L_9_(...)
			end
			if table.find(L_3_, L_56_) and not L_6_[L_56_] then
				if rawequal(L_57_, "Parent") then
					local L_60_ = L_58_
					local L_61_ = L_56_.Parent
					L_7_[L_56_] = {}
					for L_62_forvar1, L_63_forvar2 in next, L_10_ do
						if L_60_ and L_60_.Parent ~= nil then
							for L_64_forvar1, L_65_forvar2 in next, getconnections(L_60_[L_63_forvar2]) do
								table.insert(L_7_[L_56_], L_65_forvar2)
								L_65_forvar2:Disable()
							end
						end
						if L_61_ and L_61_ ~= nil then
							for L_66_forvar1, L_67_forvar2 in next, getconnections(L_61_[L_63_forvar2]) do
								table.insert(L_7_[L_56_], L_67_forvar2)
								L_67_forvar2:Disable()
							end
						end
					end
					for L_68_forvar1, L_69_forvar2 in next, L_14_func(L_56_) do
						if L_69_forvar2 and L_69_forvar2.Parent ~= nil then
							for L_70_forvar1, L_71_forvar2 in next, L_10_ do
								for L_72_forvar1, L_73_forvar2 in next, getconnections(L_69_forvar2[L_71_forvar2]) do
									table.insert(L_7_[L_56_], L_73_forvar2)
									L_73_forvar2:Disable()
								end
							end
						end
					end
					for L_74_forvar1, L_75_forvar2 in next, L_14_func(L_60_) do
						if L_75_forvar2 and L_75_forvar2.Parent ~= nil then
							for L_76_forvar1, L_77_forvar2 in next, L_10_ do
								for L_78_forvar1, L_79_forvar2 in next, getconnections(L_75_forvar2[L_77_forvar2]) do
									table.insert(L_7_[L_56_], L_79_forvar2)
									L_79_forvar2:Disable()
								end
							end
						end
					end
					for L_80_forvar1, L_81_forvar2 in next, getconnections(game.ItemChanged) do
						table.insert(L_7_[L_56_], L_81_forvar2)
						L_81_forvar2:Disable()
					end
					for L_82_forvar1, L_83_forvar2 in next, getconnections(game.itemChanged) do
						table.insert(L_7_[L_56_], L_83_forvar2)
						L_83_forvar2:Disable()
					end
					L_6_[L_56_] = true
					L_56_.Parent = L_60_
					L_6_[L_56_] = false
					table.foreach(L_7_[L_56_], function(L_84_arg1, L_85_arg2)
						L_85_arg2:Enable()
					end)
				end
			end
		end
		return L_9_(...)
	end)
	getgenv().MS_PROTECT_INSTANCE = function(L_86_arg1)
		table.insert(L_3_, L_86_arg1)
	end
	getgenv().MS_UNPROTECT_INSTANCE = function(L_87_arg1)
		table.remove(L_3_, table.find(L_3_, L_87_arg1))
	end
end)