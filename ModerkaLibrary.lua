--! Moderka Library
--! Release@2024.2.3

--! Author: ttwiz_z (ttwizz)
--! License: MIT
--! GitHub: https://github.com/ttwizz/Roblox/blob/master/ModerkaLibrary.lua

--! Issues: https://github.com/ttwizz/Roblox/issues
--! Pull requests: https://github.com/ttwizz/Roblox/pulls
--! Discussions: https://github.com/ttwizz/Roblox/discussions

--! ttwizz.su/pix


--? Source Code

local L_1_ = game:GetService("Players").LocalPlayer
local L_2_ = game:GetService("TweenService")
local L_3_ = game:GetService("UserInputService")
local L_4_ = game:GetService("CoreGui")
local L_5_ = game:GetService("Debris")
local L_6_ = game:GetService("TextService")
local L_7_ = L_1_:GetMouse()


local L_8_


local function L_9_func(L_24_arg1)
	local L_25_, L_26_, L_27_, L_28_
	local function L_29_func(L_30_arg1)
		local L_31_ = L_30_arg1.Position - L_27_
		local L_32_ = UDim2.new(L_28_.X.Scale, L_28_.X.Offset + L_31_.X, L_28_.Y.Scale, L_28_.Y.Offset + L_31_.Y)
		L_2_:Create(L_24_arg1, TweenInfo.new(0.075), {
			Position = L_32_
		}):Play()
	end
	L_24_arg1.InputBegan:Connect(function(L_33_arg1)
		if L_33_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_33_arg1.UserInputType == Enum.UserInputType.Touch then
			L_25_ = true
			L_27_ = L_33_arg1.Position
			L_28_ = L_24_arg1.Position
			L_33_arg1.Changed:Connect(function()
				if L_33_arg1.UserInputState == Enum.UserInputState.End then
					L_25_ = false
				end
			end)
		end
	end)
	L_24_arg1.InputChanged:Connect(function(L_34_arg1)
		if L_34_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_34_arg1.UserInputType == Enum.UserInputType.Touch then
			L_26_ = L_34_arg1
		end
	end)
	L_3_.InputChanged:Connect(function(L_35_arg1)
		if L_35_arg1 == L_26_ and L_25_ then
			L_29_func(L_35_arg1)
		end
	end)
end


local function L_10_func(L_36_arg1)
	local L_37_, L_38_ = L_7_.X - L_36_arg1.AbsolutePosition.X, L_7_.Y - L_36_arg1.AbsolutePosition.Y
	local L_39_, L_40_ = L_36_arg1.AbsoluteSize.X, L_36_arg1.AbsoluteSize.Y
	L_37_, L_38_ = math.clamp(L_37_, 0, L_39_), math.clamp(L_38_, 0, L_40_)
	return L_37_, L_38_, L_37_ / L_39_, L_38_ / L_40_
end


local function L_11_func(L_41_arg1)
	local L_42_ = Instance.new(L_41_arg1 and "ImageButton" or "ImageLabel")
	L_42_.Name = "TitleIcon"
	L_42_.BackgroundTransparency = 1
	L_42_.Image = "rbxassetid://11889453688"
	L_42_.ImageRectOffset = Vector2.new(524, 764)
	L_42_.ImageRectSize = Vector2.new(36, 36)
	L_42_.Size = UDim2.new(0, 14, 0, 14)
	L_42_.Position = UDim2.new(1, -17, 0, 3)
	L_42_.Rotation = 180
	L_42_.ZIndex = L_8_
	return L_42_
end


local function L_12_func(L_43_arg1)
	local L_44_ = Instance.new(L_43_arg1 and "ImageButton" or "ImageLabel")
	L_44_.Name = "TickIcon"
	L_44_.BackgroundTransparency = 1
	L_44_.Image = "rbxassetid://11889453688"
	L_44_.ImageRectOffset = Vector2.new(312, 4)
	L_44_.ImageRectSize = Vector2.new(24, 24)
	L_44_.Size = UDim2.new(1, -6, 1, -6)
	L_44_.Position = UDim2.new(0, 3, 0, 3)
	L_44_.ZIndex = L_8_
	return L_44_
end


