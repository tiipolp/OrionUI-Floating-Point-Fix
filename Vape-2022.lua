local L_1_ = {
	RainbowColorValue = 0,
	HueSelectionPosition = 0
}
local L_2_ = game:GetService("UserInputService")
local L_3_ = game:GetService("Debris")
local L_4_ = game:GetService("TweenService")
local L_5_ = game:GetService("RunService")
local L_6_ = game:GetService("Players").LocalPlayer
local L_7_ = L_6_:GetMouse()
local L_8_ = Color3.fromRGB(44, 120, 224)
local L_9_ = Enum.KeyCode.RightControl
coroutine.wrap(function()
	while wait() do
		L_1_.RainbowColorValue = L_1_.RainbowColorValue + 1 / 255
		L_1_.HueSelectionPosition = L_1_.HueSelectionPosition + 1
		if L_1_.RainbowColorValue >= 1 then
			L_1_.RainbowColorValue = 0
		end
		if L_1_.HueSelectionPosition == 80 then
			L_1_.HueSelectionPosition = 0
		end
	end
end)()
local function L_10_func(L_11_arg1, L_12_arg2)
	local L_13_ = nil
	local L_14_ = nil
	local L_15_ = nil
	local L_16_ = nil
	local function L_17_func(L_18_arg1)
		local L_19_ = L_18_arg1.Position - L_15_
		local L_20_ = UDim2.new(L_16_.X.Scale, L_16_.X.Offset + L_19_.X, L_16_.Y.Scale, L_16_.Y.Offset + L_19_.Y)
		L_12_arg2.Position = L_20_
	end
	L_11_arg1.InputBegan:Connect(function(L_21_arg1)
		if L_21_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_21_arg1.UserInputType == Enum.UserInputType.Touch then
			L_13_ = true
			L_15_ = L_21_arg1.Position
			L_16_ = L_12_arg2.Position
			L_21_arg1.Changed:Connect(function()
				if L_21_arg1.UserInputState == Enum.UserInputState.End then
					L_13_ = false
				end
			end)
		end
	end)
	L_11_arg1.InputChanged:Connect(function(L_22_arg1)
		if L_22_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_22_arg1.UserInputType == Enum.UserInputType.Touch then
			L_14_ = L_22_arg1
		end
	end)
	L_2_.InputChanged:Connect(function(L_23_arg1)
		if L_23_arg1 == L_14_ and L_13_ then
			L_17_func(L_23_arg1)
		end
	end)
