local L_1_ = game:GetService("ScriptContext")
local L_2_ = game:GetService("UserInputService")
local L_3_ = game:GetService("TweenService")
local L_4_ = game:GetService("RunService")
local L_5_ = game:GetService("Players").LocalPlayer
local L_6_ = L_5_:GetMouse()
local L_7_ = game:GetService("HttpService")
local L_8_ = game:GetService("CoreGui")
local L_9_ = game:GetService("Debris")
if getconnections then
	for L_33_forvar1, L_34_forvar2 in next, getconnections(L_1_.Error) do
		L_34_forvar2:Disable()
	end
end
local L_10_ = {
	Elements = {},
	ThemeObjects = {},
	Connections = {},
	Flags = {},
	Themes = {
		Default = {
			Main = Color3.fromRGB(25, 25, 25),
			Second = Color3.fromRGB(32, 32, 32),
			Stroke = Color3.fromRGB(60, 60, 60),
			Divider = Color3.fromRGB(60, 60, 60),
			Text = Color3.fromRGB(240, 240, 240),
			TextDark = Color3.fromRGB(150, 150, 150)
		}
	},
	SelectedTheme = "Default",
	Folder = nil,
	SaveCfg = false
}
local L_11_ = {}
pcall(function()
	L_11_ = L_7_:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Documents/master/icons.json")).icons
end)
local function L_12_func(L_35_arg1)
	if L_11_[L_35_arg1] ~= nil then
		return L_11_[L_35_arg1]
	else
		return nil
	end
end
local L_13_ = Instance.new("ScreenGui")
L_13_.Name = L_7_:GenerateGUID(false)
if syn then
	syn.protect_gui(L_13_)
	L_13_.Parent = L_8_
else
	L_13_.Parent = gethui() or L_8_
end
if gethui then
	for L_36_forvar1, L_37_forvar2 in next, gethui():GetChildren() do
		if L_37_forvar2.Name == L_13_.Name and L_37_forvar2 ~= L_13_ then
			L_9_:AddItem(L_37_forvar2, 0)
		end
	end
else
	for L_38_forvar1, L_39_forvar2 in next, L_8_:GetChildren() do
		if L_39_forvar2.Name == L_13_.Name and L_39_forvar2 ~= L_13_ then
			L_9_:AddItem(L_39_forvar2, 0)
		end
	end
end
function L_10_:IsRunning()
	if gethui then
		return L_13_.Parent == gethui()
	else
		return L_13_.Parent == L_8_
	end
end
local function L_14_func(L_40_arg1, L_41_arg2)
	if not L_10_:IsRunning() then
		return
	end
	local L_42_ = L_40_arg1:Connect(L_41_arg2)
	table.insert(L_10_.Connections, L_42_)
	return L_42_
end
spawn(function()
	while L_10_:IsRunning() do
		wait()
	end
	for L_43_forvar1, L_44_forvar2 in next, L_10_.Connections do
		L_44_forvar2:Disconnect()
	end
end)
local function L_15_func(L_45_arg1, L_46_arg2)
	pcall(function()
		local L_47_, L_48_, L_49_, L_50_ = false, nil
		L_14_func(L_45_arg1.InputBegan, function(L_51_arg1)
			if L_51_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
				L_47_ = true
				L_49_ = L_51_arg1.Position
				L_50_ = L_46_arg2.Position
				L_51_arg1.Changed:Connect(function()
					if L_51_arg1.UserInputState == Enum.UserInputState.End then
						L_47_ = false
					end
				end)
			end
		end)
		L_14_func(L_45_arg1.InputChanged, function(L_52_arg1)
			if L_52_arg1.UserInputType == Enum.UserInputType.MouseMovement then
				L_48_ = L_52_arg1
			end
		end)
		L_14_func(L_2_.InputChanged, function(L_53_arg1)
			if L_53_arg1 == L_48_ and L_47_ then
				local L_54_ = L_53_arg1.Position - L_49_
				L_46_arg2.Position = UDim2.new(L_50_.X.Scale, L_50_.X.Offset + L_54_.X, L_50_.Y.Scale, L_50_.Y.Offset + L_54_.Y)
			end
		end)
	end)
end
local function L_16_func(L_55_arg1, L_56_arg2, L_57_arg3)
	local L_58_ = Instance.new(L_55_arg1)
	for L_59_forvar1, L_60_forvar2 in next, L_56_arg2 or {} do
		L_58_[L_59_forvar1] = L_60_forvar2
	end
	for L_61_forvar1, L_62_forvar2 in next, L_57_arg3 or {} do
		L_62_forvar2.Parent = L_58_
	end
	return L_58_
end
local function L_17_func(L_63_arg1, L_64_arg2)
	L_10_.Elements[L_63_arg1] = function(...)
		return L_64_arg2(...)
	end
end
local function L_18_func(L_65_arg1, ...)
	local L_66_ = L_10_.Elements[L_65_arg1](...)
	return L_66_
end
local function L_19_func(L_67_arg1, L_68_arg2)
	table.foreach(L_68_arg2, function(L_69_arg1, L_70_arg2)
		L_67_arg1[L_69_arg1] = L_70_arg2
	end)
	return L_67_arg1
end
local function L_20_func(L_71_arg1, L_72_arg2)
	table.foreach(L_72_arg2, function(L_73_arg1, L_74_arg2)
		L_74_arg2.Parent = L_71_arg1
	end)
	return L_71_arg1
end
local function L_21_func(L_75_arg1, L_76_arg2)
	local L_77_ = math.floor(L_75_arg1 / L_76_arg2 + (math.sign(L_75_arg1) * 0.5)) * L_76_arg2
	if L_77_ < 0 then
		L_77_ = L_77_ + L_76_arg2
	end
	return L_77_
end
local function L_22_func(L_78_arg1)
	if L_78_arg1:IsA("Frame") or L_78_arg1:IsA("TextButton") then
		return "BackgroundColor3"
	end
	if L_78_arg1:IsA("ScrollingFrame") then
		return "ScrollBarImageColor3"
	end
	if L_78_arg1:IsA("UIStroke") then
		return "Color"
	end
	if L_78_arg1:IsA("TextLabel") or L_78_arg1:IsA("TextBox") then
		return "TextColor3"
	end
	if L_78_arg1:IsA("ImageLabel") or L_78_arg1:IsA("ImageButton") then
		return "ImageColor3"
	end
end
local function L_23_func(L_79_arg1, L_80_arg2)
	if not L_10_.ThemeObjects[L_80_arg2] then
		L_10_.ThemeObjects[L_80_arg2] = {}
	end
	table.insert(L_10_.ThemeObjects[L_80_arg2], L_79_arg1)
	L_79_arg1[L_22_func(L_79_arg1)] = L_10_.Themes[L_10_.SelectedTheme][L_80_arg2]
	return L_79_arg1
end
local function L_24_func()
	for L_81_forvar1, L_82_forvar2 in next, L_10_.ThemeObjects do
		for L_83_forvar1, L_84_forvar2 in next, L_82_forvar2 do
			L_84_forvar2[L_22_func(L_84_forvar2)] = L_10_.Themes[L_10_.SelectedTheme][L_81_forvar1]
		end
	end
end
local function L_25_func(L_85_arg1)
	return {
		R = L_85_arg1.R * 255,
		G = L_85_arg1.G * 255,
		B = L_85_arg1.B * 255
	}
end
local function L_26_func(L_86_arg1)
	return Color3.fromRGB(L_86_arg1.R, L_86_arg1.G, L_86_arg1.B)
end
local function L_27_func(L_87_arg1)
	local L_88_ = L_7_:JSONDecode(L_87_arg1)
	table.foreach(L_88_, function(L_89_arg1, L_90_arg2)
		if L_10_.Flags[L_89_arg1] then
			spawn(function()
				if L_10_.Flags[L_89_arg1].Type == "Colorpicker" then
					L_10_.Flags[L_89_arg1]:Set(L_26_func(L_90_arg2))
				else
					L_10_.Flags[L_89_arg1]:Set(L_90_arg2)
				end
			end)
		end
	end)
