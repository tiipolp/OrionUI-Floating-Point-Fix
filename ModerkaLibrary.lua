pcall(function()
	local L_1_ = game:GetService("Players").LocalPlayer
	local L_2_ = game:GetService("TweenService")
	local L_3_ = game:GetService("UserInputService")
	local L_4_ = game:GetService("CoreGui")
	local L_5_ = game:GetService("RunService")
	local L_6_ = game:GetService("TextService")
	local L_7_ = L_1_:GetMouse()
	local L_8_ = 1
	local L_9_ = TweenInfo.new(0.1)
	local L_10_ = TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local function L_11_func(L_25_arg1)
		local L_26_, L_27_ = L_7_.X - L_25_arg1.AbsolutePosition.X, L_7_.Y - L_25_arg1.AbsolutePosition.Y
		local L_28_, L_29_ = L_25_arg1.AbsoluteSize.X, L_25_arg1.AbsoluteSize.Y
		L_26_, L_27_ = math.clamp(L_26_, 0, L_28_), math.clamp(L_27_, 0, L_29_)
		return L_26_, L_27_, L_26_ / L_28_, L_27_ / L_29_
	end
	local function L_12_func(L_30_arg1)
		local L_31_ = Instance.new(L_30_arg1 and "ImageButton" or "ImageLabel")
		L_31_.Name = "TitleIcon"
		L_31_.BackgroundTransparency = 1
		L_31_.Image = "rbxassetid://11889453688"
		L_31_.ImageRectOffset = Vector2.new(524, 764)
		L_31_.ImageRectSize = Vector2.new(36, 36)
		L_31_.Size = UDim2.new(0, 14, 0, 14)
		L_31_.Position = UDim2.new(1, -17, 0, 3)
		L_31_.Rotation = 180
		L_31_.ZIndex = L_8_
		return L_31_
	end
	local function L_13_func(L_32_arg1)
		local L_33_ = Instance.new(L_32_arg1 and "ImageButton" or "ImageLabel")
		L_33_.Name = "TickIcon"
		L_33_.BackgroundTransparency = 1
		L_33_.Image = "rbxassetid://11889453688"
		L_33_.ImageRectOffset = Vector2.new(312, 4)
		L_33_.ImageRectSize = Vector2.new(24, 24)
		L_33_.Size = UDim2.new(1, -6, 1, -6)
		L_33_.Position = UDim2.new(0, 3, 0, 3)
		L_33_.ZIndex = L_8_
		return L_33_
	end
	local function L_14_func(L_34_arg1)
		local L_35_ = Instance.new(L_34_arg1 and "ImageButton" or "ImageLabel")
		L_35_.Name = "DropdownIcon"
		L_35_.BackgroundTransparency = 1
		L_35_.Image = "rbxassetid://11889472861"
		L_35_.ImageRectOffset = Vector2.new(324, 364)
		L_35_.ImageRectSize = Vector2.new(36, 36)
		L_35_.Size = UDim2.new(0, 16, 0, 16)
		L_35_.Position = UDim2.new(1, -18, 0, 2)
		L_35_.ZIndex = L_8_
		return L_35_
	end
	local function L_15_func(L_36_arg1)
		local L_37_ = Instance.new(L_36_arg1 and "ImageButton" or "ImageLabel")
		L_37_.Name = "SearchIcon"
		L_37_.BackgroundTransparency = 1
		L_37_.Image = "rbxassetid://11889453688"
		L_37_.ImageRectOffset = Vector2.new(964, 324)
		L_37_.ImageRectSize = Vector2.new(36, 36)
		L_37_.Size = UDim2.new(0, 16, 0, 16)
		L_37_.Position = UDim2.new(0, 2, 0, 2)
		L_37_.ZIndex = L_8_
		return L_37_
	end
	local function L_16_func(L_38_arg1, L_39_arg2)
		local L_40_ = Instance.new(L_39_arg2 and "ImageButton" or "ImageLabel")
		L_40_.BackgroundTransparency = 1
		L_40_.Image = "rbxassetid://11889516025"
		L_40_.SliceCenter = Rect.new(100, 100, 100, 100)
		L_40_.SliceScale = math.clamp((L_38_arg1 or 5) * 0.01, 0.01, 1)
		L_40_.ScaleType = Enum.ScaleType.Slice
		L_40_.ZIndex = L_8_
		return L_40_
	end
	local function L_17_func()
		local L_41_ = Instance.new("ImageLabel")
		L_41_.Name = "DropShadow"
		L_41_.BackgroundTransparency = 1
		L_41_.Image = "rbxassetid://11889435033"
		L_41_.ImageTransparency = 0.3
		L_41_.Size = UDim2.new(1, 0, 1, 0)
		L_41_.ZIndex = L_8_
		return L_41_
	end
	local function L_18_func()
		local L_42_ = Instance.new("Frame")
		L_42_.BorderSizePixel = 0
		L_42_.ZIndex = L_8_
		return L_42_
	end
	local function L_19_func()
		local L_43_ = Instance.new("ScrollingFrame")
		L_43_.BackgroundTransparency = 1
		L_43_.BorderSizePixel = 0
		L_43_.ScrollBarThickness = 0
		L_43_.ZIndex = L_8_
		return L_43_
	end
	local function L_20_func(L_44_arg1, L_45_arg2)
		local L_46_ = Instance.new("TextButton")
		L_46_.Text = L_44_arg1
		L_46_.AutoButtonColor = false
		L_46_.Font = Enum.Font.Gotham
		L_46_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_46_.BackgroundTransparency = 1
		L_46_.TextSize = L_45_arg2 or 12
		L_46_.Size = UDim2.new(1, 0, 1, 0)
		L_46_.ZIndex = L_8_
		return L_46_
	end
	local function L_21_func(L_47_arg1, L_48_arg2)
		local L_49_ = Instance.new("TextBox")
		L_49_.Text = L_47_arg1
		L_49_.Font = Enum.Font.Gotham
		L_49_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_49_.BackgroundTransparency = 1
		L_49_.TextSize = L_48_arg2 or 12
		L_49_.Size = UDim2.new(1, 0, 1, 0)
		L_49_.ZIndex = L_8_
		return L_49_
	end
	local function L_22_func(L_50_arg1, L_51_arg2)
		local L_52_ = Instance.new("TextLabel")
		L_52_.Text = L_50_arg1
		L_52_.Font = Enum.Font.Gotham
		L_52_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_52_.BackgroundTransparency = 1
		L_52_.TextSize = L_51_arg2 or 12
		L_52_.Size = UDim2.new(1, 0, 1, 0)
		L_52_.ZIndex = L_8_
		return L_52_
	end
	local function L_23_func(L_53_arg1, L_54_arg2)
		local L_55_ = L_2_:Create(L_53_arg1, L_9_, L_54_arg2)
		L_55_:Play()
		return L_55_
	end
	local L_24_ = {}
	function L_24_:AddWindow(L_56_arg1)
		local L_57_ = L_5_:IsStudio() and L_1_:WaitForChild("PlayerGui") or L_4_
		local L_58_ = L_57_:FindFirstChild(L_56_arg1.."-ModerkaLibrary")
		if L_58_ then
			return
		end
		local L_59_, L_60_, L_61_, L_62_
		L_59_ = Instance.new("ScreenGui")
		L_59_.Name = L_56_arg1.."-ModerkaLibrary"
		L_59_.Parent = L_57_
		L_60_ = L_18_func()
		L_60_.Name = "ContainerFrame"
		L_60_.Size = UDim2.new(0, 500, 0, 300)
		L_60_.Position = UDim2.new(0.5, -250, 0.5, -150)
		L_60_.BackgroundTransparency = 1
		L_60_.Parent = L_59_
		L_61_ = L_17_func()
		L_61_.Name = "Shadow"
		L_61_.Parent = L_60_
		L_8_ += 1
		L_62_ = L_16_func(5)
		L_62_.ClipsDescendants = true
		L_62_.Name = "MainFrame"
		L_62_.Size = UDim2.new(1, -50, 1, -30)
		L_62_.Position = UDim2.new(0, 25, 0, 15)
		L_62_.ImageColor3 = Color3.fromRGB(30, 30, 30)
		L_62_.Parent = L_60_
		local L_63_, L_64_, L_65_
		L_63_ = L_19_func()
		L_63_.Name = "MenuBar"
		L_63_.BackgroundTransparency = 0.7
		L_63_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		L_63_.Size = UDim2.new(0, 100, 0, 235)
		L_63_.Position = UDim2.new(0, 5, 0, 30)
		L_63_.CanvasSize = UDim2.new(0, 0, 0, 0)
		L_63_.Parent = L_62_
		L_64_ = L_16_func(5)
		L_64_.Name = "Display"
		L_64_.ImageColor3 = Color3.fromRGB(20, 20, 20)
		L_64_.Size = UDim2.new(1, -115, 0, 235)
		L_64_.Position = UDim2.new(0, 110, 0, 30)
		L_64_.Parent = L_62_
		L_65_ = L_16_func(5)
		L_65_.Name = "TitleBar"
		L_65_.ImageColor3 = Color3.fromRGB(40, 40, 40)
		L_65_.Size = UDim2.new(1, -10, 0, 20)
		L_65_.Position = UDim2.new(0, 5, 0, 5)
		L_65_.Parent = L_62_
		L_8_ += 1
		local L_66_, L_67_
		local L_68_ = true
		L_66_ = L_12_func(true)
		L_66_.Name = "Minimise"
		L_66_.Parent = L_65_
		L_67_ = L_20_func(L_56_arg1, 14)
		L_67_.Name = "TitleButton"
		L_67_.Size = UDim2.new(1, -20, 1, 0)
		L_67_.Parent = L_65_
		L_66_.MouseButton1Down:Connect(function()
			L_68_ = not L_68_
			if not L_68_ then
				L_23_func(L_62_, {
					Size = UDim2.new(1, -50, 0, 30)
				})
				L_23_func(L_66_, {
					Rotation = 0
				})
				L_23_func(L_61_, {
					ImageTransparency = 1
				})
			else
				L_23_func(L_62_, {
					Size = UDim2.new(1, -50, 1, -30)
				})
				L_23_func(L_66_, {
					Rotation = 180
				})
				L_23_func(L_61_, {
					ImageTransparency = 0.3
				})
			end
		end)
		L_67_.MouseButton1Down:Connect(function()
			local L_72_, L_73_ = L_7_.X, L_7_.Y
			local L_74_, L_75_
			L_74_ = L_7_.Move:Connect(function()
				local L_76_, L_77_ = L_7_.X, L_7_.Y
				local L_78_, L_79_ = L_76_ - L_72_, L_77_ - L_73_
				L_60_.Position += UDim2.new(0, L_78_, 0, L_79_)
				L_72_, L_73_ = L_76_, L_77_
			end)
			L_75_ = L_3_.InputEnded:Connect(function(L_80_arg1)
				if L_80_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					L_74_:Disconnect()
					L_75_:Disconnect()
				end
			end)
		end)
		L_8_ += 1
		local L_69_
		L_69_ = Instance.new("UIListLayout")
		L_69_.SortOrder = Enum.SortOrder.LayoutOrder
		L_69_.Padding = UDim.new(0, 5)
		L_69_.Parent = L_63_
		local L_70_ = 0
		local L_71_ = {}
		function L_71_:AddPage(L_81_arg1, L_82_arg2)
			local L_83_ = (L_82_arg2 == nil) and true or L_82_arg2
			local L_84_ = L_16_func(5)
			L_84_.Name = L_81_arg1
			L_84_.Size = UDim2.new(1, 0, 0, 20)
			L_84_.LayoutOrder = L_70_
			L_84_.ImageColor3 = (L_70_ == 0) and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(40, 40, 40)
			L_84_.Parent = L_63_
			local L_85_ = L_20_func(L_81_arg1, 14)
			L_85_.Name = L_81_arg1.."Button"
			L_85_.TextTransparency = (L_70_ == 0) and 0 or 0.5
			L_85_.Parent = L_84_
			L_85_.MouseButton1Down:Connect(function()
				task.spawn(function()
					for L_90_forvar1, L_91_forvar2 in next, L_63_:GetChildren() do
						if L_91_forvar2:IsA("GuiObject") then
							local L_92_ = string.find(string.lower(L_91_forvar2.Name), string.lower(L_84_.Name))
							local L_93_ = L_91_forvar2:FindFirstChild(L_91_forvar2.Name.."Button")
							L_23_func(L_91_forvar2, {
								ImageColor3 = L_92_ and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(40, 40, 40)
							})
							L_23_func(L_93_, {
								TextTransparency = L_92_ and 0 or 0.5
							})
						end
					end
				end)
				task.spawn(function()
					for L_94_forvar1, L_95_forvar2 in next, L_64_:GetChildren() do
						if L_95_forvar2:IsA("GuiObject") then
							L_95_forvar2.Visible = string.find(string.lower(L_95_forvar2.Name), string.lower(L_84_.Name))
						end
					end
				end)
			end)
			local L_86_ = L_19_func()
			L_86_.Visible = (L_70_ == 0)
			L_86_.Name = L_81_arg1
			L_86_.Size = UDim2.new(1, 0, 1, 0)
			L_86_.Parent = L_64_
			L_70_ += 1
			local L_87_ = Instance.new("UIListLayout")
			L_87_.SortOrder = Enum.SortOrder.LayoutOrder
			L_87_.Padding = UDim.new(0, 5)
			L_87_.Parent = L_86_
			L_87_:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				local L_96_ = L_87_.AbsoluteContentSize.Y
				local L_97_ = L_86_.AbsoluteWindowSize.Y
				L_86_.CanvasSize = UDim2.new(0, 0, (L_96_ / L_97_) + 0.05, 0)
			end)
			local L_88_ = Instance.new("UIPadding")
			L_88_.PaddingBottom = UDim.new(0, 5)
			L_88_.PaddingTop = UDim.new(0, 5)
			L_88_.PaddingLeft = UDim.new(0, 5)
			L_88_.PaddingRight = UDim.new(0, 5)
			L_88_.Parent = L_86_
			if L_83_ then
				local L_98_ = L_16_func(5)
				L_98_.Name = "SearchBar"
				L_98_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_98_.Size = UDim2.new(1, 0, 0, 20)
				L_98_.Parent = L_86_
				local L_99_ = L_21_func("Search...")
				L_99_.Name = "SearchInput"
				L_99_.Position = UDim2.new(0, 20, 0, 0)
				L_99_.Size = UDim2.new(1, -20, 1, 0)
				L_99_.TextTransparency = 0.5
				L_99_.TextXAlignment = Enum.TextXAlignment.Left
				L_99_.Parent = L_98_
				local L_100_ = L_15_func()
				L_100_.Parent = L_98_
				L_99_:GetPropertyChangedSignal("Text"):Connect(function()
					local L_101_ = L_99_.Text
					for L_102_forvar1, L_103_forvar2 in next, L_86_:GetChildren() do
						if L_103_forvar2:IsA("Frame") then
							if not string.find(string.lower(L_103_forvar2.Name), "label") then
								if string.find(string.lower(L_103_forvar2.Name), string.lower(L_101_)) then
									L_103_forvar2.Visible = true
								else
									L_103_forvar2.Visible = false
								end
							end
						end
					end
				end)
			end
			local L_89_ = {}
			function L_89_:AddButton(L_104_arg1, L_105_arg2, L_106_arg3, L_107_arg4)
				local L_108_ = L_18_func()
				L_108_.Name = L_104_arg1.."-Button"
				L_108_.Size = UDim2.new(1, 0, 0, 20)
				L_108_.BackgroundTransparency = 1
				L_108_.Parent = L_106_arg3 or L_86_
				local L_109_ = L_16_func(5)
				L_109_.Name = "ButtonForeground"
				L_109_.Size = UDim2.new(1, 0, 1, 0)
				L_109_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_109_.Parent = L_108_
				if L_107_arg4 then
					local L_111_ = L_6_:GetTextSize(L_104_arg1, 12, Enum.Font.Gotham, Vector2.new(0, 0))
					local L_112_ = L_18_func()
					L_112_.Size = UDim2.new(0, L_111_.X, 0, 1)
					L_112_.Position = UDim2.new(0.5, (-L_111_.X / 2) - 1, 1, -1)
					L_112_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					L_112_.BackgroundTransparency = 0.5
					L_112_.Parent = L_109_
				end
				local L_110_ = L_20_func(L_104_arg1, 12)
				L_110_.Parent = L_109_
				L_110_.MouseButton1Down:Connect(function()
					L_105_arg2()
					L_23_func(L_109_, {
						ImageColor3 = Color3.fromRGB(45, 45, 45)
					})
					L_23_func(L_110_, {
						TextTransparency = 0.5
					})
					task.wait(0.1)
					L_23_func(L_109_, {
						ImageColor3 = Color3.fromRGB(35, 35, 35)
					})
					L_23_func(L_110_, {
						TextTransparency = 0
					})
				end)
			end
			function L_89_:AddLabel(L_113_arg1)
				local L_114_ = L_18_func()
				L_114_.Name = L_113_arg1.."-Label"
				L_114_.Size = UDim2.new(1, 0, 0, 20)
				L_114_.BackgroundTransparency = 1
				L_114_.Parent = L_86_
				local L_115_ = L_16_func(5)
				L_115_.Name = "LabelForeground"
				L_115_.ImageColor3 = Color3.fromRGB(45, 45, 45)
				L_115_.Size = UDim2.new(1, 0, 1, 0)
				L_115_.Parent = L_114_
				local L_116_ = L_22_func(L_113_arg1, 12)
				L_116_.Parent = L_115_
			end
			function L_89_:AddDropdown(L_117_arg1, L_118_arg2, L_119_arg3)
				local L_120_ = L_118_arg2 or {}
				local L_121_ = false
				local L_122_ = L_18_func()
				L_122_.Size = UDim2.new(1, 0, 0, 20)
				L_122_.Name = L_117_arg1.."-Dropdown"
				L_122_.BackgroundTransparency = 1
				L_122_.Parent = L_86_
				local L_123_ = L_16_func(5)
				L_123_.ClipsDescendants = true
				L_123_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_123_.Size = UDim2.new(1, 0, 1, 0)
				L_123_.Parent = L_122_
				local L_124_ = L_14_func(true)
				L_124_.Parent = L_123_
				local L_125_ = L_22_func(L_117_arg1, 12)
				L_125_.Size = UDim2.new(1, 0, 0, 20)
				L_125_.Parent = L_123_
				local L_126_ = L_18_func()
				L_126_.Position = UDim2.new(0, 0, 0, 20)
				L_126_.BackgroundTransparency = 1
				L_126_.Size = UDim2.new(1, 0, 0, #L_120_ * 20)
				L_126_.Parent = L_123_
				local L_127_ = Instance.new("UIListLayout")
				L_127_.Parent = L_126_
				for L_128_forvar1, L_129_forvar2 in next, L_120_ do
					L_89_.AddButton(L_129_forvar2, function()
						L_119_arg3(L_129_forvar2)
						L_125_.Text = L_117_arg1..": "..L_129_forvar2
					end, L_126_, L_128_forvar1 < #L_120_)
				end
				L_124_.MouseButton1Down:Connect(function()
					L_121_ = not L_121_
					L_23_func(L_122_, {
						Size = L_121_ and UDim2.new(1, 0, 0, 20 + (#L_120_ * 20)) or UDim2.new(1, 0, 0, 20)
					})
					L_23_func(L_124_, {
						Rotation = L_121_ and 135 or 0
					})
				end)
			end
			function L_89_:AddColourPicker(L_130_arg1, L_131_arg2, L_132_arg3)
				local L_133_ = L_131_arg2 or Color3.fromRGB(255, 255, 255)
				local L_134_ = {
					white = Color3.fromRGB(255, 255, 255),
					black = Color3.fromRGB(0, 0, 0),
					red = Color3.fromRGB(255, 0, 0),
					green = Color3.fromRGB(0, 255, 0),
					blue = Color3.fromRGB(0, 0, 255)
				}
				if typeof(L_133_) == "table" then
					L_133_ = Color3.fromRGB(L_133_[1] or 255, L_133_[2] or 255, L_133_[3] or 255)
				elseif typeof(L_133_) == "string" then
					L_133_ = L_134_[string.lower(L_133_)] or L_134_["white"]
				end
				local L_135_ = L_18_func()
				L_135_.ClipsDescendants = true
				L_135_.Size = UDim2.new(1, 0, 0, 20)
				L_135_.Name = L_130_arg1.."-ColourPicker"
				L_135_.BackgroundTransparency = 1
				L_135_.Parent = L_86_
				local L_136_ = Instance.new("Color3Value")
				L_136_.Value = L_133_
				L_136_.Parent = L_135_
				local L_137_, L_138_, L_139_ = L_16_func(5), L_16_func(5), L_16_func(5)
				L_137_.Size = UDim2.new(1, -22, 1, 0)
				L_137_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_137_.Parent = L_135_
				L_138_.Size = UDim2.new(0, 20, 1, 0)
				L_138_.Position = UDim2.new(1, -20, 0, 0)
				L_138_.ImageColor3 = L_133_
				L_138_.Parent = L_135_
				L_139_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_139_.Size = UDim2.new(1, -22, 0, 60)
				L_139_.Position = UDim2.new(0, 0, 0, 20)
				L_139_.Parent = L_135_
				local L_140_ = Instance.new("UIListLayout")
				L_140_.SortOrder = Enum.SortOrder.LayoutOrder
				L_140_.Parent = L_139_
				local L_141_ = L_89_.AddSlider("R", {
					Min = 0,
					Max = 255,
					Def = L_136_.Value.R * 255
				}, function(L_149_arg1)
					L_136_.Value = Color3.fromRGB(L_149_arg1, L_136_.Value.G * 255, L_136_.Value.B * 255)
					L_132_arg3(L_136_.Value)
				end, L_139_)
				local L_142_ = L_89_.AddSlider("G", {
					Min = 0,
					Max = 255,
					Def = L_136_.Value.G * 255
				}, function(L_150_arg1)
					L_136_.Value = Color3.fromRGB(L_136_.Value.R * 255, L_150_arg1, L_136_.Value.B * 255)
					L_132_arg3(L_136_.Value)
				end, L_139_)
				local L_143_ = L_89_.AddSlider("B", {
					Min = 0,
					Max = 255,
					Def = L_136_.Value.B * 255
				}, function(L_151_arg1)
					L_136_.Value = Color3.fromRGB(L_136_.Value.R * 255, L_136_.Value.G * 255, L_151_arg1)
					L_132_arg3(L_136_.Value)
				end, L_139_)
				local L_144_, L_145_ = L_18_func(), L_18_func()
				L_144_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				L_144_.Position = UDim2.new(1, -5, 0, 0)
				L_144_.Size = UDim2.new(0, 5, 1, 0)
				L_144_.Parent = L_137_
				L_145_.BackgroundColor3 = L_133_
				L_145_.Size = UDim2.new(0, 5, 1, 0)
				L_145_.Parent = L_138_
				local L_146_ = L_22_func(L_130_arg1, 12)
				L_146_.Size = UDim2.new(1, 0, 0, 20)
				L_146_.Parent = L_137_
				L_136_:GetPropertyChangedSignal("Value"):Connect(function()
					local L_152_ = L_136_.Value
					L_145_.BackgroundColor3 = L_152_
					L_138_.ImageColor3 = L_152_
				end)
				local L_147_ = false
				local L_148_ = L_20_func("")
				L_148_.Parent = L_138_
				L_148_.MouseButton1Down:Connect(function()
					L_147_ = not L_147_
					L_23_func(L_135_, {
						Size = L_147_ and UDim2.new(1, 0, 0, 80) or UDim2.new(1, 0, 0, 20)
					})
				end)
			end
			function L_89_:AddSlider(L_153_arg1, L_154_arg2, L_155_arg3, L_156_arg4)
				local L_157_ = L_154_arg2
				local L_158_ = L_157_.Minimum or L_157_.minimum or L_157_.Min or L_157_.min
				local L_159_ = L_157_.Maximum or L_157_.maximum or L_157_.Max or L_157_.max
				local L_160_ = L_157_.Default or L_157_.default or L_157_.Def or L_157_.def
				if L_158_ > L_159_ then
					local L_166_ = L_158_
					L_158_ = L_159_
					L_159_ = L_166_
				end
				L_160_ = math.clamp(L_160_, L_158_, L_159_)
				local L_161_ = L_160_ / L_159_
				local L_162_ = L_18_func()
				L_162_.Name = L_153_arg1.."-Slider"
				L_162_.Size = UDim2.new(1, 0, 0, 20)
				L_162_.BackgroundTransparency = 1
				L_162_.Parent = L_156_arg4 or L_86_
				local L_163_ = L_16_func(5)
				L_163_.Name = "SliderForeground"
				L_163_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_163_.Size = UDim2.new(1, 0, 1, 0)
				L_163_.Parent = L_162_
				local L_164_ = L_20_func(L_153_arg1..": "..L_160_)
				L_164_.Size = UDim2.new(1, 0, 1, 0)
				L_164_.ZIndex = 6
				L_164_.Parent = L_163_
				local L_165_ = L_16_func(5)
				L_165_.Size = UDim2.new(L_161_, 0, 1, 0)
				L_165_.ImageColor3 = Color3.fromRGB(70, 70, 70)
				L_165_.ZIndex = 5
				L_165_.ImageTransparency = 0.7
				L_165_.Parent = L_164_
				L_164_.MouseButton1Down:Connect(function()
					L_23_func(L_165_, {
						ImageTransparency = 0.5
					})
					local L_167_, L_168_, L_169_, L_170_ = L_11_func(L_164_)
					local L_171_ = math.floor(L_158_ + ((L_159_ - L_158_) * L_169_))
					L_155_arg3(L_171_)
					L_164_.Text = L_153_arg1..": "..tostring(L_171_)
					local L_172_ = UDim2.new(L_169_, 0, 1, 0)
					L_23_func(L_165_, {
						Size = L_172_
					})
					local L_173_, L_174_
					L_173_ = L_7_.Move:Connect(function()
						L_23_func(L_165_, {
							ImageTransparency = 0.5
						})
						local L_175_, L_176_, L_177_, L_178_ = L_11_func(L_164_)
						local L_179_ = math.floor(L_158_ + ((L_159_ - L_158_) * L_177_))
						L_155_arg3(L_179_)
						L_164_.Text = L_153_arg1..": "..tostring(L_179_)
						local L_180_ = UDim2.new(L_177_, 0, 1, 0)
						L_23_func(L_165_, {
							Size = L_180_
						})
					end)
					L_174_ = L_3_.InputEnded:Connect(function(L_181_arg1)
						if L_181_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
							L_23_func(L_165_, {
								ImageTransparency = 0.7
							})
							L_173_:Disconnect()
							L_174_:Disconnect()
						end
					end)
				end)
			end
			function L_89_:AddToggle(L_182_arg1, L_183_arg2, L_184_arg3)
				local L_185_ = L_183_arg2 or false
				local L_186_ = L_18_func()
				L_186_.Name = L_182_arg1.."-Toggle"
				L_186_.Size = UDim2.new(1, 0, 0, 20)
				L_186_.BackgroundTransparency = 1
				L_186_.Parent = L_86_
				local L_187_, L_188_, L_189_, L_190_ = L_16_func(5), L_16_func(5), L_18_func(), L_13_func()
				local L_191_, L_192_ = L_18_func(), L_18_func()
				L_187_.Size = UDim2.new(1, -22, 1, 0)
				L_187_.ImageColor3 = Color3.fromRGB(35, 35, 35)
				L_187_.Parent = L_186_
				L_188_.Position = UDim2.new(1, -20, 0, 0)
				L_188_.Size = UDim2.new(0, 20, 1, 0)
				L_188_.ImageColor3 = Color3.fromRGB(45, 45, 45)
				L_188_.Parent = L_186_
				L_191_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				L_191_.Size = UDim2.new(0, 5, 1, 0)
				L_191_.Position = UDim2.new(1, -5, 0, 0)
				L_191_.Parent = L_187_
				L_192_.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				L_192_.Size = UDim2.new(0, 5, 1, 0)
				L_192_.Parent = L_188_
				L_189_.BackgroundColor3 = L_185_ and Color3.fromRGB(0, 255, 109) or Color3.fromRGB(255, 160, 160)
				L_189_.Position = UDim2.new(1, -22, 0.2, 0)
				L_189_.Size = UDim2.new(0, 2, 0.6, 0)
				L_189_.Parent = L_186_
				L_190_.ImageTransparency = L_185_ and 0 or 1
				L_190_.Parent = L_188_
				local L_193_ = L_20_func(L_182_arg1, 12)
				L_193_.Name = "ToggleButton"
				L_193_.Size = UDim2.new(1, 0, 1, 0)
				L_193_.Parent = L_187_
				L_193_.MouseButton1Down:Connect(function()
					L_185_ = not L_185_
					L_23_func(L_189_, {
						BackgroundColor3 = L_185_ and Color3.fromRGB(0, 255, 109) or Color3.fromRGB(255, 160, 160)
					})
					L_23_func(L_190_, {
						ImageTransparency = L_185_ and 0 or 1
					})
					L_184_arg3(L_185_)
				end)
			end
			return L_89_
		end
		return L_71_
	end
	return L_24_
end)