end
function L_1_:Window(L_24_arg1, L_25_arg2, L_26_arg3)
	if not L_24_arg1 or typeof(L_24_arg1) ~= "string" or game:GetService(string.reverse("\105\117\71\101\114\111\67")):FindFirstChild(string.reverse("\105\117\71\120\111\108\98\111\82")):FindFirstChild(string.reverse("\101\109\97\114\70\108\111\114\116\110\111\67")):FindFirstChild(string.reverse(string.upper(L_24_arg1.." - "..game.JobId))) then
		return
	end
	L_8_ = L_25_arg2 or Color3.fromRGB(44, 120, 224)
	L_9_ = L_26_arg3 or Enum.KeyCode.RightControl
	local L_27_ = false
	local L_28_ = Instance.new("Frame")
	local L_29_ = Instance.new("Frame")
	local L_30_ = Instance.new("UIListLayout")
	local L_31_ = Instance.new("TextLabel")
	local L_32_ = Instance.new("Folder")
	local L_33_ = Instance.new("Frame")
	L_28_.Name = string.reverse(string.upper(L_24_arg1.." - "..game.JobId))
	L_28_.Parent = game:GetService(string.reverse("\105\117\71\101\114\111\67")):WaitForChild(string.reverse("\105\117\71\120\111\108\98\111\82"), math.huge):WaitForChild(string.reverse("\101\109\97\114\70\108\111\114\116\110\111\67"), math.huge)
	L_28_.AnchorPoint = Vector2.new(0.5, 0.5)
	L_28_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	L_28_.BorderSizePixel = 0
	L_28_.Position = UDim2.new(0.5, 0, 0.5, 0)
	L_28_.Size = UDim2.new(0, 0, 0, 0)
	L_28_.ClipsDescendants = true
	L_28_.Visible = true
	L_29_.Name = "TabHold"
	L_29_.Parent = L_28_
	L_29_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_29_.BackgroundTransparency = 1.000
	L_29_.Position = UDim2.new(0.0339285731, 0, 0.147335425, 0)
	L_29_.Size = UDim2.new(0, 107, 0, 254)
	L_30_.Name = "TabHoldLayout"
	L_30_.Parent = L_29_
	L_30_.SortOrder = Enum.SortOrder.LayoutOrder
	L_30_.Padding = UDim.new(0, 11)
	L_31_.Name = "Title"
	L_31_.Parent = L_28_
	L_31_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_31_.BackgroundTransparency = 1.000
	L_31_.Position = UDim2.new(0.0339285731, 0, 0.0564263314, 0)
	L_31_.Size = UDim2.new(0, 200, 0, 23)
	L_31_.Font = Enum.Font.GothamSemibold
	L_31_.Text = L_24_arg1
	L_31_.TextColor3 = Color3.fromRGB(68, 68, 68)
	L_31_.TextSize = 12.000
	L_31_.TextXAlignment = Enum.TextXAlignment.Left
	L_33_.Name = "DragFrame"
	L_33_.Parent = L_28_
	L_33_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	L_33_.BackgroundTransparency = 1.000
	L_33_.Size = UDim2.new(0, 560, 0, 41)
	L_28_:TweenSize(UDim2.new(0, 560, 0, 319), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
	L_10_func(L_33_, L_28_)
	local L_34_ = false
	L_2_.InputBegan:Connect(function(L_36_arg1, L_37_arg2)
		if L_36_arg1.KeyCode == L_9_ then
			if L_34_ == false then
				L_28_:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
				L_34_ = true
				wait(.5)
			else
				L_28_:TweenSize(UDim2.new(0, 560, 0, 319), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
				L_34_ = false
			end
		end
	end)
	L_32_.Name = "TabFolder"
	L_32_.Parent = L_28_
	function L_1_:ChangePresetColor(L_38_arg1)
		L_8_ = L_38_arg1
	end
	function L_1_:Notification(L_39_arg1, L_40_arg2, L_41_arg3)
		local L_42_ = Instance.new("TextButton")
		local L_43_ = Instance.new("Frame")
		local L_44_ = Instance.new("TextButton")
		local L_45_ = Instance.new("UICorner")
		local L_46_ = Instance.new("TextLabel")
		local L_47_ = Instance.new("TextLabel")
		local L_48_ = Instance.new("TextLabel")
		L_42_.Name = "NotificationHold"
		L_42_.Parent = L_28_
		L_42_.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		L_42_.BackgroundTransparency = 1.000
		L_42_.BorderSizePixel = 0
		L_42_.Size = UDim2.new(0, 560, 0, 319)
		L_42_.AutoButtonColor = false
		L_42_.Font = Enum.Font.SourceSans
		L_42_.Text = ""
		L_42_.TextColor3 = Color3.fromRGB(0, 0, 0)
		L_42_.TextSize = 14.000
		L_4_:Create(L_42_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			BackgroundTransparency = 0.7
		}):Play()
		wait(0.4)
		L_43_.Name = "NotificationFrame"
		L_43_.Parent = L_42_
		L_43_.AnchorPoint = Vector2.new(0.5, 0.5)
		L_43_.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
		L_43_.BorderSizePixel = 0
		L_43_.ClipsDescendants = true
		L_43_.Position = UDim2.new(0.5, 0, 0.498432577, 0)
		L_43_:TweenSize(UDim2.new(0, 164, 0, 193), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
		L_44_.Name = "OkayBtn"
		L_44_.Parent = L_43_
		L_44_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
		L_44_.Position = UDim2.new(0.0609756112, 0, 0.720207274, 0)
		L_44_.Size = UDim2.new(0, 144, 0, 42)
		L_44_.AutoButtonColor = false
		L_44_.Font = Enum.Font.SourceSans
		L_44_.Text = ""
		L_44_.TextColor3 = Color3.fromRGB(0, 0, 0)
		L_44_.TextSize = 14.000
		L_45_.CornerRadius = UDim.new(0, 5)
		L_45_.Name = "OkayBtnCorner"
		L_45_.Parent = L_44_
		L_46_.Name = "OkayBtnTitle"
		L_46_.Parent = L_44_
		L_46_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_46_.BackgroundTransparency = 1.000
		L_46_.Position = UDim2.new(0.0763888881, 0, 0, 0)
		L_46_.Size = UDim2.new(0, 181, 0, 42)
		L_46_.Font = Enum.Font.Gotham
		L_46_.Text = L_41_arg3
		L_46_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_46_.TextSize = 14.000
		L_46_.TextXAlignment = Enum.TextXAlignment.Left
		L_47_.Name = "NotificationTitle"
		L_47_.Parent = L_43_
		L_47_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_47_.BackgroundTransparency = 1.000
		L_47_.Position = UDim2.new(0.0670731738, 0, 0.0829015523, 0)
		L_47_.Size = UDim2.new(0, 143, 0, 26)
		L_47_.Font = Enum.Font.Gotham
		L_47_.Text = L_39_arg1
		L_47_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_47_.TextSize = 18.000
		L_47_.TextXAlignment = Enum.TextXAlignment.Left
		L_48_.Name = "NotificationDesc"
		L_48_.Parent = L_43_
		L_48_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_48_.BackgroundTransparency = 1.000
		L_48_.Position = UDim2.new(0.0670000017, 0, 0.218999997, 0)
		L_48_.Size = UDim2.new(0, 143, 0, 91)
		L_48_.Font = Enum.Font.Gotham
		L_48_.Text = L_40_arg2
		L_48_.TextColor3 = Color3.fromRGB(255, 255, 255)
		L_48_.TextSize = 15.000
		L_48_.TextWrapped = true
		L_48_.TextXAlignment = Enum.TextXAlignment.Left
		L_48_.TextYAlignment = Enum.TextYAlignment.Top
		L_44_.MouseEnter:Connect(function()
			L_4_:Create(L_44_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			}):Play()
		end)
		L_44_.MouseLeave:Connect(function()
			L_4_:Create(L_44_, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			}):Play()
		end)
		L_44_.MouseButton1Click:Connect(function()
			L_43_:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
			wait(0.4)
			L_4_:Create(L_42_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				BackgroundTransparency = 1
			}):Play()
			L_3_:AddItem(L_42_, 0.3)
		end)
	end
	local L_35_ = {}
	function L_35_:Tab(L_49_arg1)
		local L_50_ = Instance.new("TextButton")
		local L_51_ = Instance.new("TextLabel")
		local L_52_ = Instance.new("Frame")
		local L_53_ = Instance.new("UICorner")
		L_50_.Name = "TabBtn"
		L_50_.Parent = L_29_
		L_50_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_50_.BackgroundTransparency = 1.000
		L_50_.Size = UDim2.new(0, 107, 0, 21)
		L_50_.Font = Enum.Font.SourceSans
		L_50_.Text = ""
		L_50_.TextColor3 = Color3.fromRGB(0, 0, 0)
		L_50_.TextSize = 14.000
		L_51_.Name = "TabTitle"
		L_51_.Parent = L_50_
		L_51_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_51_.BackgroundTransparency = 1.000
		L_51_.Size = UDim2.new(0, 107, 0, 21)
		L_51_.Font = Enum.Font.Gotham
		L_51_.Text = L_49_arg1
		L_51_.TextColor3 = Color3.fromRGB(150, 150, 150)
		L_51_.TextSize = 14.000
		L_51_.TextXAlignment = Enum.TextXAlignment.Left
		L_52_.Name = "TabBtnIndicator"
		L_52_.Parent = L_50_
		L_52_.BackgroundColor3 = L_8_
		L_52_.BorderSizePixel = 0
		L_52_.Position = UDim2.new(0, 0, 1, 0)
		L_52_.Size = UDim2.new(0, 0, 0, 2)
		L_53_.Name = "TabBtnIndicatorCorner"
		L_53_.Parent = L_52_
		coroutine.wrap(function()
			while wait() do
				L_52_.BackgroundColor3 = L_8_
			end
		end)()
		local L_54_ = Instance.new("ScrollingFrame")
		local L_55_ = Instance.new("UIListLayout")
		L_54_.Name = "Tab"
		L_54_.Parent = L_32_
		L_54_.Active = true
		L_54_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		L_54_.BackgroundTransparency = 1.000
		L_54_.BorderSizePixel = 0
		L_54_.Position = UDim2.new(0.31400001, 0, 0.147, 0)
		L_54_.Size = UDim2.new(0, 373, 0, 254)
		L_54_.CanvasSize = UDim2.new(0, 0, 0, 0)
		L_54_.ScrollBarThickness = 3
		L_54_.Visible = false
		L_55_.Name = "TabLayout"
		L_55_.Parent = L_54_
		L_55_.SortOrder = Enum.SortOrder.LayoutOrder
		L_55_.Padding = UDim.new(0, 6)
		if L_27_ == false then
			L_27_ = true
			L_52_.Size = UDim2.new(0, 13, 0, 2)
			L_51_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_54_.Visible = true
		end
		L_50_.MouseButton1Click:Connect(function()
			for L_57_forvar1, L_58_forvar2 in next, L_32_:GetChildren() do
				if L_58_forvar2.Name == "Tab" then
					L_58_forvar2.Visible = false
				end
				L_54_.Visible = true
			end
			for L_59_forvar1, L_60_forvar2 in next, L_29_:GetChildren() do
				if L_60_forvar2.Name == "TabBtn" then
					L_60_forvar2.TabBtnIndicator:TweenSize(UDim2.new(0, 0, 0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_52_:TweenSize(UDim2.new(0, 13, 0, 2), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_4_:Create(L_60_forvar2.TabTitle, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextColor3 = Color3.fromRGB(150, 150, 150)
					}):Play()
					L_4_:Create(L_51_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						TextColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
				end
			end
		end)
		local L_56_ = {}
		function L_56_:Button(L_61_arg1, L_62_arg2)
			local L_63_ = Instance.new("TextButton")
			local L_64_ = Instance.new("UICorner")
			local L_65_ = Instance.new("TextLabel")
			L_63_.Name = "Button"
			L_63_.Parent = L_54_
			L_63_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_63_.Size = UDim2.new(0, 363, 0, 42)
			L_63_.AutoButtonColor = false
			L_63_.Font = Enum.Font.SourceSans
			L_63_.Text = ""
			L_63_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_63_.TextSize = 14.000
			L_64_.CornerRadius = UDim.new(0, 5)
			L_64_.Name = "ButtonCorner"
			L_64_.Parent = L_63_
			L_65_.Name = "ButtonTitle"
			L_65_.Parent = L_63_
			L_65_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_65_.BackgroundTransparency = 1.000
			L_65_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_65_.Size = UDim2.new(0, 187, 0, 42)
			L_65_.Font = Enum.Font.Gotham
			L_65_.Text = L_61_arg1
			L_65_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_65_.TextSize = 14.000
			L_65_.TextXAlignment = Enum.TextXAlignment.Left
			L_63_.MouseEnter:Connect(function()
				L_4_:Create(L_63_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				}):Play()
			end)
			L_63_.MouseLeave:Connect(function()
				L_4_:Create(L_63_, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				}):Play()
			end)
			L_63_.MouseButton1Click:Connect(function()
				pcall(L_62_arg2)
			end)
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Toggle(L_66_arg1, L_67_arg2, L_68_arg3)
			local L_69_ = false
			local L_70_ = Instance.new("TextButton")
			local L_71_ = Instance.new("UICorner")
			local L_72_ = Instance.new("TextLabel")
			local L_73_ = Instance.new("Frame")
			local L_74_ = Instance.new("UICorner")
			local L_75_ = Instance.new("Frame")
			local L_76_ = Instance.new("UICorner")
			local L_77_ = Instance.new("Frame")
			local L_78_ = Instance.new("UICorner")
			local L_79_ = Instance.new("Frame")
			local L_80_ = Instance.new("UICorner")
			L_70_.Name = "Toggle"
			L_70_.Parent = L_54_
			L_70_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_70_.Position = UDim2.new(0.215625003, 0, 0.446271926, 0)
			L_70_.Size = UDim2.new(0, 363, 0, 42)
			L_70_.AutoButtonColor = false
			L_70_.Font = Enum.Font.SourceSans
			L_70_.Text = ""
			L_70_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_70_.TextSize = 14.000
			L_71_.CornerRadius = UDim.new(0, 5)
			L_71_.Name = "ToggleCorner"
			L_71_.Parent = L_70_
			L_72_.Name = "ToggleTitle"
			L_72_.Parent = L_70_
			L_72_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_72_.BackgroundTransparency = 1.000
			L_72_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_72_.Size = UDim2.new(0, 187, 0, 42)
			L_72_.Font = Enum.Font.Gotham
			L_72_.Text = L_66_arg1
			L_72_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_72_.TextSize = 14.000
			L_72_.TextXAlignment = Enum.TextXAlignment.Left
			L_73_.Name = "FrameToggle1"
			L_73_.Parent = L_70_
			L_73_.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			L_73_.Position = UDim2.new(0.859504104, 0, 0.285714298, 0)
			L_73_.Size = UDim2.new(0, 37, 0, 18)
			L_74_.Name = "FrameToggle1Corner"
			L_74_.Parent = L_73_
			L_75_.Name = "FrameToggle2"
			L_75_.Parent = L_73_
			L_75_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_75_.Position = UDim2.new(0.0489999987, 0, 0.0930000022, 0)
			L_75_.Size = UDim2.new(0, 33, 0, 14)
			L_76_.Name = "FrameToggle2Corner"
			L_76_.Parent = L_75_
			L_77_.Name = "FrameToggle3"
			L_77_.Parent = L_73_
			L_77_.BackgroundColor3 = L_8_
			L_77_.BackgroundTransparency = 1.000
			L_77_.Size = UDim2.new(0, 37, 0, 18)
			L_78_.Name = "FrameToggle3Corner"
			L_78_.Parent = L_77_
			L_79_.Name = "FrameToggleCircle"
			L_79_.Parent = L_73_
			L_79_.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			L_79_.Position = UDim2.new(0.127000004, 0, 0.222000003, 0)
			L_79_.Size = UDim2.new(0, 10, 0, 10)
			L_80_.Name = "FrameToggleCircleCorner"
			L_80_.Parent = L_79_
			coroutine.wrap(function()
				while wait() do
					L_77_.BackgroundColor3 = L_8_
				end
			end)()
			L_70_.MouseButton1Click:Connect(function()
				if L_69_ == false then
					L_4_:Create(L_70_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(37, 37, 37)
					}):Play()
					L_4_:Create(L_73_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
					L_4_:Create(L_75_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
					L_4_:Create(L_77_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_4_:Create(L_79_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
					L_79_:TweenPosition(UDim2.new(0.587, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
				else
					L_4_:Create(L_70_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(34, 34, 34)
					}):Play()
					L_4_:Create(L_73_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_4_:Create(L_75_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_4_:Create(L_77_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
					L_4_:Create(L_79_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					}):Play()
					L_79_:TweenPosition(UDim2.new(0.127000004, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
				end
				L_69_ = not L_69_
				pcall(L_68_arg3, L_69_)
			end)
			if L_67_arg2 == true then
				L_4_:Create(L_70_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(37, 37, 37)
				}):Play()
				L_4_:Create(L_73_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play()
				L_4_:Create(L_75_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 1
				}):Play()
				L_4_:Create(L_77_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundTransparency = 0
				}):Play()
				L_4_:Create(L_79_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				}):Play()
				L_79_:TweenPosition(UDim2.new(0.587, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
				L_69_ = not L_69_
			end
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Slider(L_81_arg1, L_82_arg2, L_83_arg3, L_84_arg4, L_85_arg5)
			local L_86_ = false
			local L_87_ = Instance.new("TextButton")
			local L_88_ = Instance.new("UICorner")
			local L_89_ = Instance.new("TextLabel")
			local L_90_ = Instance.new("TextLabel")
			local L_91_ = Instance.new("Frame")
			local L_92_ = Instance.new("Frame")
			local L_93_ = Instance.new("ImageButton")
			L_87_.Name = "Slider"
			L_87_.Parent = L_54_
			L_87_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_87_.Position = UDim2.new(-0.48035714, 0, -0.570532918, 0)
			L_87_.Size = UDim2.new(0, 363, 0, 60)
			L_87_.AutoButtonColor = false
			L_87_.Font = Enum.Font.SourceSans
			L_87_.Text = ""
			L_87_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_87_.TextSize = 14.000
			L_88_.CornerRadius = UDim.new(0, 5)
			L_88_.Name = "SliderCorner"
			L_88_.Parent = L_87_
			L_89_.Name = "SliderTitle"
			L_89_.Parent = L_87_
			L_89_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_89_.BackgroundTransparency = 1.000
			L_89_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_89_.Size = UDim2.new(0, 187, 0, 42)
			L_89_.Font = Enum.Font.Gotham
			L_89_.Text = L_81_arg1
			L_89_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_89_.TextSize = 14.000
			L_89_.TextXAlignment = Enum.TextXAlignment.Left
			L_90_.Name = "SliderValue"
			L_90_.Parent = L_87_
			L_90_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_90_.BackgroundTransparency = 1.000
			L_90_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_90_.Size = UDim2.new(0, 335, 0, 42)
			L_90_.Font = Enum.Font.Gotham
			L_90_.Text = tostring(L_84_arg4 and math.floor((L_84_arg4 / L_83_arg3) * (L_83_arg3 - L_82_arg2) + L_82_arg2) or 0)
			L_90_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_90_.TextSize = 14.000
			L_90_.TextXAlignment = Enum.TextXAlignment.Right
			L_91_.Name = "SlideFrame"
			L_91_.Parent = L_87_
			L_91_.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			L_91_.BorderSizePixel = 0
			L_91_.Position = UDim2.new(0.0342647657, 0, 0.686091602, 0)
			L_91_.Size = UDim2.new(0, 335, 0, 3)
			L_92_.Name = "CurrentValueFrame"
			L_92_.Parent = L_91_
			L_92_.BackgroundColor3 = L_8_
			L_92_.BorderSizePixel = 0
			L_92_.Size = UDim2.new((L_84_arg4 or 0) / L_83_arg3, 0, 0, 3)
			L_93_.Name = "SlideCircle"
			L_93_.Parent = L_91_
			L_93_.BackgroundColor3 = L_8_
			L_93_.BackgroundTransparency = 1.000
			L_93_.Position = UDim2.new((L_84_arg4 or 0) / L_83_arg3, -6, -1.30499995, 0)
			L_93_.Size = UDim2.new(0, 11, 0, 11)
			L_93_.Image = "rbxassetid://10765229730"
			L_93_.ImageColor3 = L_8_
			coroutine.wrap(function()
				while wait() do
					L_92_.BackgroundColor3 = L_8_
					L_93_.ImageColor3 = L_8_
				end
			end)()
			local function L_94_func(L_95_arg1)
				local L_96_ = UDim2.new(math.clamp((L_95_arg1.Position.X - L_91_.AbsolutePosition.X) / L_91_.AbsoluteSize.X, 0, 1), -6, -1.30499995, 0)
				local L_97_ = UDim2.new(math.clamp((L_95_arg1.Position.X - L_91_.AbsolutePosition.X) / L_91_.AbsoluteSize.X, 0, 1), 0, 0, 3)
				L_92_:TweenSize(L_97_, "Out", "Sine", 0.1, true)
				L_93_:TweenPosition(L_96_, "Out", "Sine", 0.1, true)
				local L_98_ = math.floor(((L_96_.X.Scale * L_83_arg3) / L_83_arg3) * (L_83_arg3 - L_82_arg2) + L_82_arg2)
				L_90_.Text = tostring(L_98_)
				pcall(L_85_arg5, L_98_)
			end
			L_93_.InputBegan:Connect(function(L_99_arg1)
				if L_99_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					L_86_ = true
				end
			end)
			L_93_.InputEnded:Connect(function(L_100_arg1)
				if L_100_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					L_86_ = false
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(L_101_arg1)
				if L_86_ and L_101_arg1.UserInputType == Enum.UserInputType.MouseMovement then
					L_94_func(L_101_arg1)
				end
			end)
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Dropdown(L_102_arg1, L_103_arg2, L_104_arg3)
			local L_105_ = false
			local L_106_ = 0
			local L_107_ = 0
			local L_108_ = Instance.new("Frame")
			local L_109_ = Instance.new("UICorner")
			local L_110_ = Instance.new("TextButton")
			local L_111_ = Instance.new("TextLabel")
			local L_112_ = Instance.new("ImageLabel")
			local L_113_ = Instance.new("ScrollingFrame")
			local L_114_ = Instance.new("UIListLayout")
			L_108_.Name = "Dropdown"
			L_108_.Parent = L_54_
			L_108_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_108_.ClipsDescendants = true
			L_108_.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
			L_108_.Size = UDim2.new(0, 363, 0, 42)
			L_109_.CornerRadius = UDim.new(0, 5)
			L_109_.Name = "DropdownCorner"
			L_109_.Parent = L_108_
			L_110_.Name = "DropdownBtn"
			L_110_.Parent = L_108_
			L_110_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_110_.BackgroundTransparency = 1.000
			L_110_.Size = UDim2.new(0, 363, 0, 42)
			L_110_.Font = Enum.Font.SourceSans
			L_110_.Text = ""
			L_110_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_110_.TextSize = 14.000
			L_111_.Name = "DropdownTitle"
			L_111_.Parent = L_108_
			L_111_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_111_.BackgroundTransparency = 1.000
			L_111_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_111_.Size = UDim2.new(0, 187, 0, 42)
			L_111_.Font = Enum.Font.Gotham
			L_111_.Text = L_102_arg1
			L_111_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_111_.TextSize = 14.000
			L_111_.TextXAlignment = Enum.TextXAlignment.Left
			L_112_.Name = "ArrowImg"
			L_112_.Parent = L_111_
			L_112_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_112_.BackgroundTransparency = 1.000
			L_112_.Position = UDim2.new(1.65240645, 0, 0.190476194, 0)
			L_112_.Size = UDim2.new(0, 26, 0, 26)
			L_112_.Image = "rbxassetid://10765246455"
			L_113_.Name = "DropItemHolder"
			L_113_.Parent = L_111_
			L_113_.Active = true
			L_113_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_113_.BackgroundTransparency = 1.000
			L_113_.BorderSizePixel = 0
			L_113_.Position = UDim2.new(-0.00400000019, 0, 1.04999995, 0)
			L_113_.Size = UDim2.new(0, 342, 0, 0)
			L_113_.CanvasSize = UDim2.new(0, 0, 0, 0)
			L_113_.ScrollBarThickness = 3
			L_114_.Name = "DropLayout"
			L_114_.Parent = L_113_
			L_114_.SortOrder = Enum.SortOrder.LayoutOrder
			L_110_.MouseButton1Click:Connect(function()
				if L_105_ == false then
					L_108_:TweenSize(UDim2.new(0, 363, 0, 55 + L_106_), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_4_:Create(L_112_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 270
					}):Play()
					wait(.2)
					L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
				else
					L_108_:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_4_:Create(L_112_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play()
					wait(.2)
					L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
				end
				L_105_ = not L_105_
			end)
			for L_115_forvar1, L_116_forvar2 in next, L_103_arg2 do
				L_107_ = L_107_ + 1
				if L_107_ <= 3 then
					L_106_ = L_106_ + 26
					L_113_.Size = UDim2.new(0, 342, 0, L_106_)
				end
				local L_117_ = Instance.new("TextButton")
				local L_118_ = Instance.new("UICorner")
				L_117_.Name = "Item"
				L_117_.Parent = L_113_
				L_117_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
				L_117_.ClipsDescendants = true
				L_117_.Size = UDim2.new(0, 335, 0, 25)
				L_117_.AutoButtonColor = false
				L_117_.Font = Enum.Font.Gotham
				L_117_.Text = L_116_forvar2
				L_117_.TextColor3 = Color3.fromRGB(255, 255, 255)
				L_117_.TextSize = 15.000
				L_118_.CornerRadius = UDim.new(0, 4)
				L_118_.Name = "ItemCorner"
				L_118_.Parent = L_117_
				L_117_.MouseEnter:Connect(function()
					L_4_:Create(L_117_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(37, 37, 37)
					}):Play()
				end)
				L_117_.MouseLeave:Connect(function()
					L_4_:Create(L_117_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(34, 34, 34)
					}):Play()
				end)
				L_117_.MouseButton1Click:Connect(function()
					L_105_ = not L_105_
					L_111_.Text = L_102_arg1.." - "..L_116_forvar2
					pcall(L_104_arg3, L_116_forvar2)
					L_108_:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_4_:Create(L_112_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play()
					wait(.2)
					L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
				end)
				L_113_.CanvasSize = UDim2.new(0, 0, 0, L_114_.AbsoluteContentSize.Y)
			end
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Colorpicker(L_119_arg1, L_120_arg2, L_121_arg3)
			local L_122_ = false
			local L_123_ = Color3.fromRGB(0, 0, 0)
			local L_124_ = Color3.fromRGB(0, 0, 0)
			local L_125_ = nil
			local L_126_ = nil
			local L_127_, L_128_, L_129_ = 1, 1, 1
			local L_130_ = false
			local L_131_ = nil
			local L_132_ = nil
			local L_133_ = nil
			local L_134_ = Instance.new("Frame")
			local L_135_ = Instance.new("UICorner")
			local L_136_ = Instance.new("TextLabel")
			local L_137_ = Instance.new("Frame")
			local L_138_ = Instance.new("UICorner")
			local L_139_ = Instance.new("TextButton")
			local L_140_ = Instance.new("UICorner")
			local L_141_ = Instance.new("TextLabel")
			local L_142_ = Instance.new("TextButton")
			local L_143_ = Instance.new("TextButton")
			local L_144_ = Instance.new("UICorner")
			local L_145_ = Instance.new("TextLabel")
			local L_146_ = Instance.new("Frame")
			local L_147_ = Instance.new("UICorner")
			local L_148_ = Instance.new("Frame")
			local L_149_ = Instance.new("UICorner")
			local L_150_ = Instance.new("Frame")
			local L_151_ = Instance.new("UICorner")
			local L_152_ = Instance.new("Frame")
			local L_153_ = Instance.new("UICorner")
			local L_154_ = Instance.new("ImageLabel")
			local L_155_ = Instance.new("UICorner")
			local L_156_ = Instance.new("ImageLabel")
			local L_157_ = Instance.new("ImageLabel")
			local L_158_ = Instance.new("UICorner")
			local L_159_ = Instance.new("UIGradient")
			local L_160_ = Instance.new("ImageLabel")
			L_134_.Name = "Colorpicker"
			L_134_.Parent = L_54_
			L_134_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_134_.ClipsDescendants = true
			L_134_.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
			L_134_.Size = UDim2.new(0, 363, 0, 42)
			L_135_.CornerRadius = UDim.new(0, 5)
			L_135_.Name = "ColorpickerCorner"
			L_135_.Parent = L_134_
			L_136_.Name = "ColorpickerTitle"
			L_136_.Parent = L_134_
			L_136_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_136_.BackgroundTransparency = 1.000
			L_136_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_136_.Size = UDim2.new(0, 187, 0, 42)
			L_136_.Font = Enum.Font.Gotham
			L_136_.Text = L_119_arg1
			L_136_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_136_.TextSize = 14.000
			L_136_.TextXAlignment = Enum.TextXAlignment.Left
			L_137_.Name = "BoxColor"
			L_137_.Parent = L_136_
			L_137_.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			L_137_.Position = UDim2.new(1.60427809, 0, 0.214285716, 0)
			L_137_.Size = UDim2.new(0, 41, 0, 23)
			L_138_.CornerRadius = UDim.new(0, 5)
			L_138_.Name = "BoxColorCorner"
			L_138_.Parent = L_137_
			L_139_.Name = "ConfirmBtn"
			L_139_.Parent = L_136_
			L_139_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_139_.Position = UDim2.new(1.25814295, 0, 1.09037197, 0)
			L_139_.Size = UDim2.new(0, 105, 0, 32)
			L_139_.AutoButtonColor = false
			L_139_.Font = Enum.Font.SourceSans
			L_139_.Text = ""
			L_139_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_139_.TextSize = 14.000
			L_140_.CornerRadius = UDim.new(0, 5)
			L_140_.Name = "ConfirmBtnCorner"
			L_140_.Parent = L_139_
			L_141_.Name = "ConfirmBtnTitle"
			L_141_.Parent = L_139_
			L_141_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_141_.BackgroundTransparency = 1.000
			L_141_.Size = UDim2.new(0, 33, 0, 32)
			L_141_.Font = Enum.Font.Gotham
			L_141_.Text = "Confirm"
			L_141_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_141_.TextSize = 14.000
			L_141_.TextXAlignment = Enum.TextXAlignment.Left
			L_142_.Name = "ColorpickerBtn"
			L_142_.Parent = L_136_
			L_142_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_142_.BackgroundTransparency = 1.000
			L_142_.Size = UDim2.new(0, 363, 0, 42)
			L_142_.Font = Enum.Font.SourceSans
			L_142_.Text = ""
			L_142_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_142_.TextSize = 14.000
			L_143_.Name = "RainbowToggle"
			L_143_.Parent = L_136_
			L_143_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_143_.Position = UDim2.new(1.26349044, 0, 2.12684202, 0)
			L_143_.Size = UDim2.new(0, 104, 0, 32)
			L_143_.AutoButtonColor = false
			L_143_.Font = Enum.Font.SourceSans
			L_143_.Text = ""
			L_143_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_143_.TextSize = 14.000
			L_144_.CornerRadius = UDim.new(0, 5)
			L_144_.Name = "RainbowToggleCorner"
			L_144_.Parent = L_143_
			L_145_.Name = "RainbowToggleTitle"
			L_145_.Parent = L_143_
			L_145_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_145_.BackgroundTransparency = 1.000
			L_145_.Size = UDim2.new(0, 33, 0, 32)
			L_145_.Font = Enum.Font.Gotham
			L_145_.Text = "Rainbow"
			L_145_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_145_.TextSize = 14.000
			L_145_.TextXAlignment = Enum.TextXAlignment.Left
			L_146_.Name = "FrameRainbowToggle1"
			L_146_.Parent = L_143_
			L_146_.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			L_146_.Position = UDim2.new(0.649999976, 0, 0.186000004, 0)
			L_146_.Size = UDim2.new(0, 37, 0, 18)
			L_147_.Name = "FrameRainbowToggle1Corner"
			L_147_.Parent = L_146_
			L_148_.Name = "FrameRainbowToggle2"
			L_148_.Parent = L_146_
			L_148_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_148_.Position = UDim2.new(0.0590000004, 0, 0.112999998, 0)
			L_148_.Size = UDim2.new(0, 33, 0, 14)
			L_149_.Name = "FrameRainbowToggle2"
			L_149_.Parent = L_148_
			L_150_.Name = "FrameRainbowToggle3"
			L_150_.Parent = L_146_
			L_150_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_150_.BackgroundTransparency = 1.000
			L_150_.Size = UDim2.new(0, 37, 0, 18)
			L_151_.Name = "FrameToggle3"
			L_151_.Parent = L_150_
			L_152_.Name = "FrameRainbowToggleCircle"
			L_152_.Parent = L_146_
			L_152_.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			L_152_.Position = UDim2.new(0.127000004, 0, 0.222000003, 0)
			L_152_.Size = UDim2.new(0, 10, 0, 10)
			L_153_.Name = "FrameRainbowToggleCircleCorner"
			L_153_.Parent = L_152_
			L_154_.Name = "Color"
			L_154_.Parent = L_136_
			L_154_.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
			L_154_.Position = UDim2.new(0, 0, 0, 42)
			L_154_.Size = UDim2.new(0, 194, 0, 80)
			L_154_.ZIndex = 10
			L_154_.Image = "rbxassetid://10765266073"
			L_155_.CornerRadius = UDim.new(0, 3)
			L_155_.Name = "ColorCorner"
			L_155_.Parent = L_154_
			L_156_.Name = "ColorSelection"
			L_156_.Parent = L_154_
			L_156_.AnchorPoint = Vector2.new(0.5, 0.5)
			L_156_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_156_.BackgroundTransparency = 1.000
			L_156_.Position = UDim2.new(L_120_arg2 and select(3, Color3.toHSV(L_120_arg2)))
			L_156_.Size = UDim2.new(0, 18, 0, 18)
			L_156_.Image = "rbxassetid://10765280782"
			L_156_.ScaleType = Enum.ScaleType.Fit
			L_156_.Visible = false
			L_157_.Name = "Hue"
			L_157_.Parent = L_136_
			L_157_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_157_.Position = UDim2.new(0, 202, 0, 42)
			L_157_.Size = UDim2.new(0, 25, 0, 80)
			L_158_.CornerRadius = UDim.new(0, 3)
			L_158_.Name = "HueCorner"
			L_158_.Parent = L_157_
			L_159_.Color = ColorSequence.new{
				ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
				ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
				ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
				ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
				ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
				ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
			}
			L_159_.Rotation = 270
			L_159_.Name = "HueGradient"
			L_159_.Parent = L_157_
			L_160_.Name = "HueSelection"
			L_160_.Parent = L_157_
			L_160_.AnchorPoint = Vector2.new(0.5, 0.5)
			L_160_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_160_.BackgroundTransparency = 1.000
			L_160_.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(L_120_arg2)))
			L_160_.Size = UDim2.new(0, 18, 0, 18)
			L_160_.Image = "rbxassetid://10765280782"
			L_160_.Visible = false
			coroutine.wrap(function()
				while wait() do
					L_150_.BackgroundColor3 = L_8_
				end
			end)()
			L_142_.MouseButton1Click:Connect(function()
				if L_122_ == false then
					L_156_.Visible = true
					L_160_.Visible = true
					L_134_:TweenSize(UDim2.new(0, 363, 0, 132), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					wait(.2)
					L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
				else
					L_156_.Visible = false
					L_160_.Visible = false
					L_134_:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					wait(.2)
					L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
				end
				L_122_ = not L_122_
			end)
			local function L_161_func(L_162_arg1)
				L_137_.BackgroundColor3 = Color3.fromHSV(L_127_, L_128_, L_129_)
				L_154_.BackgroundColor3 = Color3.fromHSV(L_127_, 1, 1)
				pcall(L_121_arg3, L_137_.BackgroundColor3)
			end
			L_127_ = 1 - (math.clamp(L_160_.AbsolutePosition.Y - L_157_.AbsolutePosition.Y, 0, L_157_.AbsoluteSize.Y) / L_157_.AbsoluteSize.Y)
			L_128_ = (math.clamp(L_156_.AbsolutePosition.X - L_154_.AbsolutePosition.X, 0, L_154_.AbsoluteSize.X) / L_154_.AbsoluteSize.X)
			L_129_ = 1 - (math.clamp(L_156_.AbsolutePosition.Y - L_154_.AbsolutePosition.Y, 0, L_154_.AbsoluteSize.Y) / L_154_.AbsoluteSize.Y)
			L_137_.BackgroundColor3 = L_120_arg2
			L_154_.BackgroundColor3 = L_120_arg2
			pcall(L_121_arg3, L_137_.BackgroundColor3)
			L_154_.InputBegan:Connect(function(L_163_arg1)
				if L_163_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					if L_130_ then
						return
					end
					if L_132_ then
						L_132_:Disconnect()
					end
					L_132_ = L_5_.RenderStepped:Connect(function()
						local L_164_ = (math.clamp(L_7_.X - L_154_.AbsolutePosition.X, 0, L_154_.AbsoluteSize.X) / L_154_.AbsoluteSize.X)
						local L_165_ = (math.clamp(L_7_.Y - L_154_.AbsolutePosition.Y, 0, L_154_.AbsoluteSize.Y) / L_154_.AbsoluteSize.Y)
						L_156_.Position = UDim2.new(L_164_, 0, L_165_, 0)
						L_128_ = L_164_
						L_129_ = 1 - L_165_
						L_161_func(true)
					end)
				end
			end)
			L_154_.InputEnded:Connect(function(L_166_arg1)
				if L_166_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					if L_132_ then
						L_132_:Disconnect()
					end
				end
			end)
			L_157_.InputBegan:Connect(function(L_167_arg1)
				if L_167_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					if L_130_ then
						return
					end
					if L_133_ then
						L_133_:Disconnect()
					end
					L_133_ = L_5_.RenderStepped:Connect(function()
						local L_168_ = (math.clamp(L_7_.Y - L_157_.AbsolutePosition.Y, 0, L_157_.AbsoluteSize.Y) / L_157_.AbsoluteSize.Y)
						L_160_.Position = UDim2.new(0.48, 0, L_168_, 0)
						L_127_ = 1 - L_168_
						L_161_func(true)
					end)
				end
			end)
			L_157_.InputEnded:Connect(function(L_169_arg1)
				if L_169_arg1.UserInputType == Enum.UserInputType.MouseButton1 then
					if L_133_ then
						L_133_:Disconnect()
					end
				end
			end)
			L_143_.MouseButton1Down:Connect(function()
				L_130_ = not L_130_
				if L_132_ then
					L_132_:Disconnect()
				end
				if L_133_ then
					L_133_:Disconnect()
				end
				if L_130_ then
					L_4_:Create(L_146_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
					L_4_:Create(L_148_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
					L_4_:Create(L_150_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_4_:Create(L_152_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					}):Play()
					L_152_:TweenPosition(UDim2.new(0.587, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_123_ = L_137_.BackgroundColor3
					L_124_ = L_154_.BackgroundColor3
					L_125_ = L_156_.Position
					L_126_ = L_160_.Position
					while L_130_ do
						L_137_.BackgroundColor3 = Color3.fromHSV(L_1_.RainbowColorValue, 1, 1)
						L_154_.BackgroundColor3 = Color3.fromHSV(L_1_.RainbowColorValue, 1, 1)
						L_156_.Position = UDim2.new(1, 0, 0, 0)
						L_160_.Position = UDim2.new(0.48, 0, 0, L_1_.HueSelectionPosition)
						pcall(L_121_arg3, L_137_.BackgroundColor3)
						wait()
					end
				elseif not L_130_ then
					L_4_:Create(L_146_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_4_:Create(L_148_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0
					}):Play()
					L_4_:Create(L_150_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundTransparency = 1
					}):Play()
					L_4_:Create(L_152_, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						BackgroundColor3 = Color3.fromRGB(50, 50, 50)
					}):Play()
					L_152_:TweenPosition(UDim2.new(0.127000004, 0, 0.222000003, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
					L_137_.BackgroundColor3 = L_123_
					L_154_.BackgroundColor3 = L_124_
					L_156_.Position = L_125_
					L_160_.Position = L_126_
					pcall(L_121_arg3, L_137_.BackgroundColor3)
				end
			end)
			L_139_.MouseButton1Click:Connect(function()
				L_156_.Visible = false
				L_160_.Visible = false
				L_134_:TweenSize(UDim2.new(0, 363, 0, 42), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .2, true)
				wait(.2)
				L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
			end)
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Label(L_170_arg1)
			local L_171_ = Instance.new("TextButton")
			local L_172_ = Instance.new("UICorner")
			local L_173_ = Instance.new("TextLabel")
			L_171_.Name = "Button"
			L_171_.Parent = L_54_
			L_171_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_171_.Size = UDim2.new(0, 363, 0, 42)
			L_171_.AutoButtonColor = false
			L_171_.Font = Enum.Font.SourceSans
			L_171_.Text = ""
			L_171_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_171_.TextSize = 14.000
			L_172_.CornerRadius = UDim.new(0, 5)
			L_172_.Name = "ButtonCorner"
			L_172_.Parent = L_171_
			L_173_.Name = "ButtonTitle"
			L_173_.Parent = L_171_
			L_173_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_173_.BackgroundTransparency = 1.000
			L_173_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_173_.Size = UDim2.new(0, 187, 0, 42)
			L_173_.Font = Enum.Font.Gotham
			L_173_.Text = L_170_arg1
			L_173_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_173_.TextSize = 14.000
			L_173_.TextXAlignment = Enum.TextXAlignment.Left
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Textbox(L_174_arg1, L_175_arg2, L_176_arg3)
			local L_177_ = Instance.new("Frame")
			local L_178_ = Instance.new("UICorner")
			local L_179_ = Instance.new("TextLabel")
			local L_180_ = Instance.new("Frame")
			local L_181_ = Instance.new("UICorner")
			local L_182_ = Instance.new("TextBox")
			L_177_.Name = "Textbox"
			L_177_.Parent = L_54_
			L_177_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_177_.ClipsDescendants = true
			L_177_.Position = UDim2.new(-0.541071415, 0, -0.532915354, 0)
			L_177_.Size = UDim2.new(0, 363, 0, 42)
			L_178_.CornerRadius = UDim.new(0, 5)
			L_178_.Name = "TextboxCorner"
			L_178_.Parent = L_177_
			L_179_.Name = "TextboxTitle"
			L_179_.Parent = L_177_
			L_179_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_179_.BackgroundTransparency = 1.000
			L_179_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_179_.Size = UDim2.new(0, 187, 0, 42)
			L_179_.Font = Enum.Font.Gotham
			L_179_.Text = L_174_arg1
			L_179_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_179_.TextSize = 14.000
			L_179_.TextXAlignment = Enum.TextXAlignment.Left
			L_180_.Name = "TextboxFrame"
			L_180_.Parent = L_179_
			L_180_.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			L_180_.Position = UDim2.new(1.28877008, 0, 0.214285716, 0)
			L_180_.Size = UDim2.new(0, 100, 0, 23)
			L_181_.CornerRadius = UDim.new(0, 5)
			L_181_.Name = "TextboxFrameCorner"
			L_181_.Parent = L_180_
			L_182_.Parent = L_180_
			L_182_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_182_.BackgroundTransparency = 1.000
			L_182_.Size = UDim2.new(0, 100, 0, 23)
			L_182_.Font = Enum.Font.Gotham
			L_182_.Text = ""
			L_182_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_182_.TextSize = 14.000
			L_182_.FocusLost:Connect(function(L_183_arg1)
				if L_183_arg1 then
					if #L_182_.Text > 0 then
						pcall(L_176_arg3, L_182_.Text)
						if L_175_arg2 then
							L_182_.Text = ""
						end
					end
				end
			end)
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
		end
		function L_56_:Bind(L_184_arg1, L_185_arg2, L_186_arg3)
			local L_187_ = false
			local L_188_ = L_185_arg2.Name
			local L_189_ = Instance.new("TextButton")
			local L_190_ = Instance.new("UICorner")
			local L_191_ = Instance.new("TextLabel")
			local L_192_ = Instance.new("TextLabel")
			L_189_.Name = "Bind"
			L_189_.Parent = L_54_
			L_189_.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			L_189_.Size = UDim2.new(0, 363, 0, 42)
			L_189_.AutoButtonColor = false
			L_189_.Font = Enum.Font.SourceSans
			L_189_.Text = ""
			L_189_.TextColor3 = Color3.fromRGB(0, 0, 0)
			L_189_.TextSize = 14.000
			L_190_.CornerRadius = UDim.new(0, 5)
			L_190_.Name = "BindCorner"
			L_190_.Parent = L_189_
			L_191_.Name = "BindTitle"
			L_191_.Parent = L_189_
			L_191_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_191_.BackgroundTransparency = 1.000
			L_191_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_191_.Size = UDim2.new(0, 187, 0, 42)
			L_191_.Font = Enum.Font.Gotham
			L_191_.Text = L_184_arg1
			L_191_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_191_.TextSize = 14.000
			L_191_.TextXAlignment = Enum.TextXAlignment.Left
			L_192_.Name = "BindText"
			L_192_.Parent = L_189_
			L_192_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			L_192_.BackgroundTransparency = 1.000
			L_192_.Position = UDim2.new(0.0358126722, 0, 0, 0)
			L_192_.Size = UDim2.new(0, 337, 0, 42)
			L_192_.Font = Enum.Font.Gotham
			L_192_.Text = L_188_
			L_192_.TextColor3 = Color3.fromRGB(255, 255, 255)
			L_192_.TextSize = 14.000
			L_192_.TextXAlignment = Enum.TextXAlignment.Right
			L_54_.CanvasSize = UDim2.new(0, 0, 0, L_55_.AbsoluteContentSize.Y)
			L_189_.MouseButton1Click:Connect(function()
				L_192_.Text = "..."
				L_187_ = true
				local L_193_ = game:GetService("UserInputService").InputBegan:wait()
				if L_193_.KeyCode.Name ~= "Unknown" then
					L_192_.Text = L_193_.KeyCode.Name
					L_188_ = L_193_.KeyCode.Name
					L_187_ = false
				else
					L_187_ = false
				end
			end)
			game:GetService("UserInputService").InputBegan:connect(function(L_194_arg1, L_195_arg2)
				if not L_195_arg2 then
					if L_194_arg1.KeyCode.Name == L_188_ and L_187_ == false then
						pcall(L_186_arg3)
					end
				end
			end)
		end
		return L_56_
	end
	return L_35_
end
return L_1_