local function L_13_func(L_45_arg1)
	local L_46_ = Instance.new(L_45_arg1 and "ImageButton" or "ImageLabel")
	L_46_.Name = "DropdownIcon"
	L_46_.BackgroundTransparency = 1
	L_46_.Image = "rbxassetid://11889472861"
	L_46_.ImageRectOffset = Vector2.new(324, 364)
	L_46_.ImageRectSize = Vector2.new(36, 36)
	L_46_.Size = UDim2.new(0, 16, 0, 16)
	L_46_.Position = UDim2.new(1, -18, 0, 2)
	L_46_.ZIndex = L_8_
	return L_46_
end


local function L_14_func(L_47_arg1)
	local L_48_ = Instance.new(L_47_arg1 and "ImageButton" or "ImageLabel")
	L_48_.Name = "SearchIcon"
	L_48_.BackgroundTransparency = 1
	L_48_.Image = "rbxassetid://11889453688"
	L_48_.ImageRectOffset = Vector2.new(964, 324)
	L_48_.ImageRectSize = Vector2.new(36, 36)
	L_48_.Size = UDim2.new(0, 16, 0, 16)
	L_48_.Position = UDim2.new(0, 2, 0, 2)
	L_48_.ZIndex = L_8_
	return L_48_
end


local function L_15_func(L_49_arg1, L_50_arg2)
	local L_51_ = Instance.new(L_50_arg2 and "ImageButton" or "ImageLabel")
	L_51_.BackgroundTransparency = 1
	L_51_.Image = "rbxassetid://11889516025"
	L_51_.SliceCenter = Rect.new(100, 100, 100, 100)
	L_51_.SliceScale = math.clamp((L_49_arg1 or 5) * 0.01, 0.01, 1)
	L_51_.ScaleType = Enum.ScaleType.Slice
	L_51_.ZIndex = L_8_
	return L_51_
end


local function L_16_func()
	local L_52_ = Instance.new("ImageLabel")
	L_52_.Name = "DropShadow"
	L_52_.BackgroundTransparency = 1
	L_52_.Image = "rbxassetid://11889435033"
	L_52_.ImageTransparency = 0.3
	L_52_.Size = UDim2.new(1, 0, 1, 0)
	L_52_.ZIndex = L_8_
	return L_52_
end


local function L_17_func()
	local L_53_ = Instance.new("Frame")
	L_53_.BorderSizePixel = 0
	L_53_.ZIndex = L_8_
	return L_53_
end


local function L_18_func()
	local L_54_ = Instance.new("ScrollingFrame")
	L_54_.BackgroundTransparency = 1
	L_54_.BorderSizePixel = 0
	L_54_.ScrollBarThickness = 0
	L_54_.ZIndex = L_8_
	return L_54_
end


local function L_19_func(L_55_arg1, L_56_arg2)
	local L_57_ = Instance.new("TextButton")
	L_57_.Text = L_55_arg1
	L_57_.AutoButtonColor = false
	L_57_.Font = Enum.Font.Gotham
	L_57_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_57_.BackgroundTransparency = 1
	Instance.new("UITextSizeConstraint", L_57_).MaxTextSize = L_56_arg2 or 12
	L_57_.TextScaled = true
	L_57_.Size = UDim2.new(1, 0, 1, 0)
	L_57_.ZIndex = L_8_
	return L_57_
end


local function L_20_func(L_58_arg1, L_59_arg2)
	local L_60_ = Instance.new("TextBox")
	L_60_.Text = ""
	L_60_.PlaceholderText = L_58_arg1
	L_60_.Font = Enum.Font.Gotham
	L_60_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_60_.BackgroundTransparency = 1
	Instance.new("UITextSizeConstraint", L_60_).MaxTextSize = L_59_arg2 or 12
	L_60_.TextScaled = true
	L_60_.Size = UDim2.new(1, 0, 1, 0)
	L_60_.ZIndex = L_8_
	return L_60_
end


local function L_21_func(L_61_arg1, L_62_arg2)
	local L_63_ = Instance.new("TextLabel")
	L_63_.Text = L_61_arg1
	L_63_.Font = Enum.Font.Gotham
	L_63_.TextColor3 = Color3.fromRGB(255, 255, 255)
	L_63_.BackgroundTransparency = 1
	Instance.new("UITextSizeConstraint", L_63_).MaxTextSize = L_62_arg2 or 12
	L_63_.TextScaled = true
	L_63_.Size = UDim2.new(1, 0, 1, 0)
	L_63_.ZIndex = L_8_
	return L_63_
