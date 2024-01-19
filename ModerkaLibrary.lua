-- Moderka Library
-- Version: 2.1.1
-- Copyright (c) 2024 ttwiz_z

local L_1_ = game:GetService("Players").LocalPlayer
local L_2_ = game:GetService("TweenService")
local L_3_ = game:GetService("UserInputService")
local L_4_ = game:GetService("CoreGui")
local L_6_ = game:GetService("Debris")
local L_7_ = game:GetService("TextService")
local L_8_ = L_1_:GetMouse()
local L_9_ = 1

local function L_11_func(L_204_arg1)
    local L_200_, L_201_, L_202_, L_203_
    local function L_25_func(L_205_arg1)
        local L_209_ = L_205_arg1.Position - L_202_
        local L_210_ = UDim2.new(L_203_.X.Scale, L_203_.X.Offset + L_209_.X, L_203_.Y.Scale, L_203_.Y.Offset + L_209_.Y)
        L_2_:Create(L_204_arg1, TweenInfo.new(0.075), {Position = L_210_}):Play()
    end
    L_204_arg1.InputBegan:Connect(function(L_206_arg1)
        if (L_206_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_206_arg1.UserInputType == Enum.UserInputType.Touch) and not L_3_:GetFocusedTextBox() then
            L_200_ = true
            L_202_ = L_206_arg1.Position
            L_203_ = L_204_arg1.Position
            L_206_arg1.Changed:Connect(function()
                if L_206_arg1.UserInputState == Enum.UserInputState.End then
                    L_200_ = false
                end
            end)
        end
    end)
    L_204_arg1.InputChanged:Connect(function(L_207_arg1)
        if L_207_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_207_arg1.UserInputType == Enum.UserInputType.Touch then
            L_201_ = L_207_arg1
        end
    end)
    L_3_.InputChanged:Connect(function(L_208_arg1)
        if L_208_arg1 == L_201_ and L_200_ then
            L_25_func(L_208_arg1)
        end
    end)
end
local function L_12_func(L_26_arg1)
    local L_27_, L_28_ = L_8_.X - L_26_arg1.AbsolutePosition.X, L_8_.Y - L_26_arg1.AbsolutePosition.Y
    local L_29_, L_30_ = L_26_arg1.AbsoluteSize.X, L_26_arg1.AbsoluteSize.Y
    L_27_, L_28_ = math.clamp(L_27_, 0, L_29_), math.clamp(L_28_, 0, L_30_)
    return L_27_, L_28_, L_27_ / L_29_, L_28_ / L_30_
end
local function L_13_func(L_31_arg1)
    local L_32_ = Instance.new(L_31_arg1 and "ImageButton" or "ImageLabel")
    L_32_.Name = "TitleIcon"
    L_32_.BackgroundTransparency = 1
    L_32_.Image = "rbxassetid://11889453688"
    L_32_.ImageRectOffset = Vector2.new(524, 764)
    L_32_.ImageRectSize = Vector2.new(36, 36)
    L_32_.Size = UDim2.new(0, 14, 0, 14)
    L_32_.Position = UDim2.new(1, -17, 0, 3)
    L_32_.Rotation = 180
    L_32_.ZIndex = L_9_
    return L_32_
end
local function L_14_func(L_33_arg1)
    local L_34_ = Instance.new(L_33_arg1 and "ImageButton" or "ImageLabel")
    L_34_.Name = "TickIcon"
    L_34_.BackgroundTransparency = 1
    L_34_.Image = "rbxassetid://11889453688"
    L_34_.ImageRectOffset = Vector2.new(312, 4)
    L_34_.ImageRectSize = Vector2.new(24, 24)
    L_34_.Size = UDim2.new(1, -6, 1, -6)
    L_34_.Position = UDim2.new(0, 3, 0, 3)
    L_34_.ZIndex = L_9_
    return L_34_
end
local function L_15_func(L_35_arg1)
    local L_36_ = Instance.new(L_35_arg1 and "ImageButton" or "ImageLabel")
    L_36_.Name = "DropdownIcon"
    L_36_.BackgroundTransparency = 1
    L_36_.Image = "rbxassetid://11889472861"
    L_36_.ImageRectOffset = Vector2.new(324, 364)
    L_36_.ImageRectSize = Vector2.new(36, 36)
    L_36_.Size = UDim2.new(0, 16, 0, 16)
    L_36_.Position = UDim2.new(1, -18, 0, 2)
    L_36_.ZIndex = L_9_
    return L_36_
