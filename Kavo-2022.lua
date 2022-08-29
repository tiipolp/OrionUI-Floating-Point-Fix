local L_1_ = {}
local L_2_ = game:GetService("TweenService")
local L_3_ = TweenInfo.new
local L_4_ = game:GetService("UserInputService")
local L_5_ = game:GetService("RunService")
local L_6_ = {}
local L_7_ = {}
function L_1_:DraggingEnabled(L_11_arg1, L_12_arg2)
	L_12_arg2 = L_12_arg2 or L_11_arg1
	local L_13_ = false
	local L_14_, L_15_, L_16_
	L_11_arg1.InputBegan:Connect(function(L_17_arg1)
		if L_17_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
			L_13_ = true
			L_15_ = L_17_arg1.Position
			L_16_ = L_12_arg2.Position
			L_17_arg1.Changed:Connect(function()
				if L_17_arg1.UserInputState == Enum.UserInputState.End then
					L_13_ = false
				end
			end)
		end
	end)
	L_11_arg1.InputChanged:Connect(function(L_18_arg1)
		if L_18_arg1.UserInputType == Enum.UserInputType.MouseMovement then
			L_14_ = L_18_arg1
		end
	end)
	L_4_.InputChanged:Connect(function(L_19_arg1)
		if L_19_arg1 == L_14_ and L_13_ then
			local L_20_ = L_19_arg1.Position - L_15_
			L_12_arg2.Position = UDim2.new(L_16_.X.Scale, L_16_.X.Offset + L_20_.X, L_16_.Y.Scale, L_16_.Y.Offset + L_20_.Y)
		end
	end)
end
function L_6_:TweenObject(L_21_arg1, L_22_arg2, L_23_arg3, ...)
	L_2_:Create(L_21_arg1, L_3_(L_23_arg3, ...), L_22_arg2):Play()
end
local L_8_ = {
	SchemeColor = Color3.fromRGB(74, 99, 135),
	Background = Color3.fromRGB(36, 37, 43),
	Header = Color3.fromRGB(28, 29, 34),
	TextColor = Color3.fromRGB(255, 255, 255),
	ElementColor = Color3.fromRGB(32, 32, 38)
}
local L_9_ = {
	DarkTheme = {
		SchemeColor = Color3.fromRGB(64, 64, 64),
		Background = Color3.fromRGB(0, 0, 0),
		Header = Color3.fromRGB(0, 0, 0),
		TextColor = Color3.fromRGB(255, 255, 255),
		ElementColor = Color3.fromRGB(20, 20, 20)
	},
	LightTheme = {
		SchemeColor = Color3.fromRGB(150, 150, 150),
		Background = Color3.fromRGB(255, 255, 255),
		Header = Color3.fromRGB(200, 200, 200),
		TextColor = Color3.fromRGB(0, 0, 0),
		ElementColor = Color3.fromRGB(224, 224, 224)
	},
	BloodTheme = {
		SchemeColor = Color3.fromRGB(227, 27, 27),
		Background = Color3.fromRGB(10, 10, 10),
		Header = Color3.fromRGB(5, 5, 5),
		TextColor = Color3.fromRGB(255, 255, 255),
		ElementColor = Color3.fromRGB(20, 20, 20)
	},
	GrapeTheme = {
		SchemeColor = Color3.fromRGB(166, 71, 214),
		Background = Color3.fromRGB(64, 50, 71),
		Header = Color3.fromRGB(36, 28, 41),
		TextColor = Color3.fromRGB(255, 255, 255),
		ElementColor = Color3.fromRGB(74, 58, 84)
	},
	Ocean = {
		SchemeColor = Color3.fromRGB(86, 76, 251),
		Background = Color3.fromRGB(26, 32, 58),
		Header = Color3.fromRGB(38, 45, 71),
		TextColor = Color3.fromRGB(200, 200, 200),
		ElementColor = Color3.fromRGB(38, 45, 71)
	},
	Midnight = {
		SchemeColor = Color3.fromRGB(26, 189, 158),
		Background = Color3.fromRGB(44, 62, 82),
		Header = Color3.fromRGB(57, 81, 105),
		TextColor = Color3.fromRGB(255, 255, 255),
		ElementColor = Color3.fromRGB(52, 74, 95)
	},
	Sentinel = {
		SchemeColor = Color3.fromRGB(230, 35, 69),
		Background = Color3.fromRGB(32, 32, 32),
		Header = Color3.fromRGB(24, 24, 24),
		TextColor = Color3.fromRGB(119, 209, 138),
		ElementColor = Color3.fromRGB(24, 24, 24)
	},
	Synapse = {
		SchemeColor = Color3.fromRGB(46, 48, 43),
		Background = Color3.fromRGB(13, 15, 12),
		Header = Color3.fromRGB(36, 38, 35),
		TextColor = Color3.fromRGB(152, 99, 53),
		ElementColor = Color3.fromRGB(24, 24, 24)
	},
	Serpent = {
		SchemeColor = Color3.fromRGB(0, 166, 58),
		Background = Color3.fromRGB(31, 41, 43),
		Header = Color3.fromRGB(22, 29, 31),
		TextColor = Color3.fromRGB(255, 255, 255),
		ElementColor = Color3.fromRGB(22, 29, 31)
	}
}
local L_10_ = tostring(math.random(1, 100))..tostring(math.random(1, 50))..tostring(math.random(1, 100))
function L_1_:ToggleUI()
	if game.CoreGui[L_10_].Enabled then
		game.CoreGui[L_10_].Enabled = false
	else
		game.CoreGui[L_10_].Enabled = true
	end