end


local function L_22_func(L_64_arg1, L_65_arg2)
	local L_66_ = L_2_:Create(L_64_arg1, TweenInfo.new(0.1), L_65_arg2)
	L_66_:Play()
	return L_66_
end


local L_23_ = {}

function L_23_:AddWindow(L_67_arg1)
	L_67_arg1 = L_67_arg1 or "Window"
	L_8_ = 1
	local L_68_, L_69_, L_70_, L_71_, L_72_ = nil, Instance.new("ScreenGui"), L_17_func(), L_16_func(), L_15_func(5)
	xpcall(function()
		L_69_.Parent = L_4_
		L_68_ = L_4_
	end, function()
		L_69_.Parent = L_1_:WaitForChild("PlayerGui", math.huge)
		L_69_.DisplayOrder = 9e8
		L_69_.ResetOnSpawn = false
		L_68_ = L_1_:WaitForChild("PlayerGui", math.huge)
	end)
	local L_73_ = L_68_:FindFirstChild(L_67_arg1 .. "-ModerkaLibrary")
	if L_73_ then
		L_5_:AddItem(L_73_, 0)
	end
	L_69_.Name = L_67_arg1 .. "-ModerkaLibrary"
	L_70_.Name = "ContainerFrame"
	L_70_.Size = UDim2.new(0, 500, 0, 300)
	L_70_.Position = UDim2.new(0.5, -250, 0.5, -150)
	L_70_.BackgroundTransparency = 1
	L_9_func(L_70_)
	L_70_.Parent = L_69_
	L_71_.Name = "Shadow"
	L_71_.Parent = L_70_
	L_8_ = L_8_ + 1
	L_72_.ClipsDescendants = true
	L_72_.Name = "MainFrame"
	L_72_.Size = UDim2.new(1, -50, 1, -30)
	L_72_.Position = UDim2.new(0, 25, 0, 15)
	L_72_.ImageColor3 = Color3.fromRGB(30, 30, 30)
	L_72_.Parent = L_70_
	local L_74_, L_75_, L_76_ = L_18_func(), L_15_func(5), L_15_func(5)
	L_74_.Name = "MenuBar"
	L_74_.BackgroundTransparency = 0.7
	L_74_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	L_74_.Size = UDim2.new(0, 100, 0, 235)
	L_74_.Position = UDim2.new(0, 5, 0, 30)
	L_74_.CanvasSize = UDim2.new(0, 0, 0, 0)
	L_74_.Parent = L_72_
	L_75_.Name = "Display"
	L_75_.ImageColor3 = Color3.fromRGB(20, 20, 20)
	L_75_.Size = UDim2.new(1, -115, 0, 235)
	L_75_.Position = UDim2.new(0, 110, 0, 30)
	L_75_.Parent = L_72_
	L_76_.Name = "TitleBar"
	L_76_.ImageColor3 = Color3.fromRGB(40, 40, 40)
	L_76_.Size = UDim2.new(1, -10, 0, 20)
	L_76_.Position = UDim2.new(0, 5, 0, 5)
	L_76_.Parent = L_72_
	L_8_ = L_8_ + 1
	local L_77_, L_78_ = L_11_func(true), L_21_func(L_67_arg1, 14)
	local L_79_ = true
	L_77_.Name = "Minimize"
	L_77_.Parent = L_76_
	L_78_.Name = "TitleLabel"
	L_78_.Size = UDim2.new(1, -20, 1, 0)
	L_78_.Parent = L_76_
	L_77_.MouseButton1Down:Connect(function()
		L_79_ = not L_79_
		if not L_79_ then
			L_22_func(L_72_, {
				Size = UDim2.new(1, -50, 0, 30)
			})
			L_22_func(L_77_, {
				Rotation = 0
			})
			L_22_func(L_71_, {
				ImageTransparency = 1
			})
		else
			L_22_func(L_72_, {
				Size = UDim2.new(1, -50, 1, -30)
			})
			L_22_func(L_77_, {
				Rotation = 180
			})
			L_22_func(L_71_, {
				ImageTransparency = 0.3
			})
		end
	end)
	L_8_ = L_8_ + 1
	local L_80_ = Instance.new("UIListLayout", L_74_)
	L_80_.SortOrder = Enum.SortOrder.LayoutOrder
	L_80_.Padding = UDim.new(0, 5)

	local L_81_ = 0

	local L_82_ = {}

	function L_82_:AddPage(L_83_arg1, L_84_arg2)
		L_83_arg1 = L_83_arg1 or "Page"
		local L_85_ = L_84_arg2 == nil and true or L_84_arg2
		local L_86_ = L_15_func(5)
		L_86_.Name = L_83_arg1
		L_86_.Size = UDim2.new(1, 0, 0, 20)
		L_86_.LayoutOrder = L_81_
		L_86_.ImageColor3 = L_81_ == 0 and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(40, 40, 40)
		L_86_.Parent = L_74_
		local L_87_ = L_19_func(L_83_arg1, 14)
		L_87_.Name = L_83_arg1 .. "_Button"
		L_87_.TextTransparency = L_81_ == 0 and 0 or 0.5
		L_87_.Parent = L_86_
		L_87_.MouseButton1Down:Connect(function()
			task.spawn(function()
				for _, L_93_forvar2 in next, L_74_:GetChildren() do
					if L_93_forvar2:IsA("GuiObject") then
						local L_94_ = string.lower(L_93_forvar2.Name) == string.lower(L_86_.Name)
						local L_95_ = L_93_forvar2:FindFirstChild(L_93_forvar2.Name .. "_Button")
						L_22_func(L_93_forvar2, {
							ImageColor3 = L_94_ and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(40, 40, 40)
						})
						L_22_func(L_95_, {
							TextTransparency = L_94_ and 0 or 0.5
						})
					end
				end
			end)
			task.spawn(function()
				for _, L_97_forvar2 in next, L_75_:GetChildren() do
					if L_97_forvar2:IsA("GuiObject") then
						L_97_forvar2.Visible = string.lower(L_97_forvar2.Name) == string.lower(L_86_.Name)
					end
				end
			end)
		end)
		local L_88_ = L_18_func()
		L_88_.Visible = L_81_ == 0
		L_88_.Name = L_83_arg1
		L_88_.Size = UDim2.new(1, 0, 1, 0)
		L_88_.Parent = L_75_
		L_8_ = L_8_ + 1
		local L_89_ = Instance.new("UIListLayout", L_88_)
		L_89_.SortOrder = Enum.SortOrder.LayoutOrder
		L_89_.Padding = UDim.new(0, 5)
		L_89_:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			local L_98_ = L_89_.AbsoluteContentSize.Y
			local L_99_ = L_88_.AbsoluteWindowSize.Y
			L_88_.CanvasSize = UDim2.new(0, 0, (L_98_ / L_99_) + 0.05, 0)
		end)
		local L_90_ = Instance.new("UIPadding", L_88_)
		L_90_.PaddingBottom = UDim.new(0, 5)
		L_90_.PaddingTop = UDim.new(0, 5)
		L_90_.PaddingLeft = UDim.new(0, 5)
		L_90_.PaddingRight = UDim.new(0, 5)
		if L_85_ then
			local L_100_ = L_15_func(5)
			L_100_.Name = "SearchBar"
			L_100_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_100_.Size = UDim2.new(1, 0, 0, 20)
			L_100_.Parent = L_88_
			local L_101_ = L_20_func("Search...")
			L_101_.Name = "SearchInput"
			L_101_.Position = UDim2.new(0, 20, 0, 0)
			L_101_.Size = UDim2.new(1, -20, 1, 0)
			L_101_.TextTransparency = 0.5
			L_101_.TextXAlignment = Enum.TextXAlignment.Left
			L_101_.Parent = L_100_
			local L_102_ = L_14_func()
			L_102_.Parent = L_100_
			L_101_:GetPropertyChangedSignal("Text"):Connect(function()
				local L_103_ = L_101_.Text
				for _, L_105_forvar2 in next, L_88_:GetChildren() do
					if L_105_forvar2:IsA("Frame") or string.find(string.lower(L_105_forvar2.Name), "-textbox") and not string.find(string.lower(L_105_forvar2.Name), "-label") then
						if string.find(string.lower(L_105_forvar2.Name), string.lower(L_103_)) then
							L_105_forvar2.Visible = true
						else
							L_105_forvar2.Visible = false
						end
					end
				end
			end)
		end

		local L_91_ = {}

		function L_91_:AddButton(L_106_arg1, L_107_arg2, L_108_arg3, L_109_arg4)
			L_106_arg1 = L_106_arg1 or "Button"
            L_107_arg2 = L_107_arg2 or function() end
			local L_110_ = L_17_func()
			L_110_.Name = L_106_arg1 .. "-Button"
			L_110_.Size = UDim2.new(1, 0, 0, 20)
			L_110_.BackgroundTransparency = 1
			L_110_.Parent = L_108_arg3 or L_88_
			local L_111_ = L_15_func(5)
			L_111_.Name = "ButtonForeground"
			L_111_.Size = UDim2.new(1, 0, 1, 0)
			L_111_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_111_.Parent = L_110_
			if L_109_arg4 then
				local L_113_ = L_6_:GetTextSize(L_106_arg1, 12, Enum.Font.Gotham, Vector2.new(0, 0))
				local L_114_ = L_17_func()
				L_114_.Size = UDim2.new(0, L_113_.X, 0, 1)
				L_114_.Position = UDim2.new(0.5, (-L_113_.X / 2) - 1, 1, -1)
				L_114_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_114_.BackgroundTransparency = 0.5
				L_114_.Parent = L_111_
			end
			local L_112_ = L_19_func(L_106_arg1, 12)
			L_112_.Parent = L_111_
			L_112_.MouseButton1Down:Connect(function()
				pcall(L_107_arg2)
				L_22_func(L_111_, {
					ImageColor3 = Color3.fromRGB(45, 45, 45)
				})
				L_22_func(L_112_, {
					TextTransparency = 0.5
				})
				task.wait(0.1)
				L_22_func(L_111_, {
					ImageColor3 = Color3.fromRGB(35, 35, 35)
				})
				L_22_func(L_112_, {
					TextTransparency = 0
				})
			end)
		end

		function L_91_:AddLabel(L_115_arg1)
			L_115_arg1 = L_115_arg1 or "Label"
			local L_116_ = L_17_func()
			L_116_.Name = L_115_arg1 .. "-Label"
			L_116_.Size = UDim2.new(1, 0, 0, 20)
			L_116_.BackgroundTransparency = 1
			L_116_.Parent = L_88_
			local L_117_ = L_15_func(5)
			L_117_.Name = "LabelForeground"
			L_117_.ImageColor3 = Color3.fromRGB(45, 45, 45)
			L_117_.Size = UDim2.new(1, 0, 1, 0)
			L_117_.Parent = L_116_
			local L_118_ = L_21_func(L_115_arg1, 12)
			L_118_.Parent = L_117_
		end

		function L_91_:AddDropdown(L_119_arg1, L_120_arg2, L_121_arg3)
			L_119_arg1 = L_119_arg1 or "Dropdown"
            L_121_arg3 = L_121_arg3 or function() end
			local L_122_ = L_120_arg2 or {}
			local L_123_ = false
			local L_124_ = L_17_func()
			L_124_.Size = UDim2.new(1, 0, 0, 20)
			L_124_.Name = L_119_arg1 .. "-Dropdown"
			L_124_.BackgroundTransparency = 1
			L_124_.Parent = L_88_
			local L_125_ = L_15_func(5)
			L_125_.ClipsDescendants = true
			L_125_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_125_.Size = UDim2.new(1, 0, 1, 0)
			L_125_.Parent = L_124_
			local L_126_ = L_13_func(true)
			L_126_.Parent = L_125_
			local L_127_ = L_21_func(L_119_arg1, 12)
			L_127_.Size = UDim2.new(1, 0, 0, 20)
			L_127_.Parent = L_125_
			local L_128_ = L_17_func()
			L_128_.Position = UDim2.new(0, 0, 0, 20)
			L_128_.BackgroundTransparency = 1
			L_128_.Size = UDim2.new(1, 0, 0, #L_122_ * 20)
			L_128_.Parent = L_125_
			Instance.new("UIListLayout", L_128_)
			for L_129_forvar1, L_130_forvar2 in next, L_122_ do
				L_91_:AddButton(L_130_forvar2, function()
					pcall(L_121_arg3, L_130_forvar2)
					L_127_.Text = string.format("%s: %s", L_119_arg1, L_130_forvar2)
				end, L_128_, L_129_forvar1 < #L_122_)
			end
			L_126_.MouseButton1Down:Connect(function()
				L_123_ = not L_123_
				L_22_func(L_124_, {
					Size = L_123_ and UDim2.new(1, 0, 0, 20 + #L_122_ * 20) or UDim2.new(1, 0, 0, 20)
				})
				L_22_func(L_126_, {
					Rotation = L_123_ and 135 or 0
				})
			end)
		end

		function L_91_:AddColourPicker(L_131_arg1, L_132_arg2, L_133_arg3)
			L_131_arg1 = L_131_arg1 or "ColourPicker"
            L_133_arg3 = L_133_arg3 or function() end
			local L_134_ = L_132_arg2 or Color3.fromRGB(255, 255, 255)
			local L_135_ = {
				white = Color3.fromRGB(255, 255, 255),
				black = Color3.fromRGB(0, 0, 0),
				red = Color3.fromRGB(255, 0, 0),
				green = Color3.fromRGB(0, 255, 0),
				blue = Color3.fromRGB(0, 0, 255),
                yellow = Color3.fromRGB(255, 255, 0),
                magenta = Color3.fromRGB(255, 0, 255),
                cyan = Color3.fromRGB(0, 255, 255)
			}
			if typeof(L_134_) == "table" then
				L_134_ = Color3.fromRGB(L_134_[1] or 255, L_134_[2] or 255, L_134_[3] or 255)
			elseif typeof(L_134_) == "string" then
				L_134_ = L_135_[string.lower(L_134_)] or L_135_.white
			end
			local L_136_ = L_17_func()
			L_136_.ClipsDescendants = true
			L_136_.Size = UDim2.new(1, 0, 0, 20)
			L_136_.Name = L_131_arg1 .. "-ColourPicker"
			L_136_.BackgroundTransparency = 1
			L_136_.Parent = L_88_
			local L_137_ = Instance.new("Color3Value", L_136_)
			L_137_.Value = L_134_
			local L_138_, L_139_, L_140_ = L_15_func(5), L_15_func(5), L_15_func(5)
			L_138_.Size = UDim2.new(1, -22, 1, 0)
			L_138_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_138_.Parent = L_136_
			L_139_.Size = UDim2.new(0, 20, 1, 0)
			L_139_.Position = UDim2.new(1, -20, 0, 0)
			L_139_.ImageColor3 = L_134_
			L_139_.Parent = L_136_
			L_140_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_140_.Size = UDim2.new(1, -22, 0, 60)
			L_140_.Position = UDim2.new(0, 0, 0, 20)
			L_140_.Parent = L_136_
			local L_141_ = Instance.new("UIListLayout", L_140_)
			L_141_.SortOrder = Enum.SortOrder.LayoutOrder
			L_91_:AddSlider("R", {
				Minimum = 0,
				Maximum = 255,
				Default = L_137_.Value.R * 255
			}, function(L_147_arg1)
				L_137_.Value = Color3.fromRGB(L_147_arg1, L_137_.Value.G * 255, L_137_.Value.B * 255)
				pcall(L_133_arg3, L_137_.Value)
			end, L_140_)
			L_91_:AddSlider("G", {
				Minimum = 0,
				Maximum = 255,
				Default = L_137_.Value.G * 255
			}, function(L_148_arg1)
				L_137_.Value = Color3.fromRGB(L_137_.Value.R * 255, L_148_arg1, L_137_.Value.B * 255)
				pcall(L_133_arg3, L_137_.Value)
			end, L_140_)
			L_91_:AddSlider("B", {
				Minimum = 0,
				Maximum = 255,
				Default = L_137_.Value.B * 255
			}, function(L_149_arg1)
				L_137_.Value = Color3.fromRGB(L_137_.Value.R * 255, L_137_.Value.G * 255, L_149_arg1)
				pcall(L_133_arg3, L_137_.Value)
			end, L_140_)
			local L_142_, L_143_ = L_17_func(), L_17_func()
			L_142_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			L_142_.Position = UDim2.new(1, -5, 0, 0)
			L_142_.Size = UDim2.new(0, 5, 1, 0)
			L_142_.Parent = L_138_
			L_143_.BackgroundColor3 = L_134_
			L_143_.Size = UDim2.new(0, 5, 1, 0)
			L_143_.Parent = L_139_
			local L_144_ = L_21_func(L_131_arg1, 12)
			L_144_.Size = UDim2.new(1, 0, 0, 20)
			L_144_.Parent = L_138_
			L_137_:GetPropertyChangedSignal("Value"):Connect(function()
				local L_150_ = L_137_.Value
				L_143_.BackgroundColor3 = L_150_
				L_139_.ImageColor3 = L_150_
			end)
			local L_145_ = false
			local L_146_ = L_19_func("")
			L_146_.Parent = L_139_
			L_146_.MouseButton1Down:Connect(function()
				L_145_ = not L_145_
				L_22_func(L_136_, {
					Size = L_145_ and UDim2.new(1, 0, 0, 80) or UDim2.new(1, 0, 0, 20)
				})
			end)
		end

		function L_91_:AddSlider(L_151_arg1, L_152_arg2, L_153_arg3, L_154_arg4)
			L_151_arg1 = L_151_arg1 or "Slider"
			local L_155_ = L_152_arg2 or {
				Minimum = 0,
				Maximum = 255,
				Default = 50
			}
			if L_155_.Minimum > L_155_.Maximum then
				local L_161_ = L_155_.Minimum
				L_155_.Minimum = L_155_.Maximum
				L_155_.Maximum = L_161_
			end
			L_155_.Default = math.clamp(L_155_.Default, L_155_.Minimum, L_155_.Maximum)
			local L_156_ = L_155_.Default / L_155_.Maximum
			local L_157_ = L_17_func()
			L_157_.Name = L_151_arg1 .. "-Slider"
			L_157_.Size = UDim2.new(1, 0, 0, 20)
			L_157_.BackgroundTransparency = 1
			L_157_.Parent = L_154_arg4 or L_88_
			local L_158_ = L_15_func(5)
			L_158_.Name = "SliderForeground"
			L_158_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_158_.Size = UDim2.new(1, 0, 1, 0)
			L_158_.Parent = L_157_
			local L_159_ = L_19_func(string.format("%s: %s", L_151_arg1, L_155_.Default))
			L_159_.Size = UDim2.new(1, 0, 1, 0)
			L_159_.ZIndex = 6
			L_159_.Parent = L_158_
			local L_160_ = L_15_func(5)
			L_160_.Size = UDim2.new(L_156_, 0, 1, 0)
			L_160_.ImageColor3 = Color3.fromRGB(70, 70, 70)
			L_160_.ZIndex = 5
			L_160_.ImageTransparency = 0.7
			L_160_.Parent = L_159_
			L_159_.MouseButton1Down:Connect(function()
				L_22_func(L_160_, {
					ImageTransparency = 0.5
				})
				local _, _, L_164_, _ = L_10_func(L_159_)
				local L_166_ = math.floor(L_155_.Minimum + (L_155_.Maximum - L_155_.Minimum) * L_164_)
				pcall(L_153_arg3, L_166_)
				L_159_.Text = string.format("%s: %s", L_151_arg1, L_166_)
				local L_167_ = UDim2.new(L_164_, 0, 1, 0)
				L_22_func(L_160_, {
					Size = L_167_
				})
				local L_168_, L_169_
				L_168_ = L_7_.Move:Connect(function()
					L_22_func(L_160_, {
						ImageTransparency = 0.5
					})
					local _, _, L_172_, _ = L_10_func(L_159_)
					local L_174_ = math.floor(L_155_.Minimum + (L_155_.Maximum - L_155_.Minimum) * L_172_)
					pcall(L_153_arg3, L_174_)
					L_159_.Text = string.format("%s: %s", L_151_arg1, L_174_)
					local L_175_ = UDim2.new(L_172_, 0, 1, 0)
					L_22_func(L_160_, {
						Size = L_175_
					})
				end)
				L_169_ = L_3_.InputEnded:Connect(function(L_176_arg1)
					if L_176_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_176_arg1.UserInputType == Enum.UserInputType.Touch then
						L_22_func(L_160_, {
							ImageTransparency = 0.7
						})
						L_168_:Disconnect()
						L_169_:Disconnect()
					end
				end)
			end)
		end

		function L_91_:AddToggle(L_177_arg1, L_178_arg2, L_179_arg3)
			L_177_arg1 = L_177_arg1 or "Toggle"
			local L_180_ = L_178_arg2 or false
			local L_181_ = L_17_func()
			L_181_.Name = L_177_arg1 .. "-Toggle"
			L_181_.Size = UDim2.new(1, 0, 0, 20)
			L_181_.BackgroundTransparency = 1
			L_181_.Parent = L_88_
			local L_182_, L_183_, L_184_, L_185_ = L_15_func(5), L_15_func(5), L_17_func(), L_12_func()
			local L_186_, L_187_ = L_17_func(), L_17_func()
			L_182_.Size = UDim2.new(1, -22, 1, 0)
			L_182_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_182_.Parent = L_181_
			L_183_.Position = UDim2.new(1, -20, 0, 0)
			L_183_.Size = UDim2.new(0, 20, 1, 0)
			L_183_.ImageColor3 = Color3.fromRGB(45, 45, 45)
			L_183_.Parent = L_181_
			L_186_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			L_186_.Size = UDim2.new(0, 5, 1, 0)
			L_186_.Position = UDim2.new(1, -5, 0, 0)
			L_186_.Parent = L_182_
			L_187_.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			L_187_.Size = UDim2.new(0, 5, 1, 0)
			L_187_.Parent = L_183_
			L_184_.BackgroundColor3 = L_180_ and Color3.fromRGB(0, 255, 109) or Color3.fromRGB(255, 160, 160)
			L_184_.Position = UDim2.new(1, -22, 0.2, 0)
			L_184_.Size = UDim2.new(0, 2, 0.6, 0)
			L_184_.Parent = L_181_
			L_185_.ImageTransparency = L_180_ and 0 or 1
			L_185_.Parent = L_183_
			local L_188_ = L_19_func(L_177_arg1, 12)
			L_188_.Name = "ToggleButton"
			L_188_.Size = UDim2.new(1, 0, 1, 0)
			L_188_.Parent = L_182_
			L_188_.MouseButton1Down:Connect(function()
				L_180_ = not L_180_
				L_22_func(L_184_, {
					BackgroundColor3 = L_180_ and Color3.fromRGB(0, 255, 109) or Color3.fromRGB(255, 160, 160)
				})
				L_22_func(L_185_, {
					ImageTransparency = L_180_ and 0 or 1
				})
				pcall(L_179_arg3, L_180_)
			end)
		end

		function L_91_:AddTextBox(L_189_arg1, L_190_arg2, L_191_arg3, L_192_arg3)
			L_189_arg1 = L_189_arg1 or "TextBox"
            L_190_arg2 = L_190_arg2 or function() end
			local L_193_ = L_15_func(5)
			L_193_.Name = L_189_arg1 .. "-TextBox"
			L_193_.ImageColor3 = Color3.fromRGB(35, 35, 35)
			L_193_.Size = UDim2.new(1, 0, 0, 20)
			L_193_.Parent = L_88_
			local L_194_ = L_20_func(L_189_arg1)
			L_194_.Name = L_189_arg1
			L_194_.TextTransparency = 0.5
			L_194_.TextXAlignment = Enum.TextXAlignment.Center
			L_194_.Parent = L_193_
			L_194_.Focused:Connect(function()
				L_194_.TextXAlignment = Enum.TextXAlignment.Left
			end)
			L_194_.FocusLost:Connect(function()
				L_194_.TextXAlignment = Enum.TextXAlignment.Center
				if L_191_arg3 and #L_194_.Text > 0 or not L_191_arg3 then
					pcall(L_190_arg2, L_194_.Text)
					if L_192_arg3 then
						L_194_.Text = ""
					end
				end
			end)
		end

		return L_91_
	end

    function L_82_:Destroy()
		L_5_:AddItem(L_69_, 0)
	end

	return L_82_
end


return L_23_