end
local function L_28_func(L_91_arg1)
	local L_92_ = {}
	for L_93_forvar1, L_94_forvar2 in next, L_10_.Flags do
		if L_94_forvar2.Save then
			if L_94_forvar2.Type == "Colorpicker" then
				L_92_[L_93_forvar1] = L_25_func(L_94_forvar2.Value)
			else
				L_92_[L_93_forvar1] = L_94_forvar2.Value
			end
		end
	end
	if writefile then
		writefile(L_10_.Folder.."/"..L_91_arg1..".txt", tostring(L_7_:JSONEncode(L_92_)))
	end
end
local L_29_ = {
	Enum.UserInputType.MouseButton1,
	Enum.UserInputType.MouseButton2,
	Enum.UserInputType.MouseButton3
}
local L_30_ = {
	Enum.KeyCode.Unknown,
	Enum.KeyCode.W,
	Enum.KeyCode.A,
	Enum.KeyCode.S,
	Enum.KeyCode.D,
	Enum.KeyCode.Up,
	Enum.KeyCode.Left,
	Enum.KeyCode.Down,
	Enum.KeyCode.Right,
	Enum.KeyCode.Slash,
	Enum.KeyCode.Tab,
	Enum.KeyCode.Backspace,
	Enum.KeyCode.Escape
}
local function L_31_func(L_95_arg1, L_96_arg2)
	for L_97_forvar1, L_98_forvar2 in next, L_95_arg1 do
		if L_98_forvar2 == L_96_arg2 then
			return true
		end
	end
end
L_17_func("Corner", function(L_99_arg1, L_100_arg2)
	local L_101_ = L_16_func("UICorner", {
		CornerRadius = UDim.new(L_99_arg1 or 0, L_100_arg2 or 10)
	})
	return L_101_
end)
L_17_func("Stroke", function(L_102_arg1, L_103_arg2)
	local L_104_ = L_16_func("UIStroke", {
		Color = L_102_arg1 or Color3.fromRGB(255, 255, 255),
		Thickness = L_103_arg2 or 1
	})
	return L_104_
end)
L_17_func("List", function(L_105_arg1, L_106_arg2)
	local L_107_ = L_16_func("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(L_105_arg1 or 0, L_106_arg2 or 0)
	})
	return L_107_
end)
L_17_func("Padding", function(L_108_arg1, L_109_arg2, L_110_arg3, L_111_arg4)
	local L_112_ = L_16_func("UIPadding", {
		PaddingBottom = UDim.new(0, L_108_arg1 or 4),
		PaddingLeft = UDim.new(0, L_109_arg2 or 4),
		PaddingRight = UDim.new(0, L_110_arg3 or 4),
		PaddingTop = UDim.new(0, L_111_arg4 or 4)
	})
	return L_112_
end)
L_17_func("TFrame", function()
	local L_113_ = L_16_func("Frame", {
		BackgroundTransparency = 1
	})
	return L_113_
end)
L_17_func("Frame", function(L_114_arg1)
	local L_115_ = L_16_func("Frame", {
		BackgroundColor3 = L_114_arg1 or Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0
	})
	return L_115_
end)
L_17_func("RoundFrame", function(L_116_arg1, L_117_arg2, L_118_arg3)
	local L_119_ = L_16_func("Frame", {
		BackgroundColor3 = L_116_arg1 or Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0
	}, {
		L_16_func("UICorner", {
			CornerRadius = UDim.new(L_117_arg2, L_118_arg3)
		})
	})
	return L_119_
end)
L_17_func("Button", function()
	local L_120_ = L_16_func("TextButton", {
		Text = "",
		AutoButtonColor = false,
		BackgroundTransparency = 1,
		BorderSizePixel = 0
	})
	return L_120_
end)
L_17_func("ScrollFrame", function(L_121_arg1, L_122_arg2)
	local L_123_ = L_16_func("ScrollingFrame", {
		BackgroundTransparency = 1,
		MidImage = "rbxassetid://7445543667",
		BottomImage = "rbxassetid://7445543667",
		TopImage = "rbxassetid://7445543667",
		ScrollBarImageColor3 = L_121_arg1,
		BorderSizePixel = 0,
		ScrollBarThickness = L_122_arg2,
		CanvasSize = UDim2.new(0, 0, 0, 0)
	})
	return L_123_
end)
L_17_func("Image", function(L_124_arg1)
	local L_125_ = L_16_func("ImageLabel", {
		Image = L_124_arg1,
		BackgroundTransparency = 1
	})
	if L_12_func(L_124_arg1) ~= nil then
		L_125_.Image = L_12_func(L_124_arg1)
	end
	return L_125_
end)
L_17_func("ImageButton", function(L_126_arg1)
	local L_127_ = L_16_func("ImageButton", {
		Image = L_126_arg1,
		BackgroundTransparency = 1
	})
	return L_127_
end)
L_17_func("Label", function(L_128_arg1, L_129_arg2, L_130_arg3)
	local L_131_ = L_16_func("TextLabel", {
		Text = L_128_arg1 or "",
		TextColor3 = Color3.fromRGB(240, 240, 240),
		TextTransparency = L_130_arg3 or 0,
		TextSize = L_129_arg2 or 15,
		Font = Enum.Font.Gotham,
		RichText = true,
		BackgroundTransparency = 1,
		TextXAlignment = Enum.TextXAlignment.Left
	})
	return L_131_
end)
local L_32_ = L_19_func(L_20_func(L_18_func("TFrame"), {
	L_19_func(L_18_func("List"), {
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		Padding = UDim.new(0, 5)
	})
}), {
	Position = UDim2.new(1, -25, 1, -25),
	Size = UDim2.new(0, 300, 1, -25),
	AnchorPoint = Vector2.new(1, 1),
	Parent = L_13_
})
function L_10_:MakeNotification(L_132_arg1)
	spawn(function()
		L_132_arg1.Name = L_132_arg1.Name or "Notification"
		L_132_arg1.Content = L_132_arg1.Content or "Test"
		L_132_arg1.Image = L_132_arg1.Image or "rbxassetid://4384403532"
		L_132_arg1.Time = L_132_arg1.Time or 15
		local L_133_ = L_19_func(L_18_func("TFrame"), {
			Size = UDim2.new(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			Parent = L_32_
		})
		local L_134_ = L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(25, 25, 25), 0, 10), {
			Parent = L_133_,
			Size = UDim2.new(1, 0, 0, 0),
			Position = UDim2.new(1, -55, 0, 0),
			BackgroundTransparency = 0,
			AutomaticSize = Enum.AutomaticSize.Y
		}), {
			L_18_func("Stroke", Color3.fromRGB(93, 93, 93), 1.2),
			L_18_func("Padding", 12, 12, 12, 12),
			L_19_func(L_18_func("Image", L_132_arg1.Image), {
				Size = UDim2.new(0, 20, 0, 20),
				ImageColor3 = Color3.fromRGB(240, 240, 240),
				Name = "Icon"
			}),
			L_19_func(L_18_func("Label", L_132_arg1.Name, 15), {
				Size = UDim2.new(1, -30, 0, 20),
				Position = UDim2.new(0, 30, 0, 0),
				Font = Enum.Font.GothamBold,
				Name = "Title"
			}),
			L_19_func(L_18_func("Label", L_132_arg1.Content, 14), {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(0, 0, 0, 25),
				Font = Enum.Font.GothamSemibold,
				Name = "Content",
				AutomaticSize = Enum.AutomaticSize.Y,
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextWrapped = true
			})
		})
		L_3_:Create(L_134_, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {
			Position = UDim2.new(0, 0, 0, 0)
		}):Play()
		wait(L_132_arg1.Time - 0.88)
		L_3_:Create(L_134_.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {
			ImageTransparency = 1
		}):Play()
		L_3_:Create(L_134_, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {
			BackgroundTransparency = 0.6
		}):Play()
		wait(0.3)
		L_3_:Create(L_134_.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
			Transparency = 0.9
		}):Play()
		L_3_:Create(L_134_.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
			TextTransparency = 0.4
		}):Play()
		L_3_:Create(L_134_.Content, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {
			TextTransparency = 0.5
		}):Play()
		wait(0.05)
		L_134_:TweenPosition(UDim2.new(1, 20, 0, 0), "In", "Quint", 0.8, true)
		L_9_:AddItem(L_134_, 1.35)
	end)
end
function L_10_:Init()
	if L_10_.SaveCfg then
		pcall(function()
			if isfile and readfile then
				if isfile(L_10_.Folder.."/"..game.PlaceId..".txt") then
					L_27_func(readfile(L_10_.Folder.."/"..game.PlaceId..".txt"))
					L_10_:MakeNotification({
						Name = "Configuration",
						Content = "Auto-loaded configuration for the place "..game.PlaceId..".",
						Time = 5
					})
				end
			end
		end)
	end
end
function L_10_:MakeWindow(L_135_arg1)
	local L_136_ = true
	local L_137_ = false
	local L_138_ = false
	local L_139_ = false
	L_135_arg1 = L_135_arg1 or {}
	L_135_arg1.Name = L_135_arg1.Name or "Orion Library"
	L_135_arg1.ConfigFolder = L_135_arg1.ConfigFolder or L_135_arg1.Name
	L_135_arg1.SaveConfig = L_135_arg1.SaveConfig or false
	L_135_arg1.TestMode = L_135_arg1.TestMode or false
	if L_135_arg1.IntroEnabled == nil then
		L_135_arg1.IntroEnabled = true
	end
	L_135_arg1.IntroText = L_135_arg1.IntroText or "Orion Library"
	L_135_arg1.CloseCallback = L_135_arg1.CloseCallback or function()
	end
	L_135_arg1.ShowIcon = L_135_arg1.ShowIcon or false
	L_135_arg1.Icon = L_135_arg1.Icon or "rbxassetid://8834748103"
	L_135_arg1.IntroIcon = L_135_arg1.IntroIcon or "rbxassetid://8834748103"
	L_10_.Folder = L_135_arg1.ConfigFolder
	L_10_.SaveCfg = L_135_arg1.SaveConfig
	if L_135_arg1.SaveConfig then
		if isfolder and makefolder then
			if not isfolder(L_135_arg1.ConfigFolder) then
				makefolder(L_135_arg1.ConfigFolder)
			end
		end
	end
	local L_140_ = L_23_func(L_20_func(L_19_func(L_18_func("ScrollFrame", Color3.fromRGB(255, 255, 255), 4), {
		Size = UDim2.new(1, 0, 1, -50)
	}), {
		L_18_func("List"),
		L_18_func("Padding", 8, 0, 0, 8)
	}), "Divider")
	L_14_func(L_140_.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
		L_140_.CanvasSize = UDim2.new(0, 0, 0, L_140_.UIListLayout.AbsoluteContentSize.Y + 16)
	end)
	local L_141_ = L_20_func(L_19_func(L_18_func("Button"), {
		Size = UDim2.new(0.5, 0, 1, 0),
		Position = UDim2.new(0.5, 0, 0, 0),
		BackgroundTransparency = 1
	}), {
		L_23_func(L_19_func(L_18_func("Image", "rbxassetid://7072725342"), {
			Position = UDim2.new(0, 9, 0, 6),
			Size = UDim2.new(0, 18, 0, 18)
		}), "Text")
	})
	local L_142_ = L_20_func(L_19_func(L_18_func("Button"), {
		Size = UDim2.new(0.5, 0, 1, 0),
		BackgroundTransparency = 1
	}), {
		L_23_func(L_19_func(L_18_func("Image", "rbxassetid://7072719338"), {
			Position = UDim2.new(0, 9, 0, 6),
			Size = UDim2.new(0, 18, 0, 18),
			Name = "Ico"
		}), "Text")
	})
	local L_143_ = L_19_func(L_18_func("TFrame"), {
		Size = UDim2.new(1, 0, 0, 50)
	})
	local L_144_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 10), {
		Size = UDim2.new(0, 150, 1, -50),
		Position = UDim2.new(0, 0, 0, 50)
	}), {
		L_23_func(L_19_func(L_18_func("Frame"), {
			Size = UDim2.new(1, 0, 0, 10),
			Position = UDim2.new(0, 0, 0, 0)
		}), "Second"),
		L_23_func(L_19_func(L_18_func("Frame"), {
			Size = UDim2.new(0, 10, 1, 0),
			Position = UDim2.new(1, -10, 0, 0)
		}), "Second"),
		L_23_func(L_19_func(L_18_func("Frame"), {
			Size = UDim2.new(0, 1, 1, 0),
			Position = UDim2.new(1, -1, 0, 0)
		}), "Stroke"),
		L_140_,
		L_20_func(L_19_func(L_18_func("TFrame"), {
			Size = UDim2.new(1, 0, 0, 50),
			Position = UDim2.new(0, 0, 1, -50)
		}), {
			L_23_func(L_19_func(L_18_func("Frame"), {
				Size = UDim2.new(1, 0, 0, 1)
			}), "Stroke"),
			L_23_func(L_20_func(L_19_func(L_18_func("Frame"), {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(0, 10, 0.5, 0)
			}), {
				L_19_func(L_18_func("Image", "https://www.roblox.com/headshot-thumbnail/image?userId="..L_5_.UserId.."&width=420&height=420&format=png"), {
					Size = UDim2.new(1, 0, 1, 0)
				}),
				L_23_func(L_19_func(L_18_func("Image", "rbxassetid://4031889928"), {
					Size = UDim2.new(1, 0, 1, 0)
				}), "Second"),
				L_18_func("Corner", 1)
			}), "Divider"),
			L_20_func(L_19_func(L_18_func("TFrame"), {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(0, 10, 0.5, 0)
			}), {
				L_23_func(L_18_func("Stroke"), "Stroke"),
				L_18_func("Corner", 1)
			}),
			L_23_func(L_19_func(L_18_func("Label", L_5_.DisplayName, L_135_arg1.TestMode and 14 or 13), {
				Size = UDim2.new(1, -60, 0, 13),
				Position = L_135_arg1.TestMode and UDim2.new(0, 50, 0, 19) or UDim2.new(0, 50, 0, 12),
				Font = Enum.Font.GothamBold,
				ClipsDescendants = true
			}), "Text"),
			L_23_func(L_19_func(L_18_func("Label", "", 12), {
				Size = UDim2.new(1, -60, 0, 12),
				Position = UDim2.new(0, 50, 1, -25),
				Visible = not L_135_arg1.TestMode
			}), "TextDark")
		})
	}), "Second")
	local L_145_ = L_23_func(L_19_func(L_18_func("Label", L_135_arg1.Name, 14), {
		Size = UDim2.new(1, -30, 2, 0),
		Position = UDim2.new(0, 25, 0, -24),
		Font = Enum.Font.GothamBlack,
		TextSize = 20
	}), "Text")
	local L_146_ = L_23_func(L_19_func(L_18_func("Frame"), {
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1)
	}), "Stroke")
	local L_147_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 10), {
		Parent = L_13_,
		Position = UDim2.new(0.5, -307, 0.5, -172),
		Size = UDim2.new(0, 615, 0, 344),
		ClipsDescendants = true
	}), {
		L_20_func(L_19_func(L_18_func("TFrame"), {
			Size = UDim2.new(1, 0, 0, 50),
			Name = "TopBar"
		}), {
			L_145_,
			L_146_,
			L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 7), {
				Size = UDim2.new(0, 70, 0, 30),
				Position = UDim2.new(1, -90, 0, 10)
			}), {
				L_23_func(L_18_func("Stroke"), "Stroke"),
				L_23_func(L_19_func(L_18_func("Frame"), {
					Size = UDim2.new(0, 1, 1, 0),
					Position = UDim2.new(0.5, 0, 0, 0)
				}), "Stroke"),
				L_141_,
				L_142_
			}), "Second")
		}),
		L_143_,
		L_144_
	}), "Main")
	if L_135_arg1.ShowIcon then
		L_145_.Position = UDim2.new(0, 50, 0, -24)
		local L_150_ = L_19_func(L_18_func("Image", L_135_arg1.Icon), {
			Size = UDim2.new(0, 20, 0, 20),
			Position = UDim2.new(0, 25, 0, 15)
		})
		L_150_.Parent = L_147_.TopBar
	end
	L_15_func(L_143_, L_147_)
	L_14_func(L_141_.MouseButton1Up, function()
		L_147_.Visible = false
		L_139_ = true
		L_10_:MakeNotification({
			Name = "Interface Hidden",
			Content = "Tap RightShift to reopen the interface",
			Time = 5
		})
		L_135_arg1.CloseCallback()
	end)
	L_14_func(L_2_.InputBegan, function(L_151_arg1)
		if L_151_arg1.KeyCode == Enum.KeyCode.RightShift and L_139_ then
			L_147_.Visible = true
		end
	end)
	L_14_func(L_142_.MouseButton1Up, function()
		if L_137_ then
			L_3_:Create(L_147_, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 615, 0, 344)
			}):Play()
			L_142_.Ico.Image = "rbxassetid://7072719338"
			wait(.02)
			L_147_.ClipsDescendants = false
			L_144_.Visible = true
			L_146_.Visible = true
		else
			L_147_.ClipsDescendants = true
			L_146_.Visible = false
			L_142_.Ico.Image = "rbxassetid://7072720870"
			L_3_:Create(L_147_, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, L_145_.TextBounds.X + 140, 0, 50)
			}):Play()
			wait(0.1)
			L_144_.Visible = false
		end
		L_137_ = not L_137_
	end)
	local function L_148_func()
		L_147_.Visible = false
		local L_152_ = L_19_func(L_18_func("Image", L_135_arg1.IntroIcon), {
			Parent = L_13_,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.4, 0),
			Size = UDim2.new(0, 28, 0, 28),
			ImageColor3 = Color3.fromRGB(255, 255, 255),
			ImageTransparency = 1
		})
		local L_153_ = L_19_func(L_18_func("Label", L_135_arg1.IntroText, 14), {
			Parent = L_13_,
			Size = UDim2.new(1, 0, 1, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 19, 0.5, 0),
			TextXAlignment = Enum.TextXAlignment.Center,
			Font = Enum.Font.GothamBold,
			TextTransparency = 1
		})
		L_3_:Create(L_152_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			ImageTransparency = 0,
			Position = UDim2.new(0.5, 0, 0.5, 0)
		}):Play()
		wait(0.8)
		L_3_:Create(L_152_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.new(0.5, -(L_153_.TextBounds.X / 2), 0.5, 0)
		}):Play()
		wait(0.3)
		L_3_:Create(L_153_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 0
		}):Play()
		wait(2)
		L_3_:Create(L_153_, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			TextTransparency = 1
		}):Play()
		L_147_.Visible = true
		L_9_:AddItem(L_152_, 0)
		L_9_:AddItem(L_153_, 0)
	end
	if L_135_arg1.IntroEnabled then
		L_148_func()
	end
	local L_149_ = {}
	function L_149_:MakeTab(L_154_arg1)
		L_154_arg1 = L_154_arg1 or {}
		L_154_arg1.Name = L_154_arg1.Name or "Tab"
		L_154_arg1.Icon = L_154_arg1.Icon or ""
		L_154_arg1.TestersOnly = L_154_arg1.TestersOnly or false
		local L_155_ = L_20_func(L_19_func(L_18_func("Button"), {
			Size = UDim2.new(1, 0, 0, 30),
			Parent = L_140_
		}), {
			L_23_func(L_19_func(L_18_func("Image", L_154_arg1.Icon), {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.new(0, 18, 0, 18),
				Position = UDim2.new(0, 10, 0.5, 0),
				ImageTransparency = 0.4,
				Name = "Ico"
			}), "Text"),
			L_23_func(L_19_func(L_18_func("Label", L_154_arg1.Name, 14), {
				Size = UDim2.new(1, -35, 1, 0),
				Position = UDim2.new(0, 35, 0, 0),
				Font = Enum.Font.GothamSemibold,
				TextTransparency = 0.4,
				Name = "Title"
			}), "Text")
		})
		if L_12_func(L_154_arg1.Icon) ~= nil then
			L_155_.Ico.Image = L_12_func(L_154_arg1.Icon)
		end
		local L_156_ = L_23_func(L_20_func(L_19_func(L_18_func("ScrollFrame", Color3.fromRGB(255, 255, 255), 5), {
			Size = UDim2.new(1, -150, 1, -50),
			Position = UDim2.new(0, 150, 0, 50),
			Parent = L_147_,
			Visible = false,
			Name = "ItemContainer"
		}), {
			L_18_func("List", 0, 6),
			L_18_func("Padding", 15, 10, 10, 15)
		}), "Divider")
		L_14_func(L_156_.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			L_156_.CanvasSize = UDim2.new(0, 0, 0, L_156_.UIListLayout.AbsoluteContentSize.Y + 30)
		end)
		if L_136_ then
			L_136_ = false
			L_155_.Ico.ImageTransparency = 0
			L_155_.Title.TextTransparency = 0
			L_155_.Title.Font = Enum.Font.GothamBlack
			L_156_.Visible = true
		end
		L_14_func(L_155_.MouseButton1Click, function()
			for L_160_forvar1, L_161_forvar2 in next, L_140_:GetChildren() do
				if L_161_forvar2:IsA("TextButton") then
					L_161_forvar2.Title.Font = Enum.Font.GothamSemibold
					L_3_:Create(L_161_forvar2.Ico, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						ImageTransparency = 0.4
					}):Play()
					L_3_:Create(L_161_forvar2.Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						TextTransparency = 0.4
					}):Play()
				end
			end
			for L_162_forvar1, L_163_forvar2 in next, L_147_:GetChildren() do
				if L_163_forvar2.Name == "ItemContainer" then
					L_163_forvar2.Visible = false
				end
			end
			L_3_:Create(L_155_.Ico, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				ImageTransparency = 0
			}):Play()
			L_3_:Create(L_155_.Title, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				TextTransparency = 0
			}):Play()
			L_155_.Title.Font = Enum.Font.GothamBlack
			L_156_.Visible = true
		end)
		local function L_157_func(L_164_arg1)
			local L_165_ = {}
			function L_165_:AddLabel(L_167_arg1)
				local L_168_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 30),
					BackgroundTransparency = 0.7,
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_167_arg1, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Second")
				local L_169_ = {}
				function L_169_:Set(L_170_arg1)
					L_168_.Content.Text = L_170_arg1
				end
				return L_169_
			end
			function L_165_:AddParagraph(L_171_arg1, L_172_arg2)
				L_171_arg1 = L_171_arg1 or "Text"
				L_172_arg2 = L_172_arg2 or "Content"
				local L_173_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 30),
					BackgroundTransparency = 0.7,
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_171_arg1, 15), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 10),
						Font = Enum.Font.GothamBold,
						Name = "Title"
					}), "Text"),
					L_23_func(L_19_func(L_18_func("Label", "", 13), {
						Size = UDim2.new(1, -24, 0, 0),
						Position = UDim2.new(0, 12, 0, 26),
						Font = Enum.Font.GothamSemibold,
						Name = "Content",
						TextWrapped = true
					}), "TextDark"),
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Second")
				L_14_func(L_173_.Content:GetPropertyChangedSignal("Text"), function()
					L_173_.Content.Size = UDim2.new(1, -24, 0, L_173_.Content.TextBounds.Y)
					L_173_.Size = UDim2.new(1, 0, 0, L_173_.Content.TextBounds.Y + 35)
				end)
				L_173_.Content.Text = L_172_arg2
				local L_174_ = {}
				function L_174_:Set(L_175_arg1)
					L_173_.Content.Text = L_175_arg1
				end
				return L_174_
			end
			function L_165_:AddButton(L_176_arg1)
				L_176_arg1 = L_176_arg1 or {}
				L_176_arg1.Name = L_176_arg1.Name or "Button"
				L_176_arg1.Callback = L_176_arg1.Callback or function()
				end
				L_176_arg1.Icon = L_176_arg1.Icon or "rbxassetid://3944703587"
				local L_177_ = {}
				local L_178_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_179_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 33),
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_176_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_19_func(L_18_func("Image", L_176_arg1.Icon), {
						Size = UDim2.new(0, 20, 0, 20),
						Position = UDim2.new(1, -30, 0, 7)
					}), "TextDark"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_178_
				}), "Second")
				L_14_func(L_178_.MouseEnter, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_178_.MouseLeave, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_178_.MouseButton1Up, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
					spawn(function()
						L_176_arg1.Callback()
					end)
				end)
				L_14_func(L_178_.MouseButton1Down, function()
					L_3_:Create(L_179_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
				function L_177_:Set(L_180_arg1)
					L_179_.Content.Text = L_180_arg1
				end
				return L_177_
			end
			function L_165_:AddToggle(L_181_arg1)
				L_181_arg1 = L_181_arg1 or {}
				L_181_arg1.Name = L_181_arg1.Name or "Toggle"
				L_181_arg1.Default = L_181_arg1.Default or false
				L_181_arg1.Callback = L_181_arg1.Callback or function()
				end
				L_181_arg1.Color = L_181_arg1.Color or Color3.fromRGB(9, 99, 195)
				L_181_arg1.Flag = L_181_arg1.Flag or nil
				L_181_arg1.Save = L_181_arg1.Save or false
				local L_182_ = {
					Value = L_181_arg1.Default,
					Save = L_181_arg1.Save
				}
				local L_183_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_184_ = L_20_func(L_19_func(L_18_func("RoundFrame", L_181_arg1.Color, 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -24, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5)
				}), {
					L_19_func(L_18_func("Stroke"), {
						Color = L_181_arg1.Color,
						Name = "Stroke",
						Transparency = 0.5
					}),
					L_19_func(L_18_func("Image", "rbxassetid://3944680095"), {
						Size = UDim2.new(0, 20, 0, 20),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						Name = "Ico"
					})
				})
				local L_185_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_181_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_184_,
					L_183_
				}), "Second")
				function L_182_:Set(L_186_arg1)
					L_182_.Value = L_186_arg1
					L_3_:Create(L_184_, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_182_.Value and L_181_arg1.Color or L_10_.Themes.Default.Divider
					}):Play()
					L_3_:Create(L_184_.Stroke, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Color = L_182_.Value and L_181_arg1.Color or L_10_.Themes.Default.Stroke
					}):Play()
					L_3_:Create(L_184_.Ico, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						ImageTransparency = L_182_.Value and 0 or 1,
						Size = L_182_.Value and UDim2.new(0, 20, 0, 20) or UDim2.new(0, 8, 0, 8)
					}):Play()
					L_181_arg1.Callback(L_182_.Value)
				end
				L_182_:Set(L_182_.Value)
				L_14_func(L_183_.MouseEnter, function()
					L_3_:Create(L_185_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_183_.MouseLeave, function()
					L_3_:Create(L_185_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_183_.MouseButton1Up, function()
					L_3_:Create(L_185_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
					L_28_func(game.PlaceId)
					L_182_:Set(not L_182_.Value)
				end)
				L_14_func(L_183_.MouseButton1Down, function()
					L_3_:Create(L_185_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
				if L_181_arg1.Flag then
					L_10_.Flags[L_181_arg1.Flag] = L_182_
				end
				return L_182_
			end
			function L_165_:AddSlider(L_187_arg1)
				L_187_arg1 = L_187_arg1 or {}
				L_187_arg1.Name = L_187_arg1.Name or "Slider"
				L_187_arg1.Min = L_187_arg1.Min or 0
				L_187_arg1.Max = L_187_arg1.Max or 100
				L_187_arg1.Increment = L_187_arg1.Increment or 1
				L_187_arg1.Default = L_187_arg1.Default or 50
				L_187_arg1.Callback = L_187_arg1.Callback or function()
				end
				L_187_arg1.ValueName = L_187_arg1.ValueName or ""
				L_187_arg1.Color = L_187_arg1.Color or Color3.fromRGB(9, 149, 98)
				L_187_arg1.Flag = L_187_arg1.Flag or nil
				L_187_arg1.Save = L_187_arg1.Save or false
				local L_188_ = {
					Value = L_187_arg1.Default,
					Save = L_187_arg1.Save
				}
				local L_189_ = false
				local L_190_ = L_20_func(L_19_func(L_18_func("RoundFrame", L_187_arg1.Color, 0, 5), {
					Size = UDim2.new(0, 0, 1, 0),
					BackgroundTransparency = 0.3,
					ClipsDescendants = true
				}), {
					L_23_func(L_19_func(L_18_func("Label", "value", 13), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 6),
						Font = Enum.Font.GothamBold,
						Name = "Value",
						TextTransparency = 0
					}), "Text")
				})
				local L_191_ = L_20_func(L_19_func(L_18_func("RoundFrame", L_187_arg1.Color, 0, 5), {
					Size = UDim2.new(1, -24, 0, 26),
					Position = UDim2.new(0, 12, 0, 30),
					BackgroundTransparency = 0.9
				}), {
					L_19_func(L_18_func("Stroke"), {
						Color = L_187_arg1.Color
					}),
					L_23_func(L_19_func(L_18_func("Label", "value", 13), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 6),
						Font = Enum.Font.GothamBold,
						Name = "Value",
						TextTransparency = 0.8
					}), "Text"),
					L_190_
				})
				local L_192_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(1, 0, 0, 65),
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_187_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 0, 14),
						Position = UDim2.new(0, 12, 0, 10),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_191_
				}), "Second")
				L_191_.InputBegan:Connect(function(L_193_arg1)
					if L_193_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						L_189_ = true
					end
				end)
				L_191_.InputEnded:Connect(function(L_194_arg1)
					if L_194_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						L_189_ = false
					end
				end)
				L_2_.InputChanged:Connect(function(L_195_arg1)
					if L_189_ and L_195_arg1.UserInputType == Enum.UserInputType.MouseMovement then
						local L_196_ = math.clamp((L_195_arg1.Position.X - L_191_.AbsolutePosition.X) / L_191_.AbsoluteSize.X, 0, 1)
						L_188_:Set(L_187_arg1.Min + ((L_187_arg1.Max - L_187_arg1.Min) * L_196_))
						L_28_func(game.PlaceId)
					end
				end)
				function L_188_:Set(L_197_arg1)
					L_197_arg1 = math.clamp(L_21_func(L_197_arg1, L_187_arg1.Increment), L_187_arg1.Min, L_187_arg1.Max)
					L_3_:Create(L_190_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = UDim2.fromScale((L_197_arg1 - L_187_arg1.Min) / (L_187_arg1.Max - L_187_arg1.Min), 1)
					}):Play()
					L_191_.Value.Text = tostring(L_197_arg1).." "..L_187_arg1.ValueName
					L_190_.Value.Text = tostring(L_197_arg1).." "..L_187_arg1.ValueName
					L_187_arg1.Callback(L_197_arg1)
				end
				L_188_:Set(L_188_.Value)
				if L_187_arg1.Flag then
					L_10_.Flags[L_187_arg1.Flag] = L_188_
				end
				return L_188_
			end
			function L_165_:AddDropdown(L_198_arg1)
				L_198_arg1 = L_198_arg1 or {}
				L_198_arg1.Name = L_198_arg1.Name or "Dropdown"
				L_198_arg1.Options = L_198_arg1.Options or {}
				L_198_arg1.Default = L_198_arg1.Default or ""
				L_198_arg1.Callback = L_198_arg1.Callback or function()
				end
				L_198_arg1.Flag = L_198_arg1.Flag or nil
				L_198_arg1.Save = L_198_arg1.Save or false
				local L_199_ = {
					Value = L_198_arg1.Default,
					Options = L_198_arg1.Options,
					Buttons = {},
					Toggled = false,
					Type = "Dropdown",
					Save = L_198_arg1.Save
				}
				local L_200_ = 5
				if not table.find(L_199_.Options, L_199_.Value) then
					L_199_.Value = "..."
				end
				local L_201_ = L_18_func("List")
				local L_202_ = L_23_func(L_19_func(L_20_func(L_18_func("ScrollFrame", Color3.fromRGB(40, 40, 40), 4), {
					L_201_
				}), {
					Parent = L_164_arg1,
					Position = UDim2.new(0, 0, 0, 38),
					Size = UDim2.new(1, 0, 1, -38),
					ClipsDescendants = true
				}), "Divider")
				local L_203_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_204_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_164_arg1,
					ClipsDescendants = true
				}), {
					L_202_,
					L_19_func(L_20_func(L_18_func("TFrame"), {
						L_23_func(L_19_func(L_18_func("Label", L_198_arg1.Name, 15), {
							Size = UDim2.new(1, -12, 1, 0),
							Position = UDim2.new(0, 12, 0, 0),
							Font = Enum.Font.GothamBold,
							Name = "Content"
						}), "Text"),
						L_23_func(L_19_func(L_18_func("Image", "rbxassetid://7072706796"), {
							Size = UDim2.new(0, 20, 0, 20),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(1, -30, 0.5, 0),
							ImageColor3 = Color3.fromRGB(240, 240, 240),
							Name = "Ico"
						}), "TextDark"),
						L_23_func(L_19_func(L_18_func("Label", "Selected", 13), {
							Size = UDim2.new(1, -40, 1, 0),
							Font = Enum.Font.Gotham,
							Name = "Selected",
							TextXAlignment = Enum.TextXAlignment.Right
						}), "TextDark"),
						L_23_func(L_19_func(L_18_func("Frame"), {
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.new(0, 0, 1, -1),
							Name = "Line",
							Visible = false
						}), "Stroke"),
						L_203_
					}), {
						Size = UDim2.new(1, 0, 0, 38),
						ClipsDescendants = true,
						Name = "F"
					}),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_18_func("Corner")
				}), "Second")
				L_14_func(L_201_:GetPropertyChangedSignal("AbsoluteContentSize"), function()
					L_202_.CanvasSize = UDim2.new(0, 0, 0, L_201_.AbsoluteContentSize.Y)
				end)
				local function L_205_func(L_206_arg1)
					for L_207_forvar1, L_208_forvar2 in next, L_206_arg1 do
						local L_209_ = L_23_func(L_19_func(L_20_func(L_18_func("Button", Color3.fromRGB(40, 40, 40)), {
							L_18_func("Corner", 0, 6),
							L_23_func(L_19_func(L_18_func("Label", L_208_forvar2, 13, 0.4), {
								Position = UDim2.new(0, 8, 0, 0),
								Size = UDim2.new(1, -8, 1, 0),
								Name = "Title"
							}), "Text")
						}), {
							Parent = L_202_,
							Size = UDim2.new(1, 0, 0, 28),
							BackgroundTransparency = 1,
							ClipsDescendants = true
						}), "Divider")
						L_14_func(L_209_.MouseButton1Click, function()
							L_199_:Set(L_208_forvar2)
							L_28_func(game.PlaceId)
						end)
						L_199_.Buttons[L_208_forvar2] = L_209_
					end
				end
				function L_199_:Refresh(L_210_arg1, L_211_arg2)
					if L_211_arg2 then
						for L_212_forvar1, L_213_forvar2 in next, L_199_.Buttons do
							L_9_:AddItem(L_213_forvar2, 0)
						end
						table.clear(L_199_.Options)
						table.clear(L_199_.Buttons)
					end
					L_199_.Options = L_210_arg1
					L_205_func(L_199_.Options)
				end
				function L_199_:Set(L_214_arg1)
					if not table.find(L_199_.Options, L_214_arg1) then
						L_199_.Value = "..."
						L_204_.F.Selected.Text = L_199_.Value
						for L_215_forvar1, L_216_forvar2 in next, L_199_.Buttons do
							L_3_:Create(L_216_forvar2, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundTransparency = 1
							}):Play()
							L_3_:Create(L_216_forvar2.Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								TextTransparency = 0.4
							}):Play()
						end
						return
					end
					L_199_.Value = L_214_arg1
					L_204_.F.Selected.Text = L_199_.Value
					for L_217_forvar1, L_218_forvar2 in next, L_199_.Buttons do
						L_3_:Create(L_218_forvar2, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundTransparency = 1
						}):Play()
						L_3_:Create(L_218_forvar2.Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							TextTransparency = 0.4
						}):Play()
					end
					L_3_:Create(L_199_.Buttons[L_214_arg1], TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_3_:Create(L_199_.Buttons[L_214_arg1].Title, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextTransparency = 0
					}):Play()
					return L_198_arg1.Callback(L_199_.Value)
				end
				L_14_func(L_203_.MouseButton1Click, function()
					L_199_.Toggled = not L_199_.Toggled
					L_204_.F.Line.Visible = L_199_.Toggled
					L_3_:Create(L_204_.F.Ico, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = L_199_.Toggled and 180 or 0
					}):Play()
					if #L_199_.Options > L_200_ then
						L_3_:Create(L_204_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = L_199_.Toggled and UDim2.new(1, 0, 0, 38 + (L_200_ * 28)) or UDim2.new(1, 0, 0, 38)
						}):Play()
					else
						L_3_:Create(L_204_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = L_199_.Toggled and UDim2.new(1, 0, 0, L_201_.AbsoluteContentSize.Y + 38) or UDim2.new(1, 0, 0, 38)
						}):Play()
					end
				end)
				L_199_:Refresh(L_199_.Options, false)
				L_199_:Set(L_199_.Value)
				if L_198_arg1.Flag then
					L_10_.Flags[L_198_arg1.Flag] = L_199_
				end
				return L_199_
			end
			local L_166_ = nil
			function L_165_:AddBind(L_219_arg1)
				L_219_arg1.Name = L_219_arg1.Name or "Bind"
				L_219_arg1.Default = L_219_arg1.Default or Enum.KeyCode.Unknown
				L_219_arg1.Hold = L_219_arg1.Hold or false
				L_219_arg1.Callback = L_219_arg1.Callback or function()
				end
				L_219_arg1.Flag = L_219_arg1.Flag or nil
				L_219_arg1.Save = L_219_arg1.Save or false
				local L_220_ = {
					L_166_,
					Binding = false,
					Type = "Bind",
					Save = L_219_arg1.Save
				}
				local L_221_ = false
				local L_222_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_223_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -12, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5)
				}), {
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_23_func(L_19_func(L_18_func("Label", L_219_arg1.Name, 14), {
						Size = UDim2.new(1, 0, 1, 0),
						Font = Enum.Font.GothamBold,
						TextXAlignment = Enum.TextXAlignment.Center,
						Name = "Value"
					}), "Text")
				}), "Main")
				local L_224_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_219_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_223_,
					L_222_
				}), "Second")
				L_14_func(L_223_.Value:GetPropertyChangedSignal("Text"), function()
					L_3_:Create(L_223_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, L_223_.Value.TextBounds.X + 16, 0, 24)
					}):Play()
				end)
				L_14_func(L_222_.InputEnded, function(L_225_arg1)
					if L_225_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						if L_220_.Binding then
							return
						end
						L_220_.Binding = true
						L_223_.Value.Text = ""
					end
				end)
				L_14_func(L_2_.InputBegan, function(L_226_arg1)
					if L_2_:GetFocusedTextBox() then
						return
					end
					if (L_226_arg1.KeyCode.Name == L_220_.Value or L_226_arg1.UserInputType.Name == L_220_.Value) and not L_220_.Binding then
						if L_219_arg1.Hold then
							L_221_ = true
							L_219_arg1.Callback(L_221_)
						else
							L_219_arg1.Callback()
						end
					elseif L_220_.Binding then
						local L_227_
						pcall(function()
							if not L_31_func(L_30_, L_226_arg1.KeyCode) then
								L_227_ = L_226_arg1.KeyCode
							end
						end)
						pcall(function()
							if L_31_func(L_29_, L_226_arg1.UserInputType) and not L_227_ then
								L_227_ = L_226_arg1.UserInputType
							end
						end)
						L_227_ = L_227_ or L_220_.Value
						L_220_:Set(L_227_)
						L_28_func(game.PlaceId)
					end
				end)
				L_14_func(L_2_.InputEnded, function(L_228_arg1)
					if L_228_arg1.KeyCode.Name == L_220_.Value or L_228_arg1.UserInputType.Name == L_220_.Value then
						if L_219_arg1.Hold and L_221_ then
							L_221_ = false
							L_219_arg1.Callback(L_221_)
						end
					end
				end)
				L_14_func(L_222_.MouseEnter, function()
					L_3_:Create(L_224_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_222_.MouseLeave, function()
					L_3_:Create(L_224_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_222_.MouseButton1Up, function()
					L_3_:Create(L_224_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_222_.MouseButton1Down, function()
					L_3_:Create(L_224_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
				function L_220_:Set(L_229_arg1)
					L_220_.Binding = false
					L_220_.Value = L_229_arg1 or L_220_.Value
					L_220_.Value = L_220_.Value.Name or L_220_.Value
					L_223_.Value.Text = L_220_.Value
				end
				L_220_:Set(L_219_arg1.Default)
				if L_219_arg1.Flag then
					L_10_.Flags[L_219_arg1.Flag] = L_220_
				end
				return L_220_
			end
			function L_165_:AddTextbox(L_230_arg1)
				L_230_arg1 = L_230_arg1 or {}
				L_230_arg1.Name = L_230_arg1.Name or "Textbox"
				L_230_arg1.Default = L_230_arg1.Default or ""
				L_230_arg1.TextDisappear = L_230_arg1.TextDisappear or false
				L_230_arg1.Callback = L_230_arg1.Callback or function()
				end
				local L_231_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_232_ = L_23_func(L_16_func("TextBox", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					PlaceholderColor3 = Color3.fromRGB(210, 210, 210),
					PlaceholderText = "Input",
					Font = Enum.Font.GothamSemibold,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextSize = 14,
					ClearTextOnFocus = false
				}), "Text")
				local L_233_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -12, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5)
				}), {
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_232_
				}), "Main")
				local L_234_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_164_arg1
				}), {
					L_23_func(L_19_func(L_18_func("Label", L_230_arg1.Name, 15), {
						Size = UDim2.new(1, -12, 1, 0),
						Position = UDim2.new(0, 12, 0, 0),
						Font = Enum.Font.GothamBold,
						Name = "Content"
					}), "Text"),
					L_23_func(L_18_func("Stroke"), "Stroke"),
					L_233_,
					L_231_
				}), "Second")
				L_14_func(L_232_:GetPropertyChangedSignal("Text"), function()
					L_3_:Create(L_233_, TweenInfo.new(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						Size = UDim2.new(0, L_232_.TextBounds.X + 16, 0, 24)
					}):Play()
				end)
				L_14_func(L_232_.FocusLost, function()
					L_230_arg1.Callback(L_232_.Text)
					if L_230_arg1.TextDisappear then
						L_232_.Text = ""
					end
				end)
				L_232_.Text = L_230_arg1.Default
				L_14_func(L_231_.MouseEnter, function()
					L_3_:Create(L_234_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
				end)
				L_14_func(L_231_.MouseLeave, function()
					L_3_:Create(L_234_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = L_10_.Themes[L_10_.SelectedTheme].Second
					}):Play()
				end)
				L_14_func(L_231_.MouseButton1Up, function()
					L_3_:Create(L_234_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 3, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 3)
					}):Play()
					L_232_:CaptureFocus()
				end)
				L_14_func(L_231_.MouseButton1Down, function()
					L_3_:Create(L_234_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(L_10_.Themes[L_10_.SelectedTheme].Second.R * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.G * 255 + 6, L_10_.Themes[L_10_.SelectedTheme].Second.B * 255 + 6)
					}):Play()
				end)
			end
			function L_165_:AddColorpicker(L_235_arg1)
				L_235_arg1 = L_235_arg1 or {}
				L_235_arg1.Name = L_235_arg1.Name or "Colorpicker"
				L_235_arg1.Default = L_235_arg1.Default or Color3.fromRGB(255, 255, 255)
				L_235_arg1.Callback = L_235_arg1.Callback or function()
				end
				L_235_arg1.Flag = L_235_arg1.Flag or nil
				L_235_arg1.Save = L_235_arg1.Save or false
				local L_236_, L_237_, L_238_ = 1, 1, 1
				local L_239_ = {
					Value = L_235_arg1.Default,
					Toggled = false,
					Type = "Colorpicker",
					Save = L_235_arg1.Save
				}
				local L_240_ = L_16_func("ImageLabel", {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(select(3, Color3.toHSV(L_239_.Value))),
					ScaleType = Enum.ScaleType.Fit,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = "rbxassetid://4805639000"
				})
				local L_241_ = L_16_func("ImageLabel", {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0.5, 0, 1 - select(1, Color3.toHSV(L_239_.Value))),
					ScaleType = Enum.ScaleType.Fit,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = "rbxassetid://4805639000"
				})
				local L_242_ = L_16_func("ImageLabel", {
					Size = UDim2.new(1, -25, 1, 0),
					Visible = false,
					Image = "rbxassetid://4155801252"
				}, {
					L_16_func("UICorner", {
						CornerRadius = UDim.new(0, 5)
					}),
					L_240_
				})
				local L_243_ = L_16_func("Frame", {
					Size = UDim2.new(0, 20, 1, 0),
					Position = UDim2.new(1, -20, 0, 0),
					Visible = false
				}, {
					L_16_func("UIGradient", {
						Rotation = 270,
						Color = ColorSequence.new{
							ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
							ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
							ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
							ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
							ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
						}
					}),
					L_16_func("UICorner", {
						CornerRadius = UDim.new(0, 5)
					}),
					L_241_
				})
				local L_244_ = L_16_func("Frame", {
					Position = UDim2.new(0, 0, 0, 32),
					Size = UDim2.new(1, 0, 1, -32),
					BackgroundTransparency = 1,
					ClipsDescendants = true
				}, {
					L_243_,
					L_242_,
					L_16_func("UIPadding", {
						PaddingLeft = UDim.new(0, 35),
						PaddingRight = UDim.new(0, 35),
						PaddingBottom = UDim.new(0, 10),
						PaddingTop = UDim.new(0, 17)
					})
				})
				local L_245_ = L_19_func(L_18_func("Button"), {
					Size = UDim2.new(1, 0, 1, 0)
				})
				local L_246_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 4), {
					Size = UDim2.new(0, 24, 0, 24),
					Position = UDim2.new(1, -12, 0.5, 0),
					AnchorPoint = Vector2.new(1, 0.5)
				}), {
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Main")
				local L_247_ = L_23_func(L_20_func(L_19_func(L_18_func("RoundFrame", Color3.fromRGB(255, 255, 255), 0, 5), {
					Size = UDim2.new(1, 0, 0, 38),
					Parent = L_164_arg1
				}), {
					L_19_func(L_20_func(L_18_func("TFrame"), {
						L_23_func(L_19_func(L_18_func("Label", L_235_arg1.Name, 15), {
							Size = UDim2.new(1, -12, 1, 0),
							Position = UDim2.new(0, 12, 0, 0),
							Font = Enum.Font.GothamBold,
							Name = "Content"
						}), "Text"),
						L_246_,
						L_245_,
						L_23_func(L_19_func(L_18_func("Frame"), {
							Size = UDim2.new(1, 0, 0, 1),
							Position = UDim2.new(0, 0, 1, -1),
							Name = "Line",
							Visible = false
						}), "Stroke")
					}), {
						Size = UDim2.new(1, 0, 0, 38),
						ClipsDescendants = true,
						Name = "F"
					}),
					L_244_,
					L_23_func(L_18_func("Stroke"), "Stroke")
				}), "Second")
				L_14_func(L_245_.MouseButton1Click, function()
					L_239_.Toggled = not L_239_.Toggled
					L_3_:Create(L_247_, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Size = L_239_.Toggled and UDim2.new(1, 0, 0, 148) or UDim2.new(1, 0, 0, 38)
					}):Play()
					L_242_.Visible = L_239_.Toggled
					L_243_.Visible = L_239_.Toggled
					L_247_.F.Line.Visible = L_239_.Toggled
				end)
				local function L_248_func()
					L_246_.BackgroundColor3 = Color3.fromHSV(L_236_, L_237_, L_238_)
					L_242_.BackgroundColor3 = Color3.fromHSV(L_236_, 1, 1)
					L_239_:Set(L_246_.BackgroundColor3)
					L_235_arg1.Callback(L_246_.BackgroundColor3)
					L_28_func(game.PlaceId)
				end
				L_236_ = 1 - (math.clamp(L_241_.AbsolutePosition.Y - L_243_.AbsolutePosition.Y, 0, L_243_.AbsoluteSize.Y) / L_243_.AbsoluteSize.Y)
				L_237_ = (math.clamp(L_240_.AbsolutePosition.X - L_242_.AbsolutePosition.X, 0, L_242_.AbsoluteSize.X) / L_242_.AbsoluteSize.X)
				L_238_ = 1 - (math.clamp(L_240_.AbsolutePosition.Y - L_242_.AbsolutePosition.Y, 0, L_242_.AbsoluteSize.Y) / L_242_.AbsoluteSize.Y)
				local L_249_
				L_14_func(L_242_.InputBegan, function(L_251_arg1)
					if L_251_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						if L_249_ then
							L_249_:Disconnect()
						end
						L_249_ = L_14_func(L_4_.RenderStepped, function()
							local L_252_ = (math.clamp(L_6_.X - L_242_.AbsolutePosition.X, 0, L_242_.AbsoluteSize.X) / L_242_.AbsoluteSize.X)
							local L_253_ = (math.clamp(L_6_.Y - L_242_.AbsolutePosition.Y, 0, L_242_.AbsoluteSize.Y) / L_242_.AbsoluteSize.Y)
							L_240_.Position = UDim2.new(L_252_, 0, L_253_, 0)
							L_237_ = L_252_
							L_238_ = 1 - L_253_
							L_248_func()
						end)
					end
				end)
				L_14_func(L_242_.InputEnded, function(L_254_arg1)
					if L_254_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						if L_249_ then
							L_249_:Disconnect()
						end
					end
				end)
				local L_250_
				L_14_func(L_243_.InputBegan, function(L_255_arg1)
					if L_255_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						if L_250_ then
							L_250_:Disconnect()
						end
						L_250_ = L_14_func(L_4_.RenderStepped, function()
							local L_256_ = (math.clamp(L_6_.Y - L_243_.AbsolutePosition.Y, 0, L_243_.AbsoluteSize.Y) / L_243_.AbsoluteSize.Y)
							L_241_.Position = UDim2.new(0.5, 0, L_256_, 0)
							L_236_ = 1 - L_256_
							L_248_func()
						end)
					end
				end)
				L_14_func(L_243_.InputEnded, function(L_257_arg1)
					if L_257_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
						if L_250_ then
							L_250_:Disconnect()
						end
					end
				end)
				function L_239_:Set(L_258_arg1)
					L_239_.Value = L_258_arg1
					L_246_.BackgroundColor3 = L_239_.Value
					L_235_arg1.Callback(L_239_.Value)
				end
				L_239_:Set(L_239_.Value)
				if L_235_arg1.Flag then
					L_10_.Flags[L_235_arg1.Flag] = L_239_
				end
				return L_239_
			end
			return L_165_
		end
		local L_158_ = {}
		local L_159_ = nil
		function L_158_:AddSection(L_259_arg1)
			L_259_arg1.Name = L_259_arg1.Name or "Section"
			local L_260_ = L_20_func(L_19_func(L_18_func("TFrame"), {
				Size = UDim2.new(1, 0, 0, 26),
				Parent = L_156_
			}), {
				L_23_func(L_19_func(L_18_func("Label", L_259_arg1.Name, 14), {
					Size = UDim2.new(1, -12, 0, 16),
					Position = UDim2.new(0, 0, 0, 3),
					Font = Enum.Font.GothamSemibold
				}), "TextDark"),
				L_20_func(L_19_func(L_18_func("TFrame"), {
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(1, 0, 1, -24),
					Position = UDim2.new(0, 0, 0, 23),
					Name = "Holder"
				}), {
					L_18_func("List", 0, 6)
				})
			})
			L_14_func(L_260_.Holder.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				L_260_.Size = UDim2.new(1, 0, 0, L_260_.Holder.UIListLayout.AbsoluteContentSize.Y + 31)
				L_260_.Holder.Size = UDim2.new(1, 0, 0, L_260_.Holder.UIListLayout.AbsoluteContentSize.Y)
			end)
			local L_261_ = {}
			for L_262_forvar1, L_263_forvar2 in next, L_157_func(L_260_.Holder) do
				L_261_[L_262_forvar1] = L_263_forvar2
			end
			return L_261_
		end
		for L_264_forvar1, L_265_forvar2 in next, L_157_func(L_156_) do
			L_158_[L_264_forvar1] = L_265_forvar2
		end
		if L_154_arg1.TestersOnly then
			for L_266_forvar1, L_267_forvar2 in next, L_158_ do
				L_158_[L_266_forvar1] = function()
				end
			end
			L_9_:AddItem(L_156_:FindFirstChild("UIListLayout"), 0)
			L_9_:AddItem(L_156_:FindFirstChild("UIPadding"), 0)
			L_20_func(L_19_func(L_18_func("TFrame"), {
				Size = UDim2.new(1, 0, 1, 0),
				Parent = L_159_
			}), {
				L_23_func(L_19_func(L_18_func("Image", "rbxassetid://3610239960"), {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0, 15, 0, 15),
					ImageTransparency = 0.4
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Label", "Unauthorised Access", 14), {
					Size = UDim2.new(1, -38, 0, 14),
					Position = UDim2.new(0, 38, 0, 18),
					TextTransparency = 0.4
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Image", "rbxassetid://4483345875"), {
					Size = UDim2.new(0, 56, 0, 56),
					Position = UDim2.new(0, 84, 0, 110)
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Label", "Beta Features", 14), {
					Size = UDim2.new(1, -150, 0, 14),
					Position = UDim2.new(0, 150, 0, 112),
					Font = Enum.Font.GothamBold
				}), "Text"),
				L_23_func(L_19_func(L_18_func("Label", "This part of the script is locked to Testers.", 12), {
					Size = UDim2.new(1, -200, 0, 14),
					Position = UDim2.new(0, 150, 0, 138),
					TextWrapped = true,
					TextTransparency = 0.4
				}), "Text")
			})
		end
		return L_158_
	end
	return L_149_
end
function L_10_:Destroy()
	L_9_:AddItem(L_13_, 0)
end
return L_10_