end
function L_1_.CreateLib(L_24_arg1, L_25_arg2)
	if not L_25_arg2 then
		L_25_arg2 = L_8_
	end
	if L_25_arg2 == "DarkTheme" then
		L_25_arg2 = L_9_.DarkTheme
	elseif L_25_arg2 == "LightTheme" then
		L_25_arg2 = L_9_.LightTheme
	elseif L_25_arg2 == "BloodTheme" then
		L_25_arg2 = L_9_.BloodTheme
	elseif L_25_arg2 == "GrapeTheme" then
		L_25_arg2 = L_9_.GrapeTheme
	elseif L_25_arg2 == "Ocean" then
		L_25_arg2 = L_9_.Ocean
	elseif L_25_arg2 == "Midnight" then
		L_25_arg2 = L_9_.Midnight
	elseif L_25_arg2 == "Sentinel" then
		L_25_arg2 = L_9_.Sentinel
	elseif L_25_arg2 == "Synapse" then
		L_25_arg2 = L_9_.Synapse
	elseif L_25_arg2 == "Serpent" then
		L_25_arg2 = L_9_.Serpent
	else
		if L_25_arg2.SchemeColor == nil then
			L_25_arg2.SchemeColor = Color3.fromRGB(74, 99, 135)
		elseif L_25_arg2.Background == nil then
			L_25_arg2.Background = Color3.fromRGB(36, 37, 43)
		elseif L_25_arg2.Header == nil then
			L_25_arg2.Header = Color3.fromRGB(28, 29, 34)
		elseif L_25_arg2.TextColor == nil then
			L_25_arg2.TextColor = Color3.fromRGB(255, 255, 255)
		elseif L_25_arg2.ElementColor == nil then
			L_25_arg2.ElementColor = Color3.fromRGB(32, 32, 38)
		end
	end
	L_25_arg2 = L_25_arg2 or {}
	local L_26_
	L_24_arg1 = L_24_arg1 or "Library"
	table.insert(L_1_, L_24_arg1)
	for L_46_forvar1, L_47_forvar2 in pairs(game.CoreGui:GetChildren()) do
		if L_47_forvar2:IsA("ScreenGui") and L_47_forvar2.Name == L_24_arg1 then
			L_47_forvar2:Destroy()
		end
	end
	local L_27_ = Instance.new("ScreenGui")
	local L_28_ = Instance.new("Frame")
	local L_29_ = Instance.new("UICorner")
	local L_30_ = Instance.new("Frame")
	local L_31_ = Instance.new("UICorner")
	local L_32_ = Instance.new("Frame")
	local L_33_ = Instance.new("TextLabel")
	local L_34_ = Instance.new("ImageButton")
	local L_35_ = Instance.new("Frame")
	local L_36_ = Instance.new("UICorner")
	local L_37_ = Instance.new("Frame")
	local L_38_ = Instance.new("Frame")
	local L_39_ = Instance.new("UIListLayout")
	local L_40_ = Instance.new("Frame")
	local L_41_ = Instance.new("Folder")
	local L_42_ = Instance.new("Frame")
	local L_43_ = Instance.new("Frame")
	L_1_:DraggingEnabled(L_30_, L_28_)
	L_43_.Name = "blurFrame"
	L_43_.Parent = L_40_
	L_43_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	L_43_.BackgroundTransparency = 1
	L_43_.BorderSizePixel = 0
	L_43_.Position = UDim2.new(-0.0222222228, 0, -0.0371747203, 0)
	L_43_.Size = UDim2.new(0, 376, 0, 289)
	L_43_.ZIndex = 999
	L_27_.Parent = game.CoreGui
	L_27_.Name = L_10_
	L_27_.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	L_27_.ResetOnSpawn = false
	L_28_.Name = "Main"
	L_28_.Parent = L_27_
	L_28_.BackgroundColor3 = L_25_arg2.Background
	L_28_.ClipsDescendants = true
	L_28_.Position = UDim2.new(0.336503863, 0, 0.275485456, 0)
	L_28_.Size = UDim2.new(0, 525, 0, 318)
	L_29_.CornerRadius = UDim.new(0, 4)
	L_29_.Name = "MainCorner"
	L_29_.Parent = L_28_
	L_30_.Name = "MainHeader"
	L_30_.Parent = L_28_
	L_30_.BackgroundColor3 = L_25_arg2.Header
	L_7_[L_30_] = "BackgroundColor3"
	L_30_.Size = UDim2.new(0, 525, 0, 29)
	L_31_.CornerRadius = UDim.new(0, 4)
	L_31_.Name = "headerCover"
	L_31_.Parent = L_30_
	L_32_.Name = "coverup"
	L_32_.Parent = L_30_
	L_32_.BackgroundColor3 = L_25_arg2.Header
	L_7_[L_32_] = "BackgroundColor3"
	L_32_.BorderSizePixel = 0
	L_32_.Position = UDim2.new(0, 0, 0.758620679, 0)
	L_32_.Size = UDim2.new(0, 525, 0, 7)
	L_33_.Name = "title"
	L_33_.Parent = L_30_
	L_33_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_33_.BackgroundTransparency = 1.000
	L_33_.BorderSizePixel = 0
	L_33_.Position = UDim2.new(0.0171428565, 0, 0.344827592, 0)
	L_33_.Size = UDim2.new(0, 204, 0, 8)
	L_33_.Font = Enum.Font.Gotham
	L_33_.RichText = true
	L_33_.Text = L_24_arg1
	L_33_.TextColor3 = Color3.fromRGB(245, 245, 245)
	L_33_.TextSize = 16.000
	L_33_.TextXAlignment = Enum.TextXAlignment.Left
	L_34_.Name = "close"
	L_34_.Parent = L_30_
	L_34_.BackgroundTransparency = 1.000
	L_34_.Position = UDim2.new(0.949999988, 0, 0.137999997, 0)
	L_34_.Size = UDim2.new(0, 21, 0, 21)
	L_34_.ZIndex = 2
	L_34_.Image = "rbxassetid://3926305904"
	L_34_.ImageRectOffset = Vector2.new(284, 4)
	L_34_.ImageRectSize = Vector2.new(24, 24)
	L_34_.MouseButton1Click:Connect(function()
		game.TweenService:Create(L_34_, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			ImageTransparency = 1
		}):Play()
		wait()
		game.TweenService:Create(L_28_, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 0, 0, 0),
			Position = UDim2.new(0, L_28_.AbsolutePosition.X + (L_28_.AbsoluteSize.X / 2), 0, L_28_.AbsolutePosition.Y + (L_28_.AbsoluteSize.Y / 2))
		}):Play()
		wait(1)
		L_27_:Destroy()
	end)
	L_35_.Name = "MainSide"
	L_35_.Parent = L_28_
	L_35_.BackgroundColor3 = L_25_arg2.Header
	L_7_[L_35_] = "Header"
	L_35_.Position = UDim2.new(-7.4505806e-09, 0, 0.0911949649, 0)
	L_35_.Size = UDim2.new(0, 149, 0, 289)
	L_36_.CornerRadius = UDim.new(0, 4)
	L_36_.Name = "sideCorner"
	L_36_.Parent = L_35_
	L_37_.Name = "coverup"
	L_37_.Parent = L_35_
	L_37_.BackgroundColor3 = L_25_arg2.Header
	L_7_[L_37_] = "Header"
	L_37_.BorderSizePixel = 0
	L_37_.Position = UDim2.new(0.949939311, 0, 0, 0)
	L_37_.Size = UDim2.new(0, 7, 0, 289)
	L_38_.Name = "tabFrames"
	L_38_.Parent = L_35_
	L_38_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_38_.BackgroundTransparency = 1.000
	L_38_.Position = UDim2.new(0.0438990258, 0, -0.00066378375, 0)
	L_38_.Size = UDim2.new(0, 135, 0, 283)
	L_39_.Name = "tabListing"
	L_39_.Parent = L_38_
	L_39_.SortOrder = Enum.SortOrder.LayoutOrder
	L_40_.Name = "pages"
	L_40_.Parent = L_28_
	L_40_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_40_.BackgroundTransparency = 1.000
	L_40_.BorderSizePixel = 0
	L_40_.Position = UDim2.new(0.299047589, 0, 0.122641519, 0)
	L_40_.Size = UDim2.new(0, 360, 0, 269)
	L_41_.Name = "Pages"
	L_41_.Parent = L_40_
	L_42_.Name = "infoContainer"
	L_42_.Parent = L_28_
	L_42_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_42_.BackgroundTransparency = 1.000
	L_42_.BorderColor3 = Color3.fromRGB(27, 42, 53)
	L_42_.ClipsDescendants = true
	L_42_.Position = UDim2.new(0.299047619, 0, 0.874213815, 0)
	L_42_.Size = UDim2.new(0, 368, 0, 33)
	coroutine.wrap(function()
		while wait() do
			L_28_.BackgroundColor3 = L_25_arg2.Background
			L_30_.BackgroundColor3 = L_25_arg2.Header
			L_35_.BackgroundColor3 = L_25_arg2.Header
			L_37_.BackgroundColor3 = L_25_arg2.Header
			L_32_.BackgroundColor3 = L_25_arg2.Header
		end
	end)()
	function L_1_:ChangeColor(L_48_arg1, L_49_arg2)
		if L_48_arg1 == "Background" then
			L_25_arg2.Background = L_49_arg2
		elseif L_48_arg1 == "SchemeColor" then
			L_25_arg2.SchemeColor = L_49_arg2
		elseif L_48_arg1 == "Header" then
			L_25_arg2.Header = L_49_arg2
		elseif L_48_arg1 == "TextColor" then
			L_25_arg2.TextColor = L_49_arg2
		elseif L_48_arg1 == "ElementColor" then
			L_25_arg2.ElementColor = L_49_arg2
		end
	end
	local L_44_ = {}
	local L_45_ = true
	function L_44_:NewTab(L_50_arg1)
		L_50_arg1 = L_50_arg1 or "Tab"
		local L_51_ = Instance.new("TextButton")
		local L_52_ = Instance.new("UICorner")
		local L_53_ = Instance.new("ScrollingFrame")
		local L_54_ = Instance.new("UIListLayout")
		local function L_55_func()
			local L_59_ = L_54_.AbsoluteContentSize
			game.TweenService:Create(L_53_, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				CanvasSize = UDim2.new(0, L_59_.X, 0, L_59_.Y)
			}):Play()
		end
		L_53_.Name = "Page"
		L_53_.Parent = L_41_
		L_53_.Active = true
		L_53_.BackgroundColor3 = L_25_arg2.Background
		L_53_.BorderSizePixel = 0
		L_53_.Position = UDim2.new(0, 0, -0.00371747208, 0)
		L_53_.Size = UDim2.new(1, 0, 1, 0)
		L_53_.ScrollBarThickness = 5
		L_53_.Visible = false
		L_53_.ScrollBarImageColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 16, L_25_arg2.SchemeColor.g * 255 - 15, L_25_arg2.SchemeColor.b * 255 - 28)
		L_54_.Name = "pageListing"
		L_54_.Parent = L_53_
		L_54_.SortOrder = Enum.SortOrder.LayoutOrder
		L_54_.Padding = UDim.new(0, 5)
		L_51_.Name = L_50_arg1.."TabButton"
		L_51_.Parent = L_38_
		L_51_.BackgroundColor3 = L_25_arg2.SchemeColor
		L_7_[L_51_] = "SchemeColor"
		L_51_.Size = UDim2.new(0, 135, 0, 28)
		L_51_.AutoButtonColor = false
		L_51_.Font = Enum.Font.Gotham
		L_51_.Text = L_50_arg1
		L_51_.TextColor3 = L_25_arg2.TextColor
		L_7_[L_51_] = "TextColor3"
		L_51_.TextSize = 14.000
		L_51_.BackgroundTransparency = 1
		if L_45_ then
			L_45_ = false
			L_53_.Visible = true
			L_51_.BackgroundTransparency = 0
			L_55_func()
		else
			L_53_.Visible = false
			L_51_.BackgroundTransparency = 1
		end
		L_52_.CornerRadius = UDim.new(0, 5)
		L_52_.Parent = L_51_
		table.insert(L_44_, L_50_arg1)
		L_55_func()
		L_53_.ChildAdded:Connect(L_55_func)
		L_53_.ChildRemoved:Connect(L_55_func)
		L_51_.MouseButton1Click:Connect(function()
			L_55_func()
			for L_60_forvar1, L_61_forvar2 in next, L_41_:GetChildren() do
				L_61_forvar2.Visible = false
			end
			L_53_.Visible = true
			for L_62_forvar1, L_63_forvar2 in next, L_38_:GetChildren() do
				if L_63_forvar2:IsA("TextButton") then
					if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
						L_6_:TweenObject(L_63_forvar2, {
							TextColor3 = Color3.fromRGB(255, 255, 255)
						}, 0.2)
					end
					if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
						L_6_:TweenObject(L_63_forvar2, {
							TextColor3 = Color3.fromRGB(0, 0, 0)
						}, 0.2)
					end
					L_6_:TweenObject(L_63_forvar2, {
						BackgroundTransparency = 1
					}, 0.2)
				end
			end
			if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
				L_6_:TweenObject(L_51_, {
					TextColor3 = Color3.fromRGB(0, 0, 0)
				}, 0.2)
			end
			if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
				L_6_:TweenObject(L_51_, {
					TextColor3 = Color3.fromRGB(255, 255, 255)
				}, 0.2)
			end
			L_6_:TweenObject(L_51_, {
				BackgroundTransparency = 0
			}, 0.2)
		end)
		local L_56_ = {}
		local L_57_ = false
		local L_58_ = false
		coroutine.wrap(function()
			while wait() do
				L_53_.BackgroundColor3 = L_25_arg2.Background
				L_53_.ScrollBarImageColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 16, L_25_arg2.SchemeColor.g * 255 - 15, L_25_arg2.SchemeColor.b * 255 - 28)
				L_51_.TextColor3 = L_25_arg2.TextColor
				L_51_.BackgroundColor3 = L_25_arg2.SchemeColor
			end
		end)()
		function L_56_:NewSection(L_64_arg1, L_65_arg2)
			L_64_arg1 = L_64_arg1 or "Section"
			local L_66_ = {}
			local L_67_ = {}
			L_65_arg2 = L_65_arg2 or false
			local L_68_ = Instance.new("Frame")
			local L_69_ = Instance.new("UIListLayout")
			local L_70_ = Instance.new("Frame")
			local L_71_ = Instance.new("UICorner")
			local L_72_ = Instance.new("TextLabel")
			local L_73_ = Instance.new("Frame")
			local L_74_ = Instance.new("UIListLayout")
			if L_65_arg2 then
				L_70_.Visible = false
			else
				L_70_.Visible = true
			end
			L_68_.Name = "sectionFrame"
			L_68_.Parent = L_53_
			L_68_.BackgroundColor3 = L_25_arg2.Background
			L_68_.BorderSizePixel = 0
			L_69_.Name = "sectionlistoknvm"
			L_69_.Parent = L_68_
			L_69_.SortOrder = Enum.SortOrder.LayoutOrder
			L_69_.Padding = UDim.new(0, 5)
			for L_77_forvar1, L_78_forvar2 in pairs(L_73_:GetChildren()) do
				while wait() do
					if L_78_forvar2:IsA("Frame") or L_78_forvar2:IsA("TextButton") then
						local function L_79_func(L_80_arg1)
							if L_80_arg1 == "Size" then
								L_55_func()
							end
						end
						L_78_forvar2.Changed:Connect(L_79_func)
					end
				end
			end
			L_70_.Name = "sectionHead"
			L_70_.Parent = L_68_
			L_70_.BackgroundColor3 = L_25_arg2.SchemeColor
			L_7_[L_70_] = "BackgroundColor3"
			L_70_.Size = UDim2.new(0, 352, 0, 33)
			L_71_.CornerRadius = UDim.new(0, 4)
			L_71_.Name = "sHeadCorner"
			L_71_.Parent = L_70_
			L_72_.Name = "sectionName"
			L_72_.Parent = L_70_
			L_72_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_72_.BackgroundTransparency = 1.000
			L_72_.BorderColor3 = Color3.fromRGB(27, 42, 53)
			L_72_.Position = UDim2.new(0.0198863633, 0, 0, 0)
			L_72_.Size = UDim2.new(0.980113626, 0, 1, 0)
			L_72_.Font = Enum.Font.Gotham
			L_72_.Text = L_64_arg1
			L_72_.RichText = true
			L_72_.TextColor3 = L_25_arg2.TextColor
			L_7_[L_72_] = "TextColor3"
			L_72_.TextSize = 14.000
			L_72_.TextXAlignment = Enum.TextXAlignment.Left
			if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
				L_6_:TweenObject(L_72_, {
					TextColor3 = Color3.fromRGB(0, 0, 0)
				}, 0.2)
			end
			if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
				L_6_:TweenObject(L_72_, {
					TextColor3 = Color3.fromRGB(255, 255, 255)
				}, 0.2)
			end
			L_73_.Name = "sectionInners"
			L_73_.Parent = L_68_
			L_73_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_73_.BackgroundTransparency = 1.000
			L_73_.Position = UDim2.new(0, 0, 0.190751448, 0)
			L_74_.Name = "sectionElListing"
			L_74_.Parent = L_73_
			L_74_.SortOrder = Enum.SortOrder.LayoutOrder
			L_74_.Padding = UDim.new(0, 3)
			coroutine.wrap(function()
				while wait() do
					L_68_.BackgroundColor3 = L_25_arg2.Background
					L_70_.BackgroundColor3 = L_25_arg2.SchemeColor
					L_51_.TextColor3 = L_25_arg2.TextColor
					L_51_.BackgroundColor3 = L_25_arg2.SchemeColor
					L_72_.TextColor3 = L_25_arg2.TextColor
				end
			end)()
			local function L_75_func()
				local L_81_ = L_74_.AbsoluteContentSize
				L_73_.Size = UDim2.new(1, 0, 0, L_81_.Y)
				local L_82_ = L_69_.AbsoluteContentSize
				L_68_.Size = UDim2.new(0, 352, 0, L_82_.Y)
			end
			L_75_func()
			L_55_func()
			local L_76_ = {}
			function L_76_:NewButton(L_83_arg1, L_84_arg2, L_85_arg3)
				local L_86_ = {}
				L_84_arg2 = L_84_arg2 or "Tip: Clicking this nothing will happen!"
				L_83_arg1 = L_83_arg1 or "Click Me!"
				L_85_arg3 = L_85_arg3 or function()
				end
				local L_87_ = Instance.new("TextButton")
				local L_88_ = Instance.new("UICorner")
				local L_89_ = Instance.new("TextLabel")
				local L_90_ = Instance.new("ImageButton")
				local L_91_ = Instance.new("ImageLabel")
				local L_92_ = Instance.new("ImageLabel")
				table.insert(L_67_, L_83_arg1)
				L_87_.Name = L_83_arg1
				L_87_.Parent = L_73_
				L_87_.BackgroundColor3 = L_25_arg2.ElementColor
				L_87_.ClipsDescendants = true
				L_87_.Size = UDim2.new(0, 352, 0, 33)
				L_87_.AutoButtonColor = false
				L_87_.Font = Enum.Font.SourceSans
				L_87_.Text = ""
				L_87_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_87_.TextSize = 14.000
				L_7_[L_87_] = "BackgroundColor3"
				L_88_.CornerRadius = UDim.new(0, 4)
				L_88_.Parent = L_87_
				L_90_.Name = "viewInfo"
				L_90_.Parent = L_87_
				L_90_.BackgroundTransparency = 1.000
				L_90_.LayoutOrder = 9
				L_90_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_90_.Size = UDim2.new(0, 23, 0, 23)
				L_90_.ZIndex = 2
				L_90_.Image = "rbxassetid://3926305904"
				L_90_.ImageColor3 = L_25_arg2.SchemeColor
				L_7_[L_90_] = "ImageColor3"
				L_90_.ImageRectOffset = Vector2.new(764, 764)
				L_90_.ImageRectSize = Vector2.new(36, 36)
				L_92_.Name = "Sample"
				L_92_.Parent = L_87_
				L_92_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_92_.BackgroundTransparency = 1.000
				L_92_.Image = "http://www.roblox.com/asset/?id=4560909609"
				L_92_.ImageColor3 = L_25_arg2.SchemeColor
				L_7_[L_92_] = "ImageColor3"
				L_92_.ImageTransparency = 0.600
				local L_93_ = Instance.new("TextLabel")
				local L_94_ = Instance.new("UICorner")
				L_93_.Name = "TipMore"
				L_93_.Parent = L_42_
				L_93_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_93_.Position = UDim2.new(0, 0, 2, 0)
				L_93_.Size = UDim2.new(0, 353, 0, 33)
				L_93_.ZIndex = 9
				L_93_.Font = Enum.Font.GothamSemibold
				L_93_.Text = "  "..L_84_arg2
				L_93_.RichText = true
				L_93_.TextColor3 = L_25_arg2.TextColor
				L_7_[L_93_] = "TextColor3"
				L_93_.TextSize = 14.000
				L_93_.TextXAlignment = Enum.TextXAlignment.Left
				L_7_[L_93_] = "BackgroundColor3"
				L_94_.CornerRadius = UDim.new(0, 4)
				L_94_.Parent = L_93_
				L_91_.Name = "touch"
				L_91_.Parent = L_87_
				L_91_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_91_.BackgroundTransparency = 1.000
				L_91_.BorderColor3 = Color3.fromRGB(27, 42, 53)
				L_91_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_91_.Size = UDim2.new(0, 21, 0, 21)
				L_91_.Image = "rbxassetid://3926305904"
				L_91_.ImageColor3 = L_25_arg2.SchemeColor
				L_7_[L_91_] = "SchemeColor"
				L_91_.ImageRectOffset = Vector2.new(84, 204)
				L_91_.ImageRectSize = Vector2.new(36, 36)
				L_91_.ImageTransparency = 0
				L_89_.Name = "btnInfo"
				L_89_.Parent = L_87_
				L_89_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_89_.BackgroundTransparency = 1.000
				L_89_.Position = UDim2.new(0.096704483, 0, 0.272727281, 0)
				L_89_.Size = UDim2.new(0, 314, 0, 14)
				L_89_.Font = Enum.Font.GothamSemibold
				L_89_.Text = L_83_arg1
				L_89_.RichText = true
				L_89_.TextColor3 = L_25_arg2.TextColor
				L_7_[L_89_] = "TextColor3"
				L_89_.TextSize = 14.000
				L_89_.TextXAlignment = Enum.TextXAlignment.Left
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_93_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_93_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				L_75_func()
				L_55_func()
				local L_95_ = game.Players.LocalPlayer:GetMouse()
				local L_96_ = L_87_
				local L_97_ = L_92_
				L_96_.MouseButton1Click:Connect(function()
					if not L_57_ then
						L_85_arg3()
						local L_99_ = L_97_:Clone()
						L_99_.Parent = L_96_
						local L_100_, L_101_ = (L_95_.X - L_99_.AbsolutePosition.X), (L_95_.Y - L_99_.AbsolutePosition.Y)
						L_99_.Position = UDim2.new(0, L_100_, 0, L_101_)
						local L_102_, L_103_ = 0.35, nil
						if L_96_.AbsoluteSize.X >= L_96_.AbsoluteSize.Y then
							L_103_ = (L_96_.AbsoluteSize.X * 1.5)
						else
							L_103_ = (L_96_.AbsoluteSize.Y * 1.5)
						end
						L_99_:TweenSizeAndPosition(UDim2.new(0, L_103_, 0, L_103_), UDim2.new(0.5, (-L_103_ / 2), 0.5, (-L_103_ / 2)), 'Out', 'Quad', L_102_, true, nil)
						for L_104_forvar1 = 1, 10 do
							L_99_.ImageTransparency = L_99_.ImageTransparency + 0.05
							wait(L_102_ / 12)
						end
						L_99_:Destroy()
					else
						for L_105_forvar1, L_106_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_106_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				local L_98_ = false
				L_96_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_96_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_98_ = true
					end
				end)
				L_96_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_96_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_98_ = false
					end
				end)
				L_90_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_107_forvar1, L_108_forvar2 in next, L_42_:GetChildren() do
							if L_108_forvar2 ~= L_93_ then
								L_6_:TweenObject(L_108_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_93_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_96_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_93_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
				coroutine.wrap(function()
					while wait() do
						if not L_98_ then
							L_87_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_90_.ImageColor3 = L_25_arg2.SchemeColor
						L_92_.ImageColor3 = L_25_arg2.SchemeColor
						L_93_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
						L_93_.TextColor3 = L_25_arg2.TextColor
						L_91_.ImageColor3 = L_25_arg2.SchemeColor
						L_89_.TextColor3 = L_25_arg2.TextColor
					end
				end)()
				function L_86_:UpdateButton(L_109_arg1)
					L_89_.Text = L_109_arg1
				end
				return L_86_
			end
			function L_76_:NewTextBox(L_110_arg1, L_111_arg2, L_112_arg3)
				L_110_arg1 = L_110_arg1 or "Textbox"
				L_111_arg2 = L_111_arg2 or "Gets a value of Textbox"
				L_112_arg3 = L_112_arg3 or function()
				end
				local L_113_ = Instance.new("TextButton")
				local L_114_ = Instance.new("UICorner")
				local L_115_ = Instance.new("ImageButton")
				local L_116_ = Instance.new("ImageLabel")
				local L_117_ = Instance.new("TextBox")
				local L_118_ = Instance.new("UICorner")
				local L_119_ = Instance.new("TextLabel")
				L_113_.Name = "textboxElement"
				L_113_.Parent = L_73_
				L_113_.BackgroundColor3 = L_25_arg2.ElementColor
				L_113_.ClipsDescendants = true
				L_113_.Size = UDim2.new(0, 352, 0, 33)
				L_113_.AutoButtonColor = false
				L_113_.Font = Enum.Font.SourceSans
				L_113_.Text = ""
				L_113_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_113_.TextSize = 14.000
				L_114_.CornerRadius = UDim.new(0, 4)
				L_114_.Parent = L_113_
				L_115_.Name = "viewInfo"
				L_115_.Parent = L_113_
				L_115_.BackgroundTransparency = 1.000
				L_115_.LayoutOrder = 9
				L_115_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_115_.Size = UDim2.new(0, 23, 0, 23)
				L_115_.ZIndex = 2
				L_115_.Image = "rbxassetid://3926305904"
				L_115_.ImageColor3 = L_25_arg2.SchemeColor
				L_115_.ImageRectOffset = Vector2.new(764, 764)
				L_115_.ImageRectSize = Vector2.new(36, 36)
				L_116_.Name = "write"
				L_116_.Parent = L_113_
				L_116_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_116_.BackgroundTransparency = 1.000
				L_116_.BorderColor3 = Color3.fromRGB(27, 42, 53)
				L_116_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_116_.Size = UDim2.new(0, 21, 0, 21)
				L_116_.Image = "rbxassetid://3926305904"
				L_116_.ImageColor3 = L_25_arg2.SchemeColor
				L_116_.ImageRectOffset = Vector2.new(324, 604)
				L_116_.ImageRectSize = Vector2.new(36, 36)
				L_117_.Parent = L_113_
				L_117_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 - 6, L_25_arg2.ElementColor.g * 255 - 6, L_25_arg2.ElementColor.b * 255 - 7)
				L_117_.BorderSizePixel = 0
				L_117_.ClipsDescendants = true
				L_117_.Position = UDim2.new(0.488749921, 0, 0.212121218, 0)
				L_117_.Size = UDim2.new(0, 150, 0, 18)
				L_117_.ZIndex = 99
				L_117_.ClearTextOnFocus = false
				L_117_.Font = Enum.Font.Gotham
				L_117_.PlaceholderColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 19, L_25_arg2.SchemeColor.g * 255 - 26, L_25_arg2.SchemeColor.b * 255 - 35)
				L_117_.PlaceholderText = "Type here!"
				L_117_.Text = ""
				L_117_.TextColor3 = L_25_arg2.SchemeColor
				L_117_.TextSize = 12.000
				L_118_.CornerRadius = UDim.new(0, 4)
				L_118_.Parent = L_117_
				L_119_.Name = "togName"
				L_119_.Parent = L_113_
				L_119_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_119_.BackgroundTransparency = 1.000
				L_119_.Position = UDim2.new(0.096704483, 0, 0.272727281, 0)
				L_119_.Size = UDim2.new(0, 138, 0, 14)
				L_119_.Font = Enum.Font.GothamSemibold
				L_119_.Text = L_110_arg1
				L_119_.RichText = true
				L_119_.TextColor3 = L_25_arg2.TextColor
				L_119_.TextSize = 14.000
				L_119_.TextXAlignment = Enum.TextXAlignment.Left
				local L_120_ = Instance.new("TextLabel")
				local L_121_ = Instance.new("UICorner")
				L_120_.Name = "TipMore"
				L_120_.Parent = L_42_
				L_120_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_120_.Position = UDim2.new(0, 0, 2, 0)
				L_120_.Size = UDim2.new(0, 353, 0, 33)
				L_120_.ZIndex = 9
				L_120_.Font = Enum.Font.GothamSemibold
				L_120_.RichText = true
				L_120_.Text = "  "..L_111_arg2
				L_120_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_120_.TextSize = 14.000
				L_120_.TextXAlignment = Enum.TextXAlignment.Left
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_120_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_120_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				L_121_.CornerRadius = UDim.new(0, 4)
				L_121_.Parent = L_120_
				L_75_func()
				L_55_func()
				local L_122_ = L_113_
				local L_123_ = L_115_
				L_122_.MouseButton1Click:Connect(function()
					if L_57_ then
						for L_125_forvar1, L_126_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_126_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				local L_124_ = false
				L_122_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_122_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_124_ = true
					end
				end)
				L_122_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_122_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_124_ = false
					end
				end)
				L_117_.FocusLost:Connect(function(L_127_arg1)
					if L_57_ then
						for L_128_forvar1, L_129_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_129_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
					if not L_127_arg1 then
						return
					else
						L_112_arg3(L_117_.Text)
						wait(0.18)
						L_117_.Text = ""
					end
				end)
				L_115_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_130_forvar1, L_131_forvar2 in next, L_42_:GetChildren() do
							if L_131_forvar2 ~= L_120_ then
								L_6_:TweenObject(L_131_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_120_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_122_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_120_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
				coroutine.wrap(function()
					while wait() do
						if not L_124_ then
							L_113_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_117_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 - 6, L_25_arg2.ElementColor.g * 255 - 6, L_25_arg2.ElementColor.b * 255 - 7)
						L_115_.ImageColor3 = L_25_arg2.SchemeColor
						L_120_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
						L_120_.TextColor3 = L_25_arg2.TextColor
						L_116_.ImageColor3 = L_25_arg2.SchemeColor
						L_119_.TextColor3 = L_25_arg2.TextColor
						L_117_.PlaceholderColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 19, L_25_arg2.SchemeColor.g * 255 - 26, L_25_arg2.SchemeColor.b * 255 - 35)
						L_117_.TextColor3 = L_25_arg2.SchemeColor
					end
				end)()
			end
			function L_76_:NewToggle(L_132_arg1, L_133_arg2, L_134_arg3)
				local L_135_ = {}
				L_132_arg1 = L_132_arg1 or "Toggle"
				L_133_arg2 = L_133_arg2 or "Prints Current Toggle State"
				L_134_arg3 = L_134_arg3 or function()
				end
				local L_136_ = false
				local L_137_ = Instance.new("TextButton")
				local L_138_ = Instance.new("UICorner")
				local L_139_ = Instance.new("ImageLabel")
				local L_140_ = Instance.new("ImageLabel")
				local L_141_ = Instance.new("TextLabel")
				local L_142_ = Instance.new("ImageButton")
				local L_143_ = Instance.new("ImageLabel")
				L_137_.Name = "toggleElement"
				L_137_.Parent = L_73_
				L_137_.BackgroundColor3 = L_25_arg2.ElementColor
				L_137_.ClipsDescendants = true
				L_137_.Size = UDim2.new(0, 352, 0, 33)
				L_137_.AutoButtonColor = false
				L_137_.Font = Enum.Font.SourceSans
				L_137_.Text = ""
				L_137_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_137_.TextSize = 14.000
				L_138_.CornerRadius = UDim.new(0, 4)
				L_138_.Parent = L_137_
				L_139_.Name = "toggleDisabled"
				L_139_.Parent = L_137_
				L_139_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_139_.BackgroundTransparency = 1.000
				L_139_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_139_.Size = UDim2.new(0, 21, 0, 21)
				L_139_.Image = "rbxassetid://3926309567"
				L_139_.ImageColor3 = L_25_arg2.SchemeColor
				L_139_.ImageRectOffset = Vector2.new(628, 420)
				L_139_.ImageRectSize = Vector2.new(48, 48)
				L_140_.Name = "toggleEnabled"
				L_140_.Parent = L_137_
				L_140_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_140_.BackgroundTransparency = 1.000
				L_140_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_140_.Size = UDim2.new(0, 21, 0, 21)
				L_140_.Image = "rbxassetid://3926309567"
				L_140_.ImageColor3 = L_25_arg2.SchemeColor
				L_140_.ImageRectOffset = Vector2.new(784, 420)
				L_140_.ImageRectSize = Vector2.new(48, 48)
				L_140_.ImageTransparency = 1.000
				L_141_.Name = "togName"
				L_141_.Parent = L_137_
				L_141_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_141_.BackgroundTransparency = 1.000
				L_141_.Position = UDim2.new(0.096704483, 0, 0.272727281, 0)
				L_141_.Size = UDim2.new(0, 288, 0, 14)
				L_141_.Font = Enum.Font.GothamSemibold
				L_141_.Text = L_132_arg1
				L_141_.RichText = true
				L_141_.TextColor3 = L_25_arg2.TextColor
				L_141_.TextSize = 14.000
				L_141_.TextXAlignment = Enum.TextXAlignment.Left
				L_142_.Name = "viewInfo"
				L_142_.Parent = L_137_
				L_142_.BackgroundTransparency = 1.000
				L_142_.LayoutOrder = 9
				L_142_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_142_.Size = UDim2.new(0, 23, 0, 23)
				L_142_.ZIndex = 2
				L_142_.Image = "rbxassetid://3926305904"
				L_142_.ImageColor3 = L_25_arg2.SchemeColor
				L_142_.ImageRectOffset = Vector2.new(764, 764)
				L_142_.ImageRectSize = Vector2.new(36, 36)
				L_143_.Name = "Sample"
				L_143_.Parent = L_137_
				L_143_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_143_.BackgroundTransparency = 1.000
				L_143_.Image = "http://www.roblox.com/asset/?id=4560909609"
				L_143_.ImageColor3 = L_25_arg2.SchemeColor
				L_143_.ImageTransparency = 0.600
				local L_144_ = Instance.new("TextLabel")
				local L_145_ = Instance.new("UICorner")
				L_144_.Name = "TipMore"
				L_144_.Parent = L_42_
				L_144_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_144_.Position = UDim2.new(0, 0, 2, 0)
				L_144_.Size = UDim2.new(0, 353, 0, 33)
				L_144_.ZIndex = 9
				L_144_.Font = Enum.Font.GothamSemibold
				L_144_.RichText = true
				L_144_.Text = "  "..L_133_arg2
				L_144_.TextColor3 = L_25_arg2.TextColor
				L_144_.TextSize = 14.000
				L_144_.TextXAlignment = Enum.TextXAlignment.Left
				L_145_.CornerRadius = UDim.new(0, 4)
				L_145_.Parent = L_144_
				local L_146_ = game.Players.LocalPlayer:GetMouse()
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_144_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_144_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				local L_147_ = L_137_
				local L_148_ = L_143_
				local L_149_ = L_140_
				local L_150_ = L_142_
				L_75_func()
				L_55_func()
				L_147_.MouseButton1Click:Connect(function()
					if not L_57_ then
						if L_136_ == false then
							game.TweenService:Create(L_149_, TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
								ImageTransparency = 0
							}):Play()
							local L_152_ = L_148_:Clone()
							L_152_.Parent = L_147_
							local L_153_, L_154_ = (L_146_.X - L_152_.AbsolutePosition.X), (L_146_.Y - L_152_.AbsolutePosition.Y)
							L_152_.Position = UDim2.new(0, L_153_, 0, L_154_)
							local L_155_, L_156_ = 0.35, nil
							if L_147_.AbsoluteSize.X >= L_147_.AbsoluteSize.Y then
								L_156_ = (L_147_.AbsoluteSize.X * 1.5)
							else
								L_156_ = (L_147_.AbsoluteSize.Y * 1.5)
							end
							L_152_:TweenSizeAndPosition(UDim2.new(0, L_156_, 0, L_156_), UDim2.new(0.5, (-L_156_ / 2), 0.5, (-L_156_ / 2)), 'Out', 'Quad', L_155_, true, nil)
							for L_157_forvar1 = 1, 10 do
								L_152_.ImageTransparency = L_152_.ImageTransparency + 0.05
								wait(L_155_ / 12)
							end
							L_152_:Destroy()
						else
							game.TweenService:Create(L_149_, TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
								ImageTransparency = 1
							}):Play()
							local L_158_ = L_148_:Clone()
							L_158_.Parent = L_147_
							local L_159_, L_160_ = (L_146_.X - L_158_.AbsolutePosition.X), (L_146_.Y - L_158_.AbsolutePosition.Y)
							L_158_.Position = UDim2.new(0, L_159_, 0, L_160_)
							local L_161_, L_162_ = 0.35, nil
							if L_147_.AbsoluteSize.X >= L_147_.AbsoluteSize.Y then
								L_162_ = (L_147_.AbsoluteSize.X * 1.5)
							else
								L_162_ = (L_147_.AbsoluteSize.Y * 1.5)
							end
							L_158_:TweenSizeAndPosition(UDim2.new(0, L_162_, 0, L_162_), UDim2.new(0.5, (-L_162_ / 2), 0.5, (-L_162_ / 2)), 'Out', 'Quad', L_161_, true, nil)
							for L_163_forvar1 = 1, 10 do
								L_158_.ImageTransparency = L_158_.ImageTransparency + 0.05
								wait(L_161_ / 12)
							end
							L_158_:Destroy()
						end
						L_136_ = not L_136_
						pcall(L_134_arg3, L_136_)
					else
						for L_164_forvar1, L_165_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_165_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				local L_151_ = false
				L_147_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_147_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_151_ = true
					end
				end)
				L_147_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_147_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_151_ = false
					end
				end)
				coroutine.wrap(function()
					while wait() do
						if not L_151_ then
							L_137_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_139_.ImageColor3 = L_25_arg2.SchemeColor
						L_140_.ImageColor3 = L_25_arg2.SchemeColor
						L_141_.TextColor3 = L_25_arg2.TextColor
						L_142_.ImageColor3 = L_25_arg2.SchemeColor
						L_143_.ImageColor3 = L_25_arg2.SchemeColor
						L_144_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
						L_144_.TextColor3 = L_25_arg2.TextColor
					end
				end)()
				L_142_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_166_forvar1, L_167_forvar2 in next, L_42_:GetChildren() do
							if L_167_forvar2 ~= L_144_ then
								L_6_:TweenObject(L_167_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_144_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_147_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_144_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
				function L_135_:UpdateToggle(L_168_arg1, L_169_arg2)
					if L_168_arg1 ~= nil then
						L_141_.Text = L_168_arg1
					end
					if L_169_arg2 then
						L_136_ = true
						game.TweenService:Create(L_149_, TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							ImageTransparency = 0
						}):Play()
						pcall(L_134_arg3, L_136_)
					else
						L_136_ = false
						game.TweenService:Create(L_149_, TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							ImageTransparency = 1
						}):Play()
						pcall(L_134_arg3, L_136_)
					end
				end
				return L_135_
			end
			function L_76_:NewSlider(L_170_arg1, L_171_arg2, L_172_arg3, L_173_arg4, L_174_arg5)
				L_170_arg1 = L_170_arg1 or "Slider"
				L_171_arg2 = L_171_arg2 or "Slider tip here"
				L_172_arg3 = L_172_arg3 or 500
				L_173_arg4 = L_173_arg4 or 16
				L_174_arg5 = L_174_arg5 or function()
				end
				local L_175_ = Instance.new("TextButton")
				local L_176_ = Instance.new("UICorner")
				local L_177_ = Instance.new("TextLabel")
				local L_178_ = Instance.new("ImageButton")
				local L_179_ = Instance.new("TextButton")
				local L_180_ = Instance.new("UICorner")
				local L_181_ = Instance.new("UIListLayout")
				local L_182_ = Instance.new("Frame")
				local L_183_ = Instance.new("UICorner")
				local L_184_ = Instance.new("ImageLabel")
				local L_185_ = Instance.new("TextLabel")
				L_175_.Name = "sliderElement"
				L_175_.Parent = L_73_
				L_175_.BackgroundColor3 = L_25_arg2.ElementColor
				L_175_.ClipsDescendants = true
				L_175_.Size = UDim2.new(0, 352, 0, 33)
				L_175_.AutoButtonColor = false
				L_175_.Font = Enum.Font.SourceSans
				L_175_.Text = ""
				L_175_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_175_.TextSize = 14.000
				L_176_.CornerRadius = UDim.new(0, 4)
				L_176_.Parent = L_175_
				L_177_.Name = "togName"
				L_177_.Parent = L_175_
				L_177_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_177_.BackgroundTransparency = 1.000
				L_177_.Position = UDim2.new(0.096704483, 0, 0.272727281, 0)
				L_177_.Size = UDim2.new(0, 138, 0, 14)
				L_177_.Font = Enum.Font.GothamSemibold
				L_177_.Text = L_170_arg1
				L_177_.RichText = true
				L_177_.TextColor3 = L_25_arg2.TextColor
				L_177_.TextSize = 14.000
				L_177_.TextXAlignment = Enum.TextXAlignment.Left
				L_178_.Name = "viewInfo"
				L_178_.Parent = L_175_
				L_178_.BackgroundTransparency = 1.000
				L_178_.LayoutOrder = 9
				L_178_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_178_.Size = UDim2.new(0, 23, 0, 23)
				L_178_.ZIndex = 2
				L_178_.Image = "rbxassetid://3926305904"
				L_178_.ImageColor3 = L_25_arg2.SchemeColor
				L_178_.ImageRectOffset = Vector2.new(764, 764)
				L_178_.ImageRectSize = Vector2.new(36, 36)
				L_179_.Name = "sliderBtn"
				L_179_.Parent = L_175_
				L_179_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 5, L_25_arg2.ElementColor.g * 255 + 5, L_25_arg2.ElementColor.b * 255 + 5)
				L_179_.BorderSizePixel = 0
				L_179_.Position = UDim2.new(0.488749951, 0, 0.393939406, 0)
				L_179_.Size = UDim2.new(0, 149, 0, 6)
				L_179_.AutoButtonColor = false
				L_179_.Font = Enum.Font.SourceSans
				L_179_.Text = ""
				L_179_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_179_.TextSize = 14.000
				L_180_.Parent = L_179_
				L_181_.Parent = L_179_
				L_181_.SortOrder = Enum.SortOrder.LayoutOrder
				L_181_.VerticalAlignment = Enum.VerticalAlignment.Center
				L_182_.Name = "sliderDrag"
				L_182_.Parent = L_179_
				L_182_.BackgroundColor3 = L_25_arg2.SchemeColor
				L_182_.BorderColor3 = Color3.fromRGB(74, 99, 135)
				L_182_.BorderSizePixel = 0
				L_182_.Size = UDim2.new(-0.671140969, 100, 1, 0)
				L_183_.Parent = L_182_
				L_184_.Name = "write"
				L_184_.Parent = L_175_
				L_184_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_184_.BackgroundTransparency = 1.000
				L_184_.BorderColor3 = Color3.fromRGB(27, 42, 53)
				L_184_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_184_.Size = UDim2.new(0, 21, 0, 21)
				L_184_.Image = "rbxassetid://3926307971"
				L_184_.ImageColor3 = L_25_arg2.SchemeColor
				L_184_.ImageRectOffset = Vector2.new(404, 164)
				L_184_.ImageRectSize = Vector2.new(36, 36)
				L_185_.Name = "val"
				L_185_.Parent = L_175_
				L_185_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_185_.BackgroundTransparency = 1.000
				L_185_.Position = UDim2.new(0.352386296, 0, 0.272727281, 0)
				L_185_.Size = UDim2.new(0, 41, 0, 14)
				L_185_.Font = Enum.Font.GothamSemibold
				L_185_.Text = L_173_arg4
				L_185_.TextColor3 = L_25_arg2.TextColor
				L_185_.TextSize = 14.000
				L_185_.TextTransparency = 1.000
				L_185_.TextXAlignment = Enum.TextXAlignment.Right
				local L_186_ = Instance.new("TextLabel")
				local L_187_ = Instance.new("UICorner")
				L_186_.Name = "TipMore"
				L_186_.Parent = L_42_
				L_186_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_186_.Position = UDim2.new(0, 0, 2, 0)
				L_186_.Size = UDim2.new(0, 353, 0, 33)
				L_186_.ZIndex = 9
				L_186_.Font = Enum.Font.GothamSemibold
				L_186_.Text = "  "..L_171_arg2
				L_186_.TextColor3 = L_25_arg2.TextColor
				L_186_.TextSize = 14.000
				L_186_.RichText = true
				L_186_.TextXAlignment = Enum.TextXAlignment.Left
				L_187_.CornerRadius = UDim.new(0, 4)
				L_187_.Parent = L_186_
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_186_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_186_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				L_75_func()
				L_55_func()
				local L_188_ = game:GetService("Players").LocalPlayer:GetMouse()
				local L_189_ = game.Players.LocalPlayer:GetMouse()
				local L_190_ = game:GetService("UserInputService")
				local L_191_ = L_175_
				local L_192_ = L_178_
				local L_193_ = false
				L_191_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_191_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_193_ = true
					end
				end)
				L_191_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_191_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_193_ = false
					end
				end)
				coroutine.wrap(function()
					while wait() do
						if not L_193_ then
							L_175_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_186_.TextColor3 = L_25_arg2.TextColor
						L_186_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
						L_185_.TextColor3 = L_25_arg2.TextColor
						L_184_.ImageColor3 = L_25_arg2.SchemeColor
						L_177_.TextColor3 = L_25_arg2.TextColor
						L_178_.ImageColor3 = L_25_arg2.SchemeColor
						L_179_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 5, L_25_arg2.ElementColor.g * 255 + 5, L_25_arg2.ElementColor.b * 255 + 5)
						L_182_.BackgroundColor3 = L_25_arg2.SchemeColor
					end
				end)()
				local L_194_, L_195_, L_196_
				L_179_.MouseButton1Down:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_185_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							TextTransparency = 0
						}):Play()
						L_194_ = math.floor((((tonumber(L_172_arg3) - tonumber(L_173_arg4)) / 149) * L_182_.AbsoluteSize.X) + tonumber(L_173_arg4)) or 0
						pcall(function()
							L_174_arg5(L_194_)
						end)
						L_182_:TweenSize(UDim2.new(0, math.clamp(L_188_.X - L_182_.AbsolutePosition.X, 0, 149), 0, 6), "InOut", "Linear", 0.05, true)
						L_195_ = L_188_.Move:Connect(function()
							L_185_.Text = L_194_
							L_194_ = math.floor((((tonumber(L_172_arg3) - tonumber(L_173_arg4)) / 149) * L_182_.AbsoluteSize.X) + tonumber(L_173_arg4))
							pcall(function()
								L_174_arg5(L_194_)
							end)
							L_182_:TweenSize(UDim2.new(0, math.clamp(L_188_.X - L_182_.AbsolutePosition.X, 0, 149), 0, 6), "InOut", "Linear", 0.05, true)
						end)
						L_196_ = L_190_.InputEnded:Connect(function(L_197_arg1)
							if L_197_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
								L_194_ = math.floor((((tonumber(L_172_arg3) - tonumber(L_173_arg4)) / 149) * L_182_.AbsoluteSize.X) + tonumber(L_173_arg4))
								pcall(function()
									L_174_arg5(L_194_)
								end)
								L_185_.Text = L_194_
								game.TweenService:Create(L_185_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
									TextTransparency = 1
								}):Play()
								L_182_:TweenSize(UDim2.new(0, math.clamp(L_188_.X - L_182_.AbsolutePosition.X, 0, 149), 0, 6), "InOut", "Linear", 0.05, true)
								L_195_:Disconnect()
								L_196_:Disconnect()
							end
						end)
					else
						for L_198_forvar1, L_199_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_199_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				L_178_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_200_forvar1, L_201_forvar2 in next, L_42_:GetChildren() do
							if L_201_forvar2 ~= L_186_ then
								L_6_:TweenObject(L_201_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_186_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_191_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_186_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
			end
			function L_76_:NewDropdown(L_202_arg1, L_203_arg2, L_204_arg3, L_205_arg4)
				local L_206_ = {}
				L_202_arg1 = L_202_arg1 or "Dropdown"
				L_204_arg3 = L_204_arg3 or {}
				L_203_arg2 = L_203_arg2 or "Dropdown info"
				L_205_arg4 = L_205_arg4 or function()
				end
				local L_207_ = false
				local L_208_ = 33
				local L_209_ = Instance.new("Frame")
				local L_210_ = Instance.new("TextButton")
				local L_211_ = Instance.new("ImageLabel")
				local L_212_ = Instance.new("TextLabel")
				local L_213_ = Instance.new("ImageButton")
				local L_214_ = Instance.new("UICorner")
				local L_215_ = Instance.new("UIListLayout")
				local L_216_ = Instance.new("ImageLabel")
				local L_217_ = game.Players.LocalPlayer:GetMouse()
				L_216_.Name = "Sample"
				L_216_.Parent = L_210_
				L_216_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_216_.BackgroundTransparency = 1.000
				L_216_.Image = "http://www.roblox.com/asset/?id=4560909609"
				L_216_.ImageColor3 = L_25_arg2.SchemeColor
				L_216_.ImageTransparency = 0.600
				L_209_.Name = "dropFrame"
				L_209_.Parent = L_73_
				L_209_.BackgroundColor3 = L_25_arg2.Background
				L_209_.BorderSizePixel = 0
				L_209_.Position = UDim2.new(0, 0, 1.23571432, 0)
				L_209_.Size = UDim2.new(0, 352, 0, 33)
				L_209_.ClipsDescendants = true
				local L_218_ = L_216_
				local L_219_ = L_210_
				L_210_.Name = "dropOpen"
				L_210_.Parent = L_209_
				L_210_.BackgroundColor3 = L_25_arg2.ElementColor
				L_210_.Size = UDim2.new(0, 352, 0, 33)
				L_210_.AutoButtonColor = false
				L_210_.Font = Enum.Font.SourceSans
				L_210_.Text = ""
				L_210_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_210_.TextSize = 14.000
				L_210_.ClipsDescendants = true
				L_210_.MouseButton1Click:Connect(function()
					if not L_57_ then
						if L_207_ then
							L_207_ = false
							L_209_:TweenSize(UDim2.new(0, 352, 0, 33), "InOut", "Linear", 0.08)
							wait(0.1)
							L_75_func()
							L_55_func()
							local L_228_ = L_218_:Clone()
							L_228_.Parent = L_219_
							local L_229_, L_230_ = (L_217_.X - L_228_.AbsolutePosition.X), (L_217_.Y - L_228_.AbsolutePosition.Y)
							L_228_.Position = UDim2.new(0, L_229_, 0, L_230_)
							local L_231_, L_232_ = 0.35, nil
							if L_219_.AbsoluteSize.X >= L_219_.AbsoluteSize.Y then
								L_232_ = (L_219_.AbsoluteSize.X * 1.5)
							else
								L_232_ = (L_219_.AbsoluteSize.Y * 1.5)
							end
							L_228_:TweenSizeAndPosition(UDim2.new(0, L_232_, 0, L_232_), UDim2.new(0.5, (-L_232_ / 2), 0.5, (-L_232_ / 2)), 'Out', 'Quad', L_231_, true, nil)
							for L_233_forvar1 = 1, 10 do
								L_228_.ImageTransparency = L_228_.ImageTransparency + 0.05
								wait(L_231_ / 12)
							end
							L_228_:Destroy()
						else
							L_207_ = true
							L_209_:TweenSize(UDim2.new(0, 352, 0, L_215_.AbsoluteContentSize.Y), "InOut", "Linear", 0.08, true)
							wait(0.1)
							L_75_func()
							L_55_func()
							local L_234_ = L_218_:Clone()
							L_234_.Parent = L_219_
							local L_235_, L_236_ = (L_217_.X - L_234_.AbsolutePosition.X), (L_217_.Y - L_234_.AbsolutePosition.Y)
							L_234_.Position = UDim2.new(0, L_235_, 0, L_236_)
							local L_237_, L_238_ = 0.35, nil
							if L_219_.AbsoluteSize.X >= L_219_.AbsoluteSize.Y then
								L_238_ = (L_219_.AbsoluteSize.X * 1.5)
							else
								L_238_ = (L_219_.AbsoluteSize.Y * 1.5)
							end
							L_234_:TweenSizeAndPosition(UDim2.new(0, L_238_, 0, L_238_), UDim2.new(0.5, (-L_238_ / 2), 0.5, (-L_238_ / 2)), 'Out', 'Quad', L_237_, true, nil)
							for L_239_forvar1 = 1, 10 do
								L_234_.ImageTransparency = L_234_.ImageTransparency + 0.05
								wait(L_237_ / 12)
							end
							L_234_:Destroy()
						end
					else
						for L_240_forvar1, L_241_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_241_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				L_211_.Name = "listImg"
				L_211_.Parent = L_210_
				L_211_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_211_.BackgroundTransparency = 1.000
				L_211_.BorderColor3 = Color3.fromRGB(27, 42, 53)
				L_211_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_211_.Size = UDim2.new(0, 21, 0, 21)
				L_211_.Image = "rbxassetid://3926305904"
				L_211_.ImageColor3 = L_25_arg2.SchemeColor
				L_211_.ImageRectOffset = Vector2.new(644, 364)
				L_211_.ImageRectSize = Vector2.new(36, 36)
				L_212_.Name = "itemTextbox"
				L_212_.Parent = L_210_
				L_212_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_212_.BackgroundTransparency = 1.000
				L_212_.Position = UDim2.new(0.0970000029, 0, 0.273000002, 0)
				L_212_.Size = UDim2.new(0, 138, 0, 14)
				L_212_.Font = Enum.Font.GothamSemibold
				L_212_.Text = L_202_arg1
				L_212_.RichText = true
				L_212_.TextColor3 = L_25_arg2.TextColor
				L_212_.TextSize = 14.000
				L_212_.TextXAlignment = Enum.TextXAlignment.Left
				L_213_.Name = "viewInfo"
				L_213_.Parent = L_210_
				L_213_.BackgroundTransparency = 1.000
				L_213_.LayoutOrder = 9
				L_213_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_213_.Size = UDim2.new(0, 23, 0, 23)
				L_213_.ZIndex = 2
				L_213_.Image = "rbxassetid://3926305904"
				L_213_.ImageColor3 = L_25_arg2.SchemeColor
				L_213_.ImageRectOffset = Vector2.new(764, 764)
				L_213_.ImageRectSize = Vector2.new(36, 36)
				L_214_.CornerRadius = UDim.new(0, 4)
				L_214_.Parent = L_210_
				local L_220_ = Instance.new("ImageLabel")
				L_220_.Name = "Sample"
				L_220_.Parent = L_210_
				L_220_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_220_.BackgroundTransparency = 1.000
				L_220_.Image = "http://www.roblox.com/asset/?id=4560909609"
				L_220_.ImageColor3 = L_25_arg2.SchemeColor
				L_220_.ImageTransparency = 0.600
				L_215_.Parent = L_209_
				L_215_.SortOrder = Enum.SortOrder.LayoutOrder
				L_215_.Padding = UDim.new(0, 3)
				L_75_func()
				L_55_func()
				local L_221_ = game.Players.LocalPlayer:GetMouse()
				local L_222_ = game:GetService("UserInputService")
				local L_223_ = L_213_
				local L_224_ = Instance.new("TextLabel")
				local L_225_ = Instance.new("UICorner")
				L_224_.Name = "TipMore"
				L_224_.Parent = L_42_
				L_224_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_224_.Position = UDim2.new(0, 0, 2, 0)
				L_224_.Size = UDim2.new(0, 353, 0, 33)
				L_224_.ZIndex = 9
				L_224_.RichText = true
				L_224_.Font = Enum.Font.GothamSemibold
				L_224_.Text = "  "..L_203_arg2
				L_224_.TextColor3 = L_25_arg2.TextColor
				L_224_.TextSize = 14.000
				L_224_.TextXAlignment = Enum.TextXAlignment.Left
				local L_226_ = false
				L_219_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_219_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_226_ = true
					end
				end)
				L_219_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_219_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_226_ = false
					end
				end)
				coroutine.wrap(function()
					while wait() do
						if not L_226_ then
							L_210_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_220_.ImageColor3 = L_25_arg2.SchemeColor
						L_209_.BackgroundColor3 = L_25_arg2.Background
						L_211_.ImageColor3 = L_25_arg2.SchemeColor
						L_212_.TextColor3 = L_25_arg2.TextColor
						L_213_.ImageColor3 = L_25_arg2.SchemeColor
						L_224_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
						L_224_.TextColor3 = L_25_arg2.TextColor
					end
				end)()
				L_225_.CornerRadius = UDim.new(0, 4)
				L_225_.Parent = L_224_
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_224_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_224_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				L_213_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_242_forvar1, L_243_forvar2 in next, L_42_:GetChildren() do
							if L_243_forvar2 ~= L_224_ then
								L_6_:TweenObject(L_243_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_224_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_219_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_224_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
				local L_227_
				for L_244_forvar1, L_245_forvar2 in next, L_204_arg3 do
					local L_246_ = Instance.new("TextButton")
					local L_247_ = Instance.new("UICorner")
					local L_248_ = Instance.new("ImageLabel")
					local L_249_ = game.Players.LocalPlayer:GetMouse()
					L_248_.Name = "Sample1"
					L_248_.Parent = L_246_
					L_248_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					L_248_.BackgroundTransparency = 1.000
					L_248_.Image = "http://www.roblox.com/asset/?id=4560909609"
					L_248_.ImageColor3 = L_25_arg2.SchemeColor
					L_248_.ImageTransparency = 0.600
					local L_250_ = L_248_
					L_208_ = L_208_ + 33
					L_246_.Name = "optionSelect"
					L_246_.Parent = L_209_
					L_246_.BackgroundColor3 = L_25_arg2.ElementColor
					L_246_.Position = UDim2.new(0, 0, 0.235294119, 0)
					L_246_.Size = UDim2.new(0, 352, 0, 33)
					L_246_.AutoButtonColor = false
					L_246_.Font = Enum.Font.GothamSemibold
					L_246_.Text = "  "..L_245_forvar2
					L_246_.TextColor3 = Color3.fromRGB(L_25_arg2.TextColor.r * 255 - 6, L_25_arg2.TextColor.g * 255 - 6, L_25_arg2.TextColor.b * 255 - 6)
					L_246_.TextSize = 14.000
					L_246_.TextXAlignment = Enum.TextXAlignment.Left
					L_246_.ClipsDescendants = true
					L_246_.MouseButton1Click:Connect(function()
						if not L_57_ then
							L_207_ = false
							L_205_arg4(L_245_forvar2)
							L_212_.Text = L_245_forvar2
							L_209_:TweenSize(UDim2.new(0, 352, 0, 33), 'InOut', 'Linear', 0.08)
							wait(0.1)
							L_75_func()
							L_55_func()
							local L_251_ = L_250_:Clone()
							L_251_.Parent = L_246_
							local L_252_, L_253_ = (L_249_.X - L_251_.AbsolutePosition.X), (L_249_.Y - L_251_.AbsolutePosition.Y)
							L_251_.Position = UDim2.new(0, L_252_, 0, L_253_)
							local L_254_, L_255_ = 0.35, nil
							if L_246_.AbsoluteSize.X >= L_246_.AbsoluteSize.Y then
								L_255_ = (L_246_.AbsoluteSize.X * 1.5)
							else
								L_255_ = (L_246_.AbsoluteSize.Y * 1.5)
							end
							L_251_:TweenSizeAndPosition(UDim2.new(0, L_255_, 0, L_255_), UDim2.new(0.5, (-L_255_ / 2), 0.5, (-L_255_ / 2)), 'Out', 'Quad', L_254_, true, nil)
							for L_256_forvar1 = 1, 10 do
								L_251_.ImageTransparency = L_251_.ImageTransparency + 0.05
								wait(L_254_ / 12)
							end
							L_251_:Destroy()
						else
							for L_257_forvar1, L_258_forvar2 in next, L_42_:GetChildren() do
								L_6_:TweenObject(L_258_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
								L_57_ = false
							end
							L_6_:TweenObject(L_43_, {
								BackgroundTransparency = 1
							}, 0.2)
						end
					end)
					L_247_.CornerRadius = UDim.new(0, 4)
					L_247_.Parent = L_246_
					L_227_ = false
					L_246_.MouseEnter:Connect(function()
						if not L_57_ then
							game.TweenService:Create(L_246_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
								BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
							}):Play()
							L_227_ = true
						end
					end)
					L_246_.MouseLeave:Connect(function()
						if not L_57_ then
							game.TweenService:Create(L_246_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
								BackgroundColor3 = L_25_arg2.ElementColor
							}):Play()
							L_227_ = false
						end
					end)
					coroutine.wrap(function()
						while wait() do
							if not L_227_ then
								L_246_.BackgroundColor3 = L_25_arg2.ElementColor
							end
							L_246_.TextColor3 = Color3.fromRGB(L_25_arg2.TextColor.r * 255 - 6, L_25_arg2.TextColor.g * 255 - 6, L_25_arg2.TextColor.b * 255 - 6)
							L_248_.ImageColor3 = L_25_arg2.SchemeColor
						end
					end)()
				end
				function L_206_:Refresh(L_259_arg1)
					L_259_arg1 = L_259_arg1 or {}
					for L_260_forvar1, L_261_forvar2 in next, L_209_:GetChildren() do
						if L_261_forvar2.Name == "optionSelect" then
							L_261_forvar2:Destroy()
						end
					end
					for L_262_forvar1, L_263_forvar2 in next, L_259_arg1 do
						local L_264_ = Instance.new("TextButton")
						local L_265_ = Instance.new("UICorner")
						local L_266_ = Instance.new("ImageLabel")
						local L_267_ = game.Players.LocalPlayer:GetMouse()
						L_266_.Name = "Sample11"
						L_266_.Parent = L_264_
						L_266_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						L_266_.BackgroundTransparency = 1.000
						L_266_.Image = "http://www.roblox.com/asset/?id=4560909609"
						L_266_.ImageColor3 = L_25_arg2.SchemeColor
						L_266_.ImageTransparency = 0.600
						local L_268_ = L_266_
						L_208_ = L_208_ + 33
						L_264_.Name = "optionSelect"
						L_264_.Parent = L_209_
						L_264_.BackgroundColor3 = L_25_arg2.ElementColor
						L_264_.Position = UDim2.new(0, 0, 0.235294119, 0)
						L_264_.Size = UDim2.new(0, 352, 0, 33)
						L_264_.AutoButtonColor = false
						L_264_.Font = Enum.Font.GothamSemibold
						L_264_.Text = "  "..L_263_forvar2
						L_264_.TextColor3 = Color3.fromRGB(L_25_arg2.TextColor.r * 255 - 6, L_25_arg2.TextColor.g * 255 - 6, L_25_arg2.TextColor.b * 255 - 6)
						L_264_.TextSize = 14.000
						L_264_.TextXAlignment = Enum.TextXAlignment.Left
						L_264_.ClipsDescendants = true
						L_265_.CornerRadius = UDim.new(0, 4)
						L_265_.Parent = L_264_
						L_264_.MouseButton1Click:Connect(function()
							if not L_57_ then
								L_207_ = false
								L_205_arg4(L_263_forvar2)
								L_212_.Text = L_263_forvar2
								L_209_:TweenSize(UDim2.new(0, 352, 0, 33), 'InOut', 'Linear', 0.08)
								wait(0.1)
								L_75_func()
								L_55_func()
								local L_270_ = L_268_:Clone()
								L_270_.Parent = L_264_
								local L_271_, L_272_ = (L_267_.X - L_270_.AbsolutePosition.X), (L_267_.Y - L_270_.AbsolutePosition.Y)
								L_270_.Position = UDim2.new(0, L_271_, 0, L_272_)
								local L_273_, L_274_ = 0.35, nil
								if L_264_.AbsoluteSize.X >= L_264_.AbsoluteSize.Y then
									L_274_ = (L_264_.AbsoluteSize.X * 1.5)
								else
									L_274_ = (L_264_.AbsoluteSize.Y * 1.5)
								end
								L_270_:TweenSizeAndPosition(UDim2.new(0, L_274_, 0, L_274_), UDim2.new(0.5, (-L_274_ / 2), 0.5, (-L_274_ / 2)), 'Out', 'Quad', L_273_, true, nil)
								for L_275_forvar1 = 1, 10 do
									L_270_.ImageTransparency = L_270_.ImageTransparency + 0.05
									wait(L_273_ / 12)
								end
								L_270_:Destroy()
							else
								for L_276_forvar1, L_277_forvar2 in next, L_42_:GetChildren() do
									L_6_:TweenObject(L_277_forvar2, {
										Position = UDim2.new(0, 0, 2, 0)
									}, 0.2)
									L_57_ = false
								end
								L_6_:TweenObject(L_43_, {
									BackgroundTransparency = 1
								}, 0.2)
							end
						end)
						L_75_func()
						L_55_func()
						local L_269_ = false
						L_264_.MouseEnter:Connect(function()
							if not L_57_ then
								game.TweenService:Create(L_264_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
									BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
								}):Play()
								L_269_ = true
							end
						end)
						L_264_.MouseLeave:Connect(function()
							if not L_57_ then
								game.TweenService:Create(L_264_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
									BackgroundColor3 = L_25_arg2.ElementColor
								}):Play()
								L_269_ = false
							end
						end)
						coroutine.wrap(function()
							while wait() do
								if not L_227_ then
									L_264_.BackgroundColor3 = L_25_arg2.ElementColor
								end
								L_264_.TextColor3 = Color3.fromRGB(L_25_arg2.TextColor.r * 255 - 6, L_25_arg2.TextColor.g * 255 - 6, L_25_arg2.TextColor.b * 255 - 6)
								L_266_.ImageColor3 = L_25_arg2.SchemeColor
							end
						end)()
					end
					if L_207_ then
						L_209_:TweenSize(UDim2.new(0, 352, 0, L_215_.AbsoluteContentSize.Y), "InOut", "Linear", 0.08, true)
						wait(0.1)
						L_75_func()
						L_55_func()
					else
						L_209_:TweenSize(UDim2.new(0, 352, 0, 33), "InOut", "Linear", 0.08)
						wait(0.1)
						L_75_func()
						L_55_func()
					end
				end
				return L_206_
			end
			function L_76_:NewKeybind(L_278_arg1, L_279_arg2, L_280_arg3, L_281_arg4)
				L_278_arg1 = L_278_arg1 or "KeybindText"
				L_279_arg2 = L_279_arg2 or "KebindInfo"
				L_281_arg4 = L_281_arg4 or function()
				end
				local L_282_ = L_280_arg3.Name
				local L_283_ = Instance.new("TextButton")
				local L_284_ = Instance.new("UICorner")
				local L_285_ = Instance.new("TextLabel")
				local L_286_ = Instance.new("ImageButton")
				local L_287_ = Instance.new("ImageLabel")
				local L_288_ = Instance.new("ImageLabel")
				local L_289_ = Instance.new("TextLabel")
				local L_290_ = game.Players.LocalPlayer:GetMouse()
				local L_291_ = game:GetService("UserInputService")
				local L_292_ = L_286_
				local L_293_ = Instance.new("TextLabel")
				local L_294_ = Instance.new("UICorner")
				local L_295_ = L_288_
				L_283_.Name = "keybindElement"
				L_283_.Parent = L_73_
				L_283_.BackgroundColor3 = L_25_arg2.ElementColor
				L_283_.ClipsDescendants = true
				L_283_.Size = UDim2.new(0, 352, 0, 33)
				L_283_.AutoButtonColor = false
				L_283_.Font = Enum.Font.SourceSans
				L_283_.Text = ""
				L_283_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_283_.TextSize = 14.000
				L_283_.MouseButton1Click:connect(function(L_297_arg1)
					if not L_57_ then
						L_289_.Text = ". . ."
						local L_298_, L_299_ = game:GetService('UserInputService').InputBegan:wait()
						if L_298_.KeyCode.Name ~= "Unknown" then
							L_289_.Text = L_298_.KeyCode.Name
							L_282_ = L_298_.KeyCode.Name
						end
						local L_300_ = L_295_:Clone()
						L_300_.Parent = L_283_
						local L_301_, L_302_ = (L_290_.X - L_300_.AbsolutePosition.X), (L_290_.Y - L_300_.AbsolutePosition.Y)
						L_300_.Position = UDim2.new(0, L_301_, 0, L_302_)
						local L_303_, L_304_ = 0.35, nil
						if L_283_.AbsoluteSize.X >= L_283_.AbsoluteSize.Y then
							L_304_ = (L_283_.AbsoluteSize.X * 1.5)
						else
							L_304_ = (L_283_.AbsoluteSize.Y * 1.5)
						end
						L_300_:TweenSizeAndPosition(UDim2.new(0, L_304_, 0, L_304_), UDim2.new(0.5, (-L_304_ / 2), 0.5, (-L_304_ / 2)), 'Out', 'Quad', L_303_, true, nil)
						for L_305_forvar1 = 1, 10 do
							L_300_.ImageTransparency = L_300_.ImageTransparency + 0.05
							wait(L_303_ / 12)
						end
					else
						for L_306_forvar1, L_307_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_307_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				game:GetService("UserInputService").InputBegan:connect(function(L_308_arg1, L_309_arg2)
					if not L_309_arg2 then
						if L_308_arg1.KeyCode.Name == L_282_ then
							L_281_arg4()
						end
					end
				end)
				L_293_.Name = "TipMore"
				L_293_.Parent = L_42_
				L_293_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_293_.Position = UDim2.new(0, 0, 2, 0)
				L_293_.Size = UDim2.new(0, 353, 0, 33)
				L_293_.ZIndex = 9
				L_293_.RichText = true
				L_293_.Font = Enum.Font.GothamSemibold
				L_293_.Text = "  "..L_279_arg2
				L_293_.TextColor3 = L_25_arg2.TextColor
				L_293_.TextSize = 14.000
				L_293_.TextXAlignment = Enum.TextXAlignment.Left
				L_288_.Name = "Sample"
				L_288_.Parent = L_283_
				L_288_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_288_.BackgroundTransparency = 1.000
				L_288_.Image = "http://www.roblox.com/asset/?id=4560909609"
				L_288_.ImageColor3 = L_25_arg2.SchemeColor
				L_288_.ImageTransparency = 0.600
				L_285_.Name = "togName"
				L_285_.Parent = L_283_
				L_285_.BackgroundColor3 = L_25_arg2.TextColor
				L_285_.BackgroundTransparency = 1.000
				L_285_.Position = UDim2.new(0.096704483, 0, 0.272727281, 0)
				L_285_.Size = UDim2.new(0, 222, 0, 14)
				L_285_.Font = Enum.Font.GothamSemibold
				L_285_.Text = L_278_arg1
				L_285_.RichText = true
				L_285_.TextColor3 = L_25_arg2.TextColor
				L_285_.TextSize = 14.000
				L_285_.TextXAlignment = Enum.TextXAlignment.Left
				L_286_.Name = "viewInfo"
				L_286_.Parent = L_283_
				L_286_.BackgroundTransparency = 1.000
				L_286_.LayoutOrder = 9
				L_286_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_286_.Size = UDim2.new(0, 23, 0, 23)
				L_286_.ZIndex = 2
				L_286_.Image = "rbxassetid://3926305904"
				L_286_.ImageColor3 = L_25_arg2.SchemeColor
				L_286_.ImageRectOffset = Vector2.new(764, 764)
				L_286_.ImageRectSize = Vector2.new(36, 36)
				L_286_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_310_forvar1, L_311_forvar2 in next, L_42_:GetChildren() do
							if L_311_forvar2 ~= L_293_ then
								L_6_:TweenObject(L_311_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_293_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_283_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_293_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
				L_75_func()
				L_55_func()
				local L_296_ = false
				L_283_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_283_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_296_ = true
					end
				end)
				L_283_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_283_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_296_ = false
					end
				end)
				L_294_.CornerRadius = UDim.new(0, 4)
				L_294_.Parent = L_293_
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_293_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_293_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				L_284_.CornerRadius = UDim.new(0, 4)
				L_284_.Parent = L_283_
				L_287_.Name = "touch"
				L_287_.Parent = L_283_
				L_287_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_287_.BackgroundTransparency = 1.000
				L_287_.BorderColor3 = Color3.fromRGB(27, 42, 53)
				L_287_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_287_.Size = UDim2.new(0, 21, 0, 21)
				L_287_.Image = "rbxassetid://3926305904"
				L_287_.ImageColor3 = L_25_arg2.SchemeColor
				L_287_.ImageRectOffset = Vector2.new(364, 284)
				L_287_.ImageRectSize = Vector2.new(36, 36)
				L_289_.Name = "togName"
				L_289_.Parent = L_283_
				L_289_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_289_.BackgroundTransparency = 1.000
				L_289_.Position = UDim2.new(0.727386296, 0, 0.272727281, 0)
				L_289_.Size = UDim2.new(0, 70, 0, 14)
				L_289_.Font = Enum.Font.GothamSemibold
				L_289_.Text = L_282_
				L_289_.TextColor3 = L_25_arg2.SchemeColor
				L_289_.TextSize = 14.000
				L_289_.TextXAlignment = Enum.TextXAlignment.Right
				coroutine.wrap(function()
					while wait() do
						if not L_296_ then
							L_283_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_289_.TextColor3 = L_25_arg2.SchemeColor
						L_287_.ImageColor3 = L_25_arg2.SchemeColor
						L_286_.ImageColor3 = L_25_arg2.SchemeColor
						L_285_.BackgroundColor3 = L_25_arg2.TextColor
						L_285_.TextColor3 = L_25_arg2.TextColor
						L_288_.ImageColor3 = L_25_arg2.SchemeColor
						L_293_.TextColor3 = L_25_arg2.TextColor
						L_293_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
					end
				end)()
			end
			function L_76_:NewColorPicker(L_312_arg1, L_313_arg2, L_314_arg3, L_315_arg4)
				L_312_arg1 = L_312_arg1 or "ColorPicker"
				L_315_arg4 = L_315_arg4 or function()
				end
				L_314_arg3 = L_314_arg3 or Color3.fromRGB(1, 1, 1)
				local L_316_, L_317_, L_318_ = Color3.toHSV(L_314_arg3)
				local L_319_ = game.Players.LocalPlayer:GetMouse()
				local L_320_ = false
				local L_321_ = Instance.new("TextButton")
				local L_322_ = Instance.new("UICorner")
				local L_323_ = Instance.new("Frame")
				local L_324_ = Instance.new("UICorner")
				local L_325_ = Instance.new("ImageLabel")
				local L_326_ = Instance.new("TextLabel")
				local L_327_ = Instance.new("ImageButton")
				local L_328_ = Instance.new("Frame")
				local L_329_ = Instance.new("UICorner")
				local L_330_ = Instance.new("UIListLayout")
				local L_331_ = Instance.new("Frame")
				local L_332_ = Instance.new("UICorner")
				local L_333_ = Instance.new("ImageButton")
				local L_334_ = Instance.new("UICorner")
				local L_335_ = Instance.new("ImageLabel")
				local L_336_ = Instance.new("ImageButton")
				local L_337_ = Instance.new("UICorner")
				local L_338_ = Instance.new("ImageLabel")
				local L_339_ = Instance.new("ImageLabel")
				local L_340_ = Instance.new("ImageLabel")
				local L_341_ = Instance.new("TextButton")
				local L_342_ = Instance.new("TextLabel")
				local L_343_ = Instance.new("ImageLabel")
				L_343_.Name = "Sample"
				L_343_.Parent = L_323_
				L_343_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_343_.BackgroundTransparency = 1.000
				L_343_.Image = "http://www.roblox.com/asset/?id=4560909609"
				L_343_.ImageColor3 = L_25_arg2.SchemeColor
				L_343_.ImageTransparency = 0.600
				local L_344_ = L_323_
				local L_345_ = L_343_
				L_321_.Name = "colorElement"
				L_321_.Parent = L_73_
				L_321_.BackgroundColor3 = L_25_arg2.ElementColor
				L_321_.BackgroundTransparency = 1.000
				L_321_.ClipsDescendants = true
				L_321_.Position = UDim2.new(0, 0, 0.566834569, 0)
				L_321_.Size = UDim2.new(0, 352, 0, 33)
				L_321_.AutoButtonColor = false
				L_321_.Font = Enum.Font.SourceSans
				L_321_.Text = ""
				L_321_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_321_.TextSize = 14.000
				L_321_.MouseButton1Click:Connect(function()
					if not L_57_ then
						if L_320_ then
							L_320_ = false
							L_321_:TweenSize(UDim2.new(0, 352, 0, 33), "InOut", "Linear", 0.08)
							wait(0.1)
							L_75_func()
							L_55_func()
							local L_370_ = L_345_:Clone()
							L_370_.Parent = L_344_
							local L_371_, L_372_ = (L_319_.X - L_370_.AbsolutePosition.X), (L_319_.Y - L_370_.AbsolutePosition.Y)
							L_370_.Position = UDim2.new(0, L_371_, 0, L_372_)
							local L_373_, L_374_ = 0.35, nil
							if L_344_.AbsoluteSize.X >= L_344_.AbsoluteSize.Y then
								L_374_ = (L_344_.AbsoluteSize.X * 1.5)
							else
								L_374_ = (L_344_.AbsoluteSize.Y * 1.5)
							end
							L_370_:TweenSizeAndPosition(UDim2.new(0, L_374_, 0, L_374_), UDim2.new(0.5, (-L_374_ / 2), 0.5, (-L_374_ / 2)), 'Out', 'Quad', L_373_, true, nil)
							for L_375_forvar1 = 1, 10 do
								L_370_.ImageTransparency = L_370_.ImageTransparency + 0.05
								wait(L_373_ / 12)
							end
							L_370_:Destroy()
						else
							L_320_ = true
							L_321_:TweenSize(UDim2.new(0, 352, 0, 141), "InOut", "Linear", 0.08, true)
							wait(0.1)
							L_75_func()
							L_55_func()
							local L_376_ = L_345_:Clone()
							L_376_.Parent = L_344_
							local L_377_, L_378_ = (L_319_.X - L_376_.AbsolutePosition.X), (L_319_.Y - L_376_.AbsolutePosition.Y)
							L_376_.Position = UDim2.new(0, L_377_, 0, L_378_)
							local L_379_, L_380_ = 0.35, nil
							if L_344_.AbsoluteSize.X >= L_344_.AbsoluteSize.Y then
								L_380_ = (L_344_.AbsoluteSize.X * 1.5)
							else
								L_380_ = (L_344_.AbsoluteSize.Y * 1.5)
							end
							L_376_:TweenSizeAndPosition(UDim2.new(0, L_380_, 0, L_380_), UDim2.new(0.5, (-L_380_ / 2), 0.5, (-L_380_ / 2)), 'Out', 'Quad', L_379_, true, nil)
							for L_381_forvar1 = 1, 10 do
								L_376_.ImageTransparency = L_376_.ImageTransparency + 0.05
								wait(L_379_ / 12)
							end
							L_376_:Destroy()
						end
					else
						for L_382_forvar1, L_383_forvar2 in next, L_42_:GetChildren() do
							L_6_:TweenObject(L_383_forvar2, {
								Position = UDim2.new(0, 0, 2, 0)
							}, 0.2)
							L_57_ = false
						end
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
					end
				end)
				L_322_.CornerRadius = UDim.new(0, 4)
				L_322_.Parent = L_321_
				L_323_.Name = "colorHeader"
				L_323_.Parent = L_321_
				L_323_.BackgroundColor3 = L_25_arg2.ElementColor
				L_323_.Size = UDim2.new(0, 352, 0, 33)
				L_323_.ClipsDescendants = true
				L_324_.CornerRadius = UDim.new(0, 4)
				L_324_.Parent = L_323_
				L_325_.Name = "touch"
				L_325_.Parent = L_323_
				L_325_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_325_.BackgroundTransparency = 1.000
				L_325_.BorderColor3 = Color3.fromRGB(27, 42, 53)
				L_325_.Position = UDim2.new(0.0199999996, 0, 0.180000007, 0)
				L_325_.Size = UDim2.new(0, 21, 0, 21)
				L_325_.Image = "rbxassetid://3926305904"
				L_325_.ImageColor3 = L_25_arg2.SchemeColor
				L_325_.ImageRectOffset = Vector2.new(44, 964)
				L_325_.ImageRectSize = Vector2.new(36, 36)
				L_326_.Name = "togName"
				L_326_.Parent = L_323_
				L_326_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_326_.BackgroundTransparency = 1.000
				L_326_.Position = UDim2.new(0.096704483, 0, 0.272727281, 0)
				L_326_.Size = UDim2.new(0, 288, 0, 14)
				L_326_.Font = Enum.Font.GothamSemibold
				L_326_.Text = L_312_arg1
				L_326_.TextColor3 = L_25_arg2.TextColor
				L_326_.TextSize = 14.000
				L_326_.RichText = true
				L_326_.TextXAlignment = Enum.TextXAlignment.Left
				local L_346_ = Instance.new("TextLabel")
				local L_347_ = Instance.new("UICorner")
				L_346_.Name = "TipMore"
				L_346_.Parent = L_42_
				L_346_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
				L_346_.Position = UDim2.new(0, 0, 2, 0)
				L_346_.Size = UDim2.new(0, 353, 0, 33)
				L_346_.ZIndex = 9
				L_346_.Font = Enum.Font.GothamSemibold
				L_346_.Text = "  "..L_313_arg2
				L_346_.TextColor3 = L_25_arg2.TextColor
				L_346_.TextSize = 14.000
				L_346_.RichText = true
				L_346_.TextXAlignment = Enum.TextXAlignment.Left
				L_347_.CornerRadius = UDim.new(0, 4)
				L_347_.Parent = L_346_
				L_327_.Name = "viewInfo"
				L_327_.Parent = L_323_
				L_327_.BackgroundTransparency = 1.000
				L_327_.LayoutOrder = 9
				L_327_.Position = UDim2.new(0.930000007, 0, 0.151999995, 0)
				L_327_.Size = UDim2.new(0, 23, 0, 23)
				L_327_.ZIndex = 2
				L_327_.Image = "rbxassetid://3926305904"
				L_327_.ImageColor3 = L_25_arg2.SchemeColor
				L_327_.ImageRectOffset = Vector2.new(764, 764)
				L_327_.ImageRectSize = Vector2.new(36, 36)
				L_327_.MouseButton1Click:Connect(function()
					if not L_58_ then
						L_58_ = true
						L_57_ = true
						for L_384_forvar1, L_385_forvar2 in next, L_42_:GetChildren() do
							if L_385_forvar2 ~= L_346_ then
								L_6_:TweenObject(L_385_forvar2, {
									Position = UDim2.new(0, 0, 2, 0)
								}, 0.2)
							end
						end
						L_6_:TweenObject(L_346_, {
							Position = UDim2.new(0, 0, 0, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 0.5
						}, 0.2)
						L_6_:TweenObject(L_321_, {
							BackgroundColor3 = L_25_arg2.ElementColor
						}, 0.2)
						wait(1.5)
						L_57_ = false
						L_6_:TweenObject(L_346_, {
							Position = UDim2.new(0, 0, 2, 0)
						}, 0.2)
						L_6_:TweenObject(L_43_, {
							BackgroundTransparency = 1
						}, 0.2)
						wait(0)
						L_58_ = false
					end
				end)
				L_328_.Name = "colorCurrent"
				L_328_.Parent = L_323_
				L_328_.BackgroundColor3 = L_314_arg3
				L_328_.Position = UDim2.new(0.792613626, 0, 0.212121218, 0)
				L_328_.Size = UDim2.new(0, 42, 0, 18)
				L_329_.CornerRadius = UDim.new(0, 4)
				L_329_.Parent = L_328_
				L_330_.Parent = L_321_
				L_330_.SortOrder = Enum.SortOrder.LayoutOrder
				L_330_.Padding = UDim.new(0, 3)
				L_331_.Name = "colorInners"
				L_331_.Parent = L_321_
				L_331_.BackgroundColor3 = L_25_arg2.ElementColor
				L_331_.Position = UDim2.new(0, 0, 0.255319148, 0)
				L_331_.Size = UDim2.new(0, 352, 0, 105)
				L_332_.CornerRadius = UDim.new(0, 4)
				L_332_.Parent = L_331_
				L_333_.Name = "rgb"
				L_333_.Parent = L_331_
				L_333_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_333_.BackgroundTransparency = 1.000
				L_333_.Position = UDim2.new(0.0198863633, 0, 0.0476190485, 0)
				L_333_.Size = UDim2.new(0, 211, 0, 93)
				L_333_.Image = "http://www.roblox.com/asset/?id=6523286724"
				L_334_.CornerRadius = UDim.new(0, 4)
				L_334_.Parent = L_333_
				L_335_.Name = "rbgcircle"
				L_335_.Parent = L_333_
				L_335_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_335_.BackgroundTransparency = 1.000
				L_335_.Size = UDim2.new(0, 14, 0, 14)
				L_335_.Image = "rbxassetid://3926309567"
				L_335_.ImageColor3 = Color3.fromRGB(0, 0, 0)
				L_335_.ImageRectOffset = Vector2.new(628, 420)
				L_335_.ImageRectSize = Vector2.new(48, 48)
				L_336_.Name = "darkness"
				L_336_.Parent = L_331_
				L_336_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_336_.BackgroundTransparency = 1.000
				L_336_.Position = UDim2.new(0.636363626, 0, 0.0476190485, 0)
				L_336_.Size = UDim2.new(0, 18, 0, 93)
				L_336_.Image = "http://www.roblox.com/asset/?id=6523291212"
				L_337_.CornerRadius = UDim.new(0, 4)
				L_337_.Parent = L_336_
				L_338_.Name = "darkcircle"
				L_338_.Parent = L_336_
				L_338_.AnchorPoint = Vector2.new(0.5, 0)
				L_338_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_338_.BackgroundTransparency = 1.000
				L_338_.Size = UDim2.new(0, 14, 0, 14)
				L_338_.Image = "rbxassetid://3926309567"
				L_338_.ImageColor3 = Color3.fromRGB(0, 0, 0)
				L_338_.ImageRectOffset = Vector2.new(628, 420)
				L_338_.ImageRectSize = Vector2.new(48, 48)
				L_339_.Name = "toggleDisabled"
				L_339_.Parent = L_331_
				L_339_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_339_.BackgroundTransparency = 1.000
				L_339_.Position = UDim2.new(0.704659104, 0, 0.0657142699, 0)
				L_339_.Size = UDim2.new(0, 21, 0, 21)
				L_339_.Image = "rbxassetid://3926309567"
				L_339_.ImageColor3 = L_25_arg2.SchemeColor
				L_339_.ImageRectOffset = Vector2.new(628, 420)
				L_339_.ImageRectSize = Vector2.new(48, 48)
				L_340_.Name = "toggleEnabled"
				L_340_.Parent = L_331_
				L_340_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_340_.BackgroundTransparency = 1.000
				L_340_.Position = UDim2.new(0.704999983, 0, 0.0659999996, 0)
				L_340_.Size = UDim2.new(0, 21, 0, 21)
				L_340_.Image = "rbxassetid://3926309567"
				L_340_.ImageColor3 = L_25_arg2.SchemeColor
				L_340_.ImageRectOffset = Vector2.new(784, 420)
				L_340_.ImageRectSize = Vector2.new(48, 48)
				L_340_.ImageTransparency = 1.000
				L_341_.Name = "onrainbow"
				L_341_.Parent = L_340_
				L_341_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_341_.BackgroundTransparency = 1.000
				L_341_.Position = UDim2.new(2.90643607e-06, 0, 0, 0)
				L_341_.Size = UDim2.new(1, 0, 1, 0)
				L_341_.Font = Enum.Font.SourceSans
				L_341_.Text = ""
				L_341_.TextColor3 = Color3.fromRGB(0, 0, 0)
				L_341_.TextSize = 14.000
				L_342_.Name = "togName"
				L_342_.Parent = L_331_
				L_342_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				L_342_.BackgroundTransparency = 1.000
				L_342_.Position = UDim2.new(0.779999971, 0, 0.100000001, 0)
				L_342_.Size = UDim2.new(0, 278, 0, 14)
				L_342_.Font = Enum.Font.GothamSemibold
				L_342_.Text = "Rainbow"
				L_342_.TextColor3 = L_25_arg2.TextColor
				L_342_.TextSize = 14.000
				L_342_.TextXAlignment = Enum.TextXAlignment.Left
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_346_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_346_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				local L_348_ = false
				L_321_.MouseEnter:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_321_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(L_25_arg2.ElementColor.r * 255 + 8, L_25_arg2.ElementColor.g * 255 + 9, L_25_arg2.ElementColor.b * 255 + 10)
						}):Play()
						L_348_ = true
					end
				end)
				L_321_.MouseLeave:Connect(function()
					if not L_57_ then
						game.TweenService:Create(L_321_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = L_25_arg2.ElementColor
						}):Play()
						L_348_ = false
					end
				end)
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_346_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_346_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				coroutine.wrap(function()
					while wait() do
						if not L_348_ then
							L_321_.BackgroundColor3 = L_25_arg2.ElementColor
						end
						L_325_.ImageColor3 = L_25_arg2.SchemeColor
						L_323_.BackgroundColor3 = L_25_arg2.ElementColor
						L_326_.TextColor3 = L_25_arg2.TextColor
						L_346_.BackgroundColor3 = Color3.fromRGB(L_25_arg2.SchemeColor.r * 255 - 14, L_25_arg2.SchemeColor.g * 255 - 17, L_25_arg2.SchemeColor.b * 255 - 13)
						L_346_.TextColor3 = L_25_arg2.TextColor
						L_327_.ImageColor3 = L_25_arg2.SchemeColor
						L_331_.BackgroundColor3 = L_25_arg2.ElementColor
						L_339_.ImageColor3 = L_25_arg2.SchemeColor
						L_340_.ImageColor3 = L_25_arg2.SchemeColor
						L_342_.TextColor3 = L_25_arg2.TextColor
						L_343_.ImageColor3 = L_25_arg2.SchemeColor
					end
				end)()
				L_75_func()
				L_55_func()
				local L_349_ = game.Players.LocalPlayer
				local L_350_ = L_349_:GetMouse()
				local L_351_ = game:GetService('UserInputService')
				local L_352_ = game:GetService("RunService")
				local L_353_ = false
				local L_354_ = false
				local L_355_ = false
				local L_356_ = L_333_
				local L_357_ = L_336_
				local L_358_ = L_335_
				local L_359_ = L_338_
				local L_360_ = {
					1,
					1,
					1
				}
				local L_361_ = false
				local L_362_
				local L_363_ = 0
				local function L_364_func(L_386_arg1)
					return math.acos(math.cos(L_386_arg1 * math.pi)) / math.pi
				end
				L_363_ = 0
				local function L_365_func()
					return L_349_:GetMouse()
				end
				local function L_366_func()
					if L_353_ then
						local L_387_ = L_365_func()
						local L_388_, L_389_ = L_387_.X - L_356_.AbsolutePosition.X, L_387_.Y - L_356_.AbsolutePosition.Y
						local L_390_, L_391_ = L_356_.AbsoluteSize.X, L_356_.AbsoluteSize.Y
						if L_388_ < 0 then
							L_388_ = 0
						end
						if L_388_ > L_390_ then
							L_388_ = L_390_
						end
						if L_389_ < 0 then
							L_389_ = 0
						end
						if L_389_ > L_391_ then
							L_389_ = L_391_
						end
						L_388_ = L_388_ / L_390_
						L_389_ = L_389_ / L_391_
						local L_392_ = L_358_.AbsoluteSize.X / 2
						local L_393_ = L_358_.AbsoluteSize.Y / 2
						L_358_.Position = UDim2.new(L_388_, -L_392_, L_389_, -L_393_)
						L_360_ = {
							1 - L_388_,
							1 - L_389_,
							L_360_[3]
						}
						local L_394_ = Color3.fromHSV(L_360_[1], L_360_[2], L_360_[3])
						L_328_.BackgroundColor3 = L_394_
						L_315_arg4(L_394_)
					end
					if L_354_ then
						local L_395_ = L_365_func()
						local L_396_ = L_395_.Y - L_357_.AbsolutePosition.Y
						local L_397_ = L_357_.AbsoluteSize.Y
						if L_396_ < 0 then
							L_396_ = 0
						end
						if L_396_ > L_397_ then
							L_396_ = L_397_
						end
						L_396_ = L_396_ / L_397_
						local L_398_ = L_359_.AbsoluteSize.Y / 2
						L_359_.Position = UDim2.new(0.5, 0, L_396_, -L_398_)
						L_359_.ImageColor3 = Color3.fromHSV(0, 0, L_396_)
						L_360_ = {
							L_360_[1],
							L_360_[2],
							1 - L_396_
						}
						local L_399_ = Color3.fromHSV(L_360_[1], L_360_[2], L_360_[3])
						L_328_.BackgroundColor3 = L_399_
						L_315_arg4(L_399_)
					end
				end
				local function L_367_func(L_400_arg1)
					local L_401_ = L_358_.AbsoluteSize.X / 2
					local L_402_ = L_358_.AbsoluteSize.Y / 2
					L_360_ = {
						L_400_arg1[1],
						L_400_arg1[2],
						L_400_arg1[3]
					}
					L_358_.Position = UDim2.new(L_360_[1], -L_401_, L_360_[2] - 1, -L_402_)
					L_359_.Position = UDim2.new(0.5, 0, L_360_[3] - 1, -L_402_)
					local L_403_ = Color3.fromHSV(L_360_[1], L_360_[2], L_360_[3])
					L_328_.BackgroundColor3 = L_403_
				end
				local function L_368_func(L_404_arg1)
					local L_405_ = L_358_.AbsoluteSize.X / 2
					local L_406_ = L_358_.AbsoluteSize.Y / 2
					L_360_ = {
						L_404_arg1[1],
						L_404_arg1[2],
						L_360_[3]
					}
					L_358_.Position = UDim2.new(L_360_[1], -L_405_, L_360_[2] - 1, -L_406_)
					local L_407_ = Color3.fromHSV(L_360_[1], L_360_[2], L_360_[3])
					L_328_.BackgroundColor3 = L_407_
					L_315_arg4(L_407_)
				end
				local function L_369_func()
					if L_361_ then
						game.TweenService:Create(L_340_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							ImageTransparency = 1
						}):Play()
						L_361_ = false
						L_362_:Disconnect()
					else
						game.TweenService:Create(L_340_, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
							ImageTransparency = 0
						}):Play()
						L_361_ = true
						L_362_ = L_352_.RenderStepped:Connect(function()
							L_368_func({
								L_364_func(L_363_),
								1,
								1
							})
							L_363_ = L_363_ + 0.01
						end)
					end
				end
				L_341_.MouseButton1Click:Connect(L_369_func)
				L_350_.Move:connect(L_366_func)
				L_356_.MouseButton1Down:connect(function()
					L_353_ = true
				end)
				L_357_.MouseButton1Down:connect(function()
					L_354_ = true
				end)
				L_351_.InputEnded:Connect(function(L_408_arg1)
					if L_408_arg1.UserInputType.Name == 'MouseButton1' then
						if L_354_ then
							L_354_ = false
						end
						if L_353_ then
							L_353_ = false
						end
					end
				end)
				L_367_func({
					L_316_,
					L_317_,
					L_318_
				})
			end
			function L_76_:NewLabel(L_409_arg1)
				local L_410_ = {}
				local L_411_ = Instance.new("TextLabel")
				local L_412_ = Instance.new("UICorner")
				L_411_.Name = "label"
				L_411_.Parent = L_73_
				L_411_.BackgroundColor3 = L_25_arg2.SchemeColor
				L_411_.BorderSizePixel = 0
				L_411_.ClipsDescendants = true
				L_411_.Text = L_409_arg1
				L_411_.Size = UDim2.new(0, 352, 0, 33)
				L_411_.Font = Enum.Font.Gotham
				L_411_.Text = "  "..L_409_arg1
				L_411_.RichText = true
				L_411_.TextColor3 = L_25_arg2.TextColor
				L_7_[L_411_] = "TextColor3"
				L_411_.TextSize = 14.000
				L_411_.TextXAlignment = Enum.TextXAlignment.Left
				L_412_.CornerRadius = UDim.new(0, 4)
				L_412_.Parent = L_411_
				if L_25_arg2.SchemeColor == Color3.fromRGB(255, 255, 255) then
					L_6_:TweenObject(L_411_, {
						TextColor3 = Color3.fromRGB(0, 0, 0)
					}, 0.2)
				end
				if L_25_arg2.SchemeColor == Color3.fromRGB(0, 0, 0) then
					L_6_:TweenObject(L_411_, {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}, 0.2)
				end
				coroutine.wrap(function()
					while wait() do
						L_411_.BackgroundColor3 = L_25_arg2.SchemeColor
						L_411_.TextColor3 = L_25_arg2.TextColor
					end
				end)()
				L_75_func()
				L_55_func()
				function L_410_:UpdateLabel(L_413_arg1)
					if L_411_.Text ~= "  "..L_413_arg1 then
						L_411_.Text = "  "..L_413_arg1
					end
				end
				return L_410_
			end
			return L_76_
		end
		return L_56_
	end
	return L_44_
end
return L_1_