end
local function L_16_func(L_37_arg1)
    local L_38_ = Instance.new(L_37_arg1 and "ImageButton" or "ImageLabel")
    L_38_.Name = "SearchIcon"
    L_38_.BackgroundTransparency = 1
    L_38_.Image = "rbxassetid://11889453688"
    L_38_.ImageRectOffset = Vector2.new(964, 324)
    L_38_.ImageRectSize = Vector2.new(36, 36)
    L_38_.Size = UDim2.new(0, 16, 0, 16)
    L_38_.Position = UDim2.new(0, 2, 0, 2)
    L_38_.ZIndex = L_9_
    return L_38_
end
local function L_17_func(L_39_arg1, L_40_arg2)
    local L_41_ = Instance.new(L_40_arg2 and "ImageButton" or "ImageLabel")
    L_41_.BackgroundTransparency = 1
    L_41_.Image = "rbxassetid://11889516025"
    L_41_.SliceCenter = Rect.new(100, 100, 100, 100)
    L_41_.SliceScale = math.clamp((L_39_arg1 or 5) * 0.01, 0.01, 1)
    L_41_.ScaleType = Enum.ScaleType.Slice
    L_41_.ZIndex = L_9_
    return L_41_
end
local function L_18_func()
    local L_42_ = Instance.new("ImageLabel")
    L_42_.Name = "DropShadow"
    L_42_.BackgroundTransparency = 1
    L_42_.Image = "rbxassetid://11889435033"
    L_42_.ImageTransparency = 0.3
    L_42_.Size = UDim2.new(1, 0, 1, 0)
    L_42_.ZIndex = L_9_
    return L_42_
end
local function L_19_func()
    local L_43_ = Instance.new("Frame")
    L_43_.BorderSizePixel = 0
    L_43_.ZIndex = L_9_
    return L_43_
end
local function L_20_func()
    local L_44_ = Instance.new("ScrollingFrame")
    L_44_.BackgroundTransparency = 1
    L_44_.BorderSizePixel = 0
    L_44_.ScrollBarThickness = 0
    L_44_.ZIndex = L_9_
    return L_44_
end
local function L_21_func(L_45_arg1, L_46_arg2)
    local L_47_ = Instance.new("TextButton")
    L_47_.Text = L_45_arg1
    L_47_.AutoButtonColor = false
    L_47_.Font = Enum.Font.Gotham
    L_47_.TextColor3 = Color3.fromRGB(255, 255, 255)
    L_47_.BackgroundTransparency = 1
    Instance.new("UITextSizeConstraint", L_47_).MaxTextSize = L_46_arg2 or 12
    L_47_.TextScaled = true
    L_47_.Size = UDim2.new(1, 0, 1, 0)
    L_47_.ZIndex = L_9_
    return L_47_
end
local function L_22_func(L_48_arg1, L_49_arg2)
    local L_50_ = Instance.new("TextBox")
    L_50_.Text = ""
    L_50_.PlaceholderText = L_48_arg1
    L_50_.Font = Enum.Font.Gotham
    L_50_.TextColor3 = Color3.fromRGB(255, 255, 255)
    L_50_.BackgroundTransparency = 1
    Instance.new("UITextSizeConstraint", L_50_).MaxTextSize = L_49_arg2 or 12
    L_50_.TextScaled = true
    L_50_.Size = UDim2.new(1, 0, 1, 0)
    L_50_.ZIndex = L_9_
    return L_50_
end
local function L_23_func(L_51_arg1, L_52_arg2)
    local L_53_ = Instance.new("TextLabel")
    L_53_.Text = L_51_arg1
    L_53_.Font = Enum.Font.Gotham
    L_53_.TextColor3 = Color3.fromRGB(255, 255, 255)
    L_53_.BackgroundTransparency = 1
    Instance.new("UITextSizeConstraint", L_53_).MaxTextSize = L_52_arg2 or 12
    L_53_.TextScaled = true
    L_53_.Size = UDim2.new(1, 0, 1, 0)
    L_53_.ZIndex = L_9_
    return L_53_
end
local function L_24_func(L_54_arg1, L_55_arg2)
    local L_56_ = L_2_:Create(L_54_arg1, TweenInfo.new(0.1), L_55_arg2)
    L_56_:Play()
    return L_56_
end

local L_25_ = {}
function L_25_:AddWindow(L_57_arg1)
    L_57_arg1 = L_57_arg1 or "Window"
    local L_58_, L_60_, L_61_, L_62_, L_63_
    L_60_ = Instance.new("ScreenGui")
    local L_5_ = pcall(function()
        L_60_.Parent = L_4_
        L_58_ = L_4_
    end)
    if not L_5_ then
        L_60_.Parent = L_1_:WaitForChild("PlayerGui", math.huge)
        L_60_.DisplayOrder = 1
        L_60_.ResetOnSpawn = false
        L_58_ = L_1_:WaitForChild("PlayerGui", math.huge)
    end
    local L_59_ = L_58_:FindFirstChild(L_57_arg1.."-ModerkaLibrary")
    if L_59_ then
        L_6_:AddItem(L_59_, 0)
    end
    L_60_.Name = L_57_arg1.."-ModerkaLibrary"
    L_61_ = L_19_func()
    L_61_.Name = "ContainerFrame"
    L_61_.Size = UDim2.new(0, 500, 0, 300)
    L_61_.Position = UDim2.new(0.5, -250, 0.5, -150)
    L_61_.BackgroundTransparency = 1
    L_11_func(L_61_)
    L_61_.Parent = L_60_
    L_62_ = L_18_func()
    L_62_.Name = "Shadow"
    L_62_.Parent = L_61_
    L_9_ += 1
    L_63_ = L_17_func(5)
    L_63_.ClipsDescendants = true
    L_63_.Name = "MainFrame"
    L_63_.Size = UDim2.new(1, -50, 1, -30)
    L_63_.Position = UDim2.new(0, 25, 0, 15)
    L_63_.ImageColor3 = Color3.fromRGB(30, 30, 30)
    L_63_.Parent = L_61_
    local L_64_, L_65_, L_66_
    L_64_ = L_20_func()
    L_64_.Name = "MenuBar"
    L_64_.BackgroundTransparency = 0.7
    L_64_.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    L_64_.Size = UDim2.new(0, 100, 0, 235)
    L_64_.Position = UDim2.new(0, 5, 0, 30)
    L_64_.CanvasSize = UDim2.new(0, 0, 0, 0)
    L_64_.Parent = L_63_
    L_65_ = L_17_func(5)
    L_65_.Name = "Display"
    L_65_.ImageColor3 = Color3.fromRGB(20, 20, 20)
    L_65_.Size = UDim2.new(1, -115, 0, 235)
    L_65_.Position = UDim2.new(0, 110, 0, 30)
    L_65_.Parent = L_63_
    L_66_ = L_17_func(5)
    L_66_.Name = "TitleBar"
    L_66_.ImageColor3 = Color3.fromRGB(40, 40, 40)
    L_66_.Size = UDim2.new(1, -10, 0, 20)
    L_66_.Position = UDim2.new(0, 5, 0, 5)
    L_66_.Parent = L_63_
    L_9_ += 1
    local L_67_, L_68_
    local L_69_ = true
    L_67_ = L_13_func(true)
    L_67_.Name = "Minimise"
    L_67_.Parent = L_66_
    L_68_ = L_23_func(L_57_arg1, 14)
    L_68_.Name = "TitleLabel"
    L_68_.Size = UDim2.new(1, -20, 1, 0)
    L_68_.Parent = L_66_
    L_67_.MouseButton1Down:Connect(function()
        L_69_ = not L_69_
        if not L_69_ then
            L_24_func(L_63_, {
                Size = UDim2.new(1, -50, 0, 30)
            })
            L_24_func(L_67_, {
                Rotation = 0
            })
            L_24_func(L_62_, {
                ImageTransparency = 1
            })
        else
            L_24_func(L_63_, {
                Size = UDim2.new(1, -50, 1, -30)
            })
            L_24_func(L_67_, {
                Rotation = 180
            })
            L_24_func(L_62_, {
                ImageTransparency = 0.3
            })
        end
    end)
    L_9_ += 1
    local L_70_
    L_70_ = Instance.new("UIListLayout")
    L_70_.SortOrder = Enum.SortOrder.LayoutOrder
    L_70_.Padding = UDim.new(0, 5)
    L_70_.Parent = L_64_
    local L_71_ = 0
    local L_72_ = {}
    function L_72_:Destroy()
        L_9_ = 1
        L_6_:AddItem(L_60_, 0)
    end
    function L_72_:AddPage(L_82_arg1, L_83_arg2)
        L_82_arg1 = L_82_arg1 or "Page"
        local L_84_ = (L_83_arg2 == nil) and true or L_83_arg2
        local L_85_ = L_17_func(5)
        L_85_.Name = L_82_arg1
        L_85_.Size = UDim2.new(1, 0, 0, 20)
        L_85_.LayoutOrder = L_71_
        L_85_.ImageColor3 = (L_71_ == 0) and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(40, 40, 40)
        L_85_.Parent = L_64_
        local L_86_ = L_21_func(L_82_arg1, 14)
        L_86_.Name = L_82_arg1.."_Button"
        L_86_.TextTransparency = (L_71_ == 0) and 0 or 0.5
        L_86_.Parent = L_85_
        L_86_.MouseButton1Down:Connect(function()
            task.spawn(function()
                for L_91_forvar1, L_92_forvar2 in next, L_64_:GetChildren() do
                    if L_92_forvar2:IsA("GuiObject") then
                        local L_93_ = string.lower(L_92_forvar2.Name) == string.lower(L_85_.Name)
                        local L_94_ = L_92_forvar2:FindFirstChild(L_92_forvar2.Name.."_Button")
                        L_24_func(L_92_forvar2, {
                            ImageColor3 = L_93_ and Color3.fromRGB(50, 50, 50) or Color3.fromRGB(40, 40, 40)
                        })
                        L_24_func(L_94_, {
                            TextTransparency = L_93_ and 0 or 0.5
                        })
                    end
                end
            end)
            task.spawn(function()
                for L_95_forvar1, L_96_forvar2 in next, L_65_:GetChildren() do
                    if L_96_forvar2:IsA("GuiObject") then
                        L_96_forvar2.Visible = string.lower(L_96_forvar2.Name) == string.lower(L_85_.Name)
                    end
                end
            end)
        end)
        local L_87_ = L_20_func()
        L_87_.Visible = (L_71_ == 0)
        L_87_.Name = L_82_arg1
        L_87_.Size = UDim2.new(1, 0, 1, 0)
        L_87_.Parent = L_65_
        L_71_ += 1
        local L_88_ = Instance.new("UIListLayout")
        L_88_.SortOrder = Enum.SortOrder.LayoutOrder
        L_88_.Padding = UDim.new(0, 5)
        L_88_.Parent = L_87_
        L_88_:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
            local L_97_ = L_88_.AbsoluteContentSize.Y
            local L_98_ = L_87_.AbsoluteWindowSize.Y
            L_87_.CanvasSize = UDim2.new(0, 0, (L_97_ / L_98_) + 0.05, 0)
        end)
        local L_89_ = Instance.new("UIPadding")
        L_89_.PaddingBottom = UDim.new(0, 5)
        L_89_.PaddingTop = UDim.new(0, 5)
        L_89_.PaddingLeft = UDim.new(0, 5)
        L_89_.PaddingRight = UDim.new(0, 5)
        L_89_.Parent = L_87_
        if L_84_ then
            local L_99_ = L_17_func(5)
            L_99_.Name = "SearchBar"
            L_99_.ImageColor3 = Color3.fromRGB(35, 35, 35)
            L_99_.Size = UDim2.new(1, 0, 0, 20)
            L_99_.Parent = L_87_
            local L_100_ = L_22_func("Search...")
            L_100_.Name = "SearchInput"
            L_100_.Position = UDim2.new(0, 20, 0, 0)
            L_100_.Size = UDim2.new(1, -20, 1, 0)
            L_100_.TextTransparency = 0.5
            L_100_.TextXAlignment = Enum.TextXAlignment.Left
            L_100_.Parent = L_99_
            local L_101_ = L_16_func()
            L_101_.Parent = L_99_
            L_100_:GetPropertyChangedSignal("Text"):Connect(function()
                local L_102_ = L_100_.Text
                for L_103_forvar1, L_104_forvar2 in next, L_87_:GetChildren() do
                    if L_104_forvar2:IsA("Frame") or string.find(string.lower(L_104_forvar2.Name), "-textbox") then
                        if not string.find(string.lower(L_104_forvar2.Name), "-label") then
                            if string.find(string.lower(L_104_forvar2.Name), string.lower(L_102_)) then
                                L_104_forvar2.Visible = true
                            else
                                L_104_forvar2.Visible = false
                            end
                        end
                    end
                end
            end)
        end
        local L_90_ = {}
        function L_90_:AddButton(L_105_arg1, L_106_arg2, L_107_arg3, L_108_arg4)
            L_105_arg1 = L_105_arg1 or "Button"
            local L_109_ = L_19_func()
            L_109_.Name = L_105_arg1.."-Button"
            L_109_.Size = UDim2.new(1, 0, 0, 20)
            L_109_.BackgroundTransparency = 1
            L_109_.Parent = L_107_arg3 or L_87_
            local L_110_ = L_17_func(5)
            L_110_.Name = "ButtonForeground"
            L_110_.Size = UDim2.new(1, 0, 1, 0)
            L_110_.ImageColor3 = Color3.fromRGB(35, 35, 35)
            L_110_.Parent = L_109_
            if L_108_arg4 then
                local L_112_ = L_7_:GetTextSize(L_105_arg1, 12, Enum.Font.Gotham, Vector2.new(0, 0))
                local L_113_ = L_19_func()
                L_113_.Size = UDim2.new(0, L_112_.X, 0, 1)
                L_113_.Position = UDim2.new(0.5, (-L_112_.X / 2) - 1, 1, -1)
                L_113_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                L_113_.BackgroundTransparency = 0.5
                L_113_.Parent = L_110_
            end
            local L_111_ = L_21_func(L_105_arg1, 12)
            L_111_.Parent = L_110_
            L_111_.MouseButton1Down:Connect(function()
                pcall(L_106_arg2)
                L_24_func(L_110_, {
                    ImageColor3 = Color3.fromRGB(45, 45, 45)
                })
                L_24_func(L_111_, {
                    TextTransparency = 0.5
                })
                task.wait(0.1)
                L_24_func(L_110_, {
                    ImageColor3 = Color3.fromRGB(35, 35, 35)
                })
                L_24_func(L_111_, {
                    TextTransparency = 0
                })
            end)
        end
        function L_90_:AddLabel(L_114_arg1)
            L_114_arg1 = L_114_arg1 or "Label"
            local L_115_ = L_19_func()
            L_115_.Name = L_114_arg1.."-Label"
            L_115_.Size = UDim2.new(1, 0, 0, 20)
            L_115_.BackgroundTransparency = 1
            L_115_.Parent = L_87_
            local L_116_ = L_17_func(5)
            L_116_.Name = "LabelForeground"
            L_116_.ImageColor3 = Color3.fromRGB(45, 45, 45)
            L_116_.Size = UDim2.new(1, 0, 1, 0)
            L_116_.Parent = L_115_
            local L_117_ = L_23_func(L_114_arg1, 12)
            L_117_.Parent = L_116_
        end
        function L_90_:AddDropdown(L_118_arg1, L_119_arg2, L_120_arg3)
            L_118_arg1 = L_118_arg1 or "Dropdown"
            local L_121_ = L_119_arg2 or {}
            local L_122_ = false
            local L_123_ = L_19_func()
            L_123_.Size = UDim2.new(1, 0, 0, 20)
            L_123_.Name = L_118_arg1.."-Dropdown"
            L_123_.BackgroundTransparency = 1
            L_123_.Parent = L_87_
            local L_124_ = L_17_func(5)
            L_124_.ClipsDescendants = true
            L_124_.ImageColor3 = Color3.fromRGB(35, 35, 35)
            L_124_.Size = UDim2.new(1, 0, 1, 0)
            L_124_.Parent = L_123_
            local L_125_ = L_15_func(true)
            L_125_.Parent = L_124_
            local L_126_ = L_23_func(L_118_arg1, 12)
            L_126_.Size = UDim2.new(1, 0, 0, 20)
            L_126_.Parent = L_124_
            local L_127_ = L_19_func()
            L_127_.Position = UDim2.new(0, 0, 0, 20)
            L_127_.BackgroundTransparency = 1
            L_127_.Size = UDim2.new(1, 0, 0, #L_121_ * 20)
            L_127_.Parent = L_124_
            local L_128_ = Instance.new("UIListLayout")
            L_128_.Parent = L_127_
            for L_129_forvar1, L_130_forvar2 in next, L_121_ do
                L_90_:AddButton(L_130_forvar2, function()
                    pcall(L_120_arg3, L_130_forvar2)
                    L_126_.Text = L_118_arg1..": "..L_130_forvar2
                end, L_127_, L_129_forvar1 < #L_121_)
            end
            L_125_.MouseButton1Down:Connect(function()
                L_122_ = not L_122_
                L_24_func(L_123_, {
                    Size = L_122_ and UDim2.new(1, 0, 0, 20 + (#L_121_ * 20)) or UDim2.new(1, 0, 0, 20)
                })
                L_24_func(L_125_, {
                    Rotation = L_122_ and 135 or 0
                })
            end)
        end
        function L_90_:AddColourPicker(L_131_arg1, L_132_arg2, L_133_arg3)
            L_131_arg1 = L_131_arg1 or "ColourPicker"
            local L_134_ = L_132_arg2 or Color3.fromRGB(255, 255, 255)
            local L_135_ = {
                white = Color3.fromRGB(255, 255, 255),
                black = Color3.fromRGB(0, 0, 0),
                red = Color3.fromRGB(255, 0, 0),
                green = Color3.fromRGB(0, 255, 0),
                blue = Color3.fromRGB(0, 0, 255)
            }
            if typeof(L_134_) == "table" then
                L_134_ = Color3.fromRGB(L_134_[1] or 255, L_134_[2] or 255, L_134_[3] or 255)
            elseif typeof(L_134_) == "string" then
                L_134_ = L_135_[string.lower(L_134_)] or L_135_["white"]
            end
            local L_136_ = L_19_func()
            L_136_.ClipsDescendants = true
            L_136_.Size = UDim2.new(1, 0, 0, 20)
            L_136_.Name = L_131_arg1.."-ColourPicker"
            L_136_.BackgroundTransparency = 1
            L_136_.Parent = L_87_
            local L_137_ = Instance.new("Color3Value")
            L_137_.Value = L_134_
            L_137_.Parent = L_136_
            local L_138_, L_139_, L_140_ = L_17_func(5), L_17_func(5), L_17_func(5)
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
            local L_141_ = Instance.new("UIListLayout")
            L_141_.SortOrder = Enum.SortOrder.LayoutOrder
            L_141_.Parent = L_140_
            local L_142_ = L_90_:AddSlider("R", {
                Minimum = 0,
                Maximum = 255,
                Default = L_137_.Value.R * 255
            }, function(L_150_arg1)
                L_137_.Value = Color3.fromRGB(L_150_arg1, L_137_.Value.G * 255, L_137_.Value.B * 255)
                pcall(L_133_arg3, L_137_.Value)
            end, L_140_)
            local L_143_ = L_90_:AddSlider("G", {
                Minimum = 0,
                Maximum = 255,
                Default = L_137_.Value.G * 255
            }, function(L_151_arg1)
                L_137_.Value = Color3.fromRGB(L_137_.Value.R * 255, L_151_arg1, L_137_.Value.B * 255)
                pcall(L_133_arg3, L_137_.Value)
            end, L_140_)
            local L_144_ = L_90_:AddSlider("B", {
                Minimum = 0,
                Maximum = 255,
                Default = L_137_.Value.B * 255
            }, function(L_152_arg1)
                L_137_.Value = Color3.fromRGB(L_137_.Value.R * 255, L_137_.Value.G * 255, L_152_arg1)
                pcall(L_133_arg3, L_137_.Value)
            end, L_140_)
            local L_145_, L_146_ = L_19_func(), L_19_func()
            L_145_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            L_145_.Position = UDim2.new(1, -5, 0, 0)
            L_145_.Size = UDim2.new(0, 5, 1, 0)
            L_145_.Parent = L_138_
            L_146_.BackgroundColor3 = L_134_
            L_146_.Size = UDim2.new(0, 5, 1, 0)
            L_146_.Parent = L_139_
            local L_147_ = L_23_func(L_131_arg1, 12)
            L_147_.Size = UDim2.new(1, 0, 0, 20)
            L_147_.Parent = L_138_
            L_137_:GetPropertyChangedSignal("Value"):Connect(function()
                local L_153_ = L_137_.Value
                L_146_.BackgroundColor3 = L_153_
                L_139_.ImageColor3 = L_153_
            end)
            local L_148_ = false
            local L_149_ = L_21_func("")
            L_149_.Parent = L_139_
            L_149_.MouseButton1Down:Connect(function()
                L_148_ = not L_148_
                L_24_func(L_136_, {
                    Size = L_148_ and UDim2.new(1, 0, 0, 80) or UDim2.new(1, 0, 0, 20)
                })
            end)
        end
        function L_90_:AddSlider(L_154_arg1, L_155_arg2, L_156_arg3, L_157_arg4)
            L_154_arg1 = L_154_arg1 or "Slider"
            local L_158_ = L_155_arg2 or {Minimum = 0, Maximum = 255, Default = 50}
            local L_159_ = L_158_.Minimum or L_158_.minimum or L_158_.Min or L_158_.min
            local L_160_ = L_158_.Maximum or L_158_.maximum or L_158_.Max or L_158_.max
            local L_161_ = L_158_.Default or L_158_.default or L_158_.Def or L_158_.def
            if L_159_ > L_160_ then
                local L_167_ = L_159_
                L_159_ = L_160_
                L_160_ = L_167_
            end
            L_161_ = math.clamp(L_161_, L_159_, L_160_)
            local L_162_ = L_161_ / L_160_
            local L_163_ = L_19_func()
            L_163_.Name = L_154_arg1.."-Slider"
            L_163_.Size = UDim2.new(1, 0, 0, 20)
            L_163_.BackgroundTransparency = 1
            L_163_.Parent = L_157_arg4 or L_87_
            local L_164_ = L_17_func(5)
            L_164_.Name = "SliderForeground"
            L_164_.ImageColor3 = Color3.fromRGB(35, 35, 35)
            L_164_.Size = UDim2.new(1, 0, 1, 0)
            L_164_.Parent = L_163_
            local L_165_ = L_21_func(L_154_arg1..": "..L_161_)
            L_165_.Size = UDim2.new(1, 0, 1, 0)
            L_165_.ZIndex = 6
            L_165_.Parent = L_164_
            local L_166_ = L_17_func(5)
            L_166_.Size = UDim2.new(L_162_, 0, 1, 0)
            L_166_.ImageColor3 = Color3.fromRGB(70, 70, 70)
            L_166_.ZIndex = 5
            L_166_.ImageTransparency = 0.7
            L_166_.Parent = L_165_
            L_165_.MouseButton1Down:Connect(function()
                L_24_func(L_166_, {
                    ImageTransparency = 0.5
                })
                local L_168_, L_169_, L_170_, L_171_ = L_12_func(L_165_)
                local L_172_ = math.floor(L_159_ + ((L_160_ - L_159_) * L_170_))
                pcall(L_156_arg3, L_172_)
                L_165_.Text = L_154_arg1..": "..tostring(L_172_)
                local L_173_ = UDim2.new(L_170_, 0, 1, 0)
                L_24_func(L_166_, {
                    Size = L_173_
                })
                local L_174_, L_175_
                L_174_ = L_8_.Move:Connect(function()
                    L_24_func(L_166_, {
                        ImageTransparency = 0.5
                    })
                    local L_176_, L_177_, L_178_, L_179_ = L_12_func(L_165_)
                    local L_180_ = math.floor(L_159_ + ((L_160_ - L_159_) * L_178_))
                    pcall(L_156_arg3, L_180_)
                    L_165_.Text = L_154_arg1..": "..tostring(L_180_)
                    local L_181_ = UDim2.new(L_178_, 0, 1, 0)
                    L_24_func(L_166_, {
                        Size = L_181_
                    })
                end)
                L_175_ = L_3_.InputEnded:Connect(function(L_182_arg1)
                    if L_182_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_182_arg1.UserInputType == Enum.UserInputType.Touch then
                        L_24_func(L_166_, {
                            ImageTransparency = 0.7
                        })
                        L_174_:Disconnect()
                        L_175_:Disconnect()
                    end
                end)
            end)
        end
        function L_90_:AddToggle(L_183_arg1, L_184_arg2, L_185_arg3)
            L_183_arg1 = L_183_arg1 or "Toggle"
            local L_186_ = L_184_arg2 or false
            local L_187_ = L_19_func()
            L_187_.Name = L_183_arg1.."-Toggle"
            L_187_.Size = UDim2.new(1, 0, 0, 20)
            L_187_.BackgroundTransparency = 1
            L_187_.Parent = L_87_
            local L_188_, L_189_, L_190_, L_191_ = L_17_func(5), L_17_func(5), L_19_func(), L_14_func()
            local L_192_, L_193_ = L_19_func(), L_19_func()
            L_188_.Size = UDim2.new(1, -22, 1, 0)
            L_188_.ImageColor3 = Color3.fromRGB(35, 35, 35)
            L_188_.Parent = L_187_
            L_189_.Position = UDim2.new(1, -20, 0, 0)
            L_189_.Size = UDim2.new(0, 20, 1, 0)
            L_189_.ImageColor3 = Color3.fromRGB(45, 45, 45)
            L_189_.Parent = L_187_
            L_192_.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            L_192_.Size = UDim2.new(0, 5, 1, 0)
            L_192_.Position = UDim2.new(1, -5, 0, 0)
            L_192_.Parent = L_188_
            L_193_.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            L_193_.Size = UDim2.new(0, 5, 1, 0)
            L_193_.Parent = L_189_
            L_190_.BackgroundColor3 = L_186_ and Color3.fromRGB(0, 255, 109) or Color3.fromRGB(255, 160, 160)
            L_190_.Position = UDim2.new(1, -22, 0.2, 0)
            L_190_.Size = UDim2.new(0, 2, 0.6, 0)
            L_190_.Parent = L_187_
            L_191_.ImageTransparency = L_186_ and 0 or 1
            L_191_.Parent = L_189_
            local L_194_ = L_21_func(L_183_arg1, 12)
            L_194_.Name = "ToggleButton"
            L_194_.Size = UDim2.new(1, 0, 1, 0)
            L_194_.Parent = L_188_
            L_194_.MouseButton1Down:Connect(function()
                L_186_ = not L_186_
                L_24_func(L_190_, {
                    BackgroundColor3 = L_186_ and Color3.fromRGB(0, 255, 109) or Color3.fromRGB(255, 160, 160)
                })
                L_24_func(L_191_, {
                    ImageTransparency = L_186_ and 0 or 1
                })
                pcall(L_185_arg3, L_186_)
            end)
        end
        function L_90_:AddTextBox(L_195_arg1, L_196_arg2, L_197_arg3)
            L_195_arg1 = L_195_arg1 or "TextBox"
            local L_198_ = L_17_func(5)
            L_198_.Name = L_195_arg1.."-TextBox"
            L_198_.ImageColor3 = Color3.fromRGB(35, 35, 35)
            L_198_.Size = UDim2.new(1, 0, 0, 20)
            L_198_.Parent = L_87_
            local L_199_ = L_22_func(L_195_arg1)
            L_199_.Name = L_195_arg1
            L_199_.TextTransparency = 0.5
            L_199_.TextXAlignment = Enum.TextXAlignment.Center
            L_199_.Parent = L_198_
            L_199_.Focused:Connect(function()
                L_199_.TextXAlignment = Enum.TextXAlignment.Left
            end)
            L_199_.FocusLost:Connect(function()
                L_199_.TextXAlignment = Enum.TextXAlignment.Center
                if #L_199_.Text > 0 then
                    pcall(L_196_arg2, L_199_.Text)
                    if L_197_arg3 then
                        L_199_.Text = ""
                    end
                end
            end)
        end
        return L_90_
    end
    return L_72_
end
return L_25_