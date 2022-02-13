-- ttwiz_z#2081

local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local ttwizzLib = {}
function ttwizzLib:AddWindow(Title)
    local ttwizzUI = Instance.new("ScreenGui")
    local Window = Instance.new("Frame")
    local List = Instance.new("ScrollingFrame")
    local Layout = Instance.new("UIListLayout")
    local Label = Instance.new("TextLabel")
    local FirstCorner = Instance.new("UICorner")
    local Line = Instance.new("Frame")
    local SecondCorner = Instance.new("UICorner")
    ttwizzUI.Name = HttpService:GenerateGUID(false)
    ttwizzUI.Parent = CoreGui
    ttwizzUI.DisplayOrder = 1
    ttwizzUI.ResetOnSpawn = false
    Window.Name = HttpService:GenerateGUID(false)
    Window.Parent = ttwizzUI
    Window.Active = true
    Window.Draggable = true
    Window.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Window.Position = UDim2.new(0.0540000014, 0, 0.103, 0)
    Window.Size = UDim2.new(0, 440, 0, 270)
    Window.ZIndex = 2
    List.Name = HttpService:GenerateGUID(false)
    List.Parent = Window
    List.Active = true
    List.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    List.BorderSizePixel = 0
    List.Position = UDim2.new(0, 0, 0.122222222, 0)
    List.Size = UDim2.new(0, 440, 0, 222)
    List.ZIndex = 3
    List.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    List.CanvasSize = UDim2.new(0, 0, 50, 0)
    List.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    List.ScrollBarThickness = 6
    List.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Layout.Name = HttpService:GenerateGUID(false)
    Layout.Parent = List
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Layout.SortOrder = Enum.SortOrder.LayoutOrder
    Label.Name = HttpService:GenerateGUID(false)
    Label.Parent = Window
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1
    Label.Size = UDim2.new(0, 440, 0, 33)
    Label.ZIndex = 3
    Label.Font = Enum.Font.GothamSemibold
    pcall(function()
        Label.Text = Title or "Label"
    end)
    Label.TextColor3 = Color3.fromRGB(200, 200, 200)
    Label.TextSize = 13
    FirstCorner.CornerRadius = UDim.new(0, 4)
    FirstCorner.Name = HttpService:GenerateGUID(false)
    FirstCorner.Parent = Window
    Line.Name = HttpService:GenerateGUID(false)
    Line.Parent = Window
    Line.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Line.Position = UDim2.new(0, 0, 0.944444418, 0)
    Line.Size = UDim2.new(1, 0, 0, 14)
    Line.ZIndex = 2
    SecondCorner.CornerRadius = UDim.new(0, 4)
    SecondCorner.Name = HttpService:GenerateGUID(false)
    SecondCorner.Parent = Line
    local ttwizzLibrary = {}
    function ttwizzLibrary:AddButton(Text, Callback)
        local Button = Instance.new("TextButton")
        Button.Name = HttpService:GenerateGUID(false)
        Button.Parent = List
        Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Button.BackgroundTransparency = 1
        Button.Size = UDim2.new(0, 100, 0, 20)
        Button.ZIndex = 4
        Button.Font = Enum.Font.GothamSemibold
        pcall(function()
            Button.Text = Text or "Button"
        end)
        Button.TextColor3 = Color3.fromRGB(200, 200, 200)
        Button.TextSize = 13
        Callback = Callback or function() end
        Button.MouseButton1Down:Connect(function()
            pcall(Callback)
        end)
    end
    return ttwizzLibrary
end

return ttwizzLib