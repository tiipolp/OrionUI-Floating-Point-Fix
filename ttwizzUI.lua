-- ttwiz_z#2081

local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local Debris = game:GetService("Debris")
local ttwizzLib = {}
function ttwizzLib:AddWindow(Title)
    local ttwizzUI = Instance.new("ScreenGui")
    local Window = Instance.new("Frame")
    local Head = Instance.new("Frame")
    local Close = Instance.new("TextButton")
    local Label = Instance.new("TextLabel")
    local SecondCorner = Instance.new("UICorner")
    local Field = Instance.new("ScrollingFrame")
    local Grid = Instance.new("UIGridLayout")
    local FirstCorner = Instance.new("UICorner")
    ttwizzUI.Name = HttpService:GenerateGUID(false)
    ttwizzUI.Parent = CoreGui
    ttwizzUI.DisplayOrder = 1
    ttwizzUI.ResetOnSpawn = false
    Window.Name = "Window"
    Window.Parent = ttwizzUI
    Window.Active = true
    Window.Draggable = true
    Window.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    Window.BorderSizePixel = 0
    Window.Position = UDim2.new(0.0543109924, 0, 0.103222892, 0)
    Window.Size = UDim2.new(0, 689, 0, 320)
    Head.Name = "Head"
    Head.Parent = Window
    Head.BackgroundColor3 = Color3.fromRGB(94, 94, 94)
    Head.BackgroundTransparency = 0.8
    Head.BorderSizePixel = 0
    Head.Position = UDim2.new(-0, 0, -0.00296382909, 0)
    Head.Size = UDim2.new(0, 689, 0, 25)
    Close.Name = "Close"
    Close.Parent = Head
    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close.BackgroundTransparency = 1
    Close.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0.969521046, 0, 0.0379370116, 0)
    Close.Size = UDim2.new(0, 21, 0, 25)
    Close.Font = Enum.Font.Arial
    Close.Text = "X"
    Close.TextColor3 = Color3.fromRGB(255, 255, 255)
    Close.TextSize = 14
    Close.MouseButton1Down:Connect(function()
        Debris:AddItem(ttwizzUI, 0)
    end)
    Label.Name = "Label"
    Label.Parent = Head
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1
    Label.BorderSizePixel = 0
    Label.Position = UDim2.new(0.330062926, 0, 0.0379370116, 0)
    Label.Size = UDim2.new(0, 200, 0, 25)
    Label.Font = Enum.Font.SourceSans
    Label.Text = Title or "Label"
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextScaled = true
    SecondCorner.Name = "SecondCorner"
    SecondCorner.Parent = Head
    Field.Name = "Field"
    Field.Parent = Window
    Field.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
    Field.BackgroundTransparency = 1
    Field.BorderColor3 = Color3.fromRGB(61, 61, 61)
    Field.BorderSizePixel = 0
    Field.Position = UDim2.new(0, 0, 0.078125, 0)
    Field.Size = UDim2.new(1, 0, 0.921875, 0)
    Field.ZIndex = 3
    Field.BottomImage = "rbxassetid://8793402379"
    Field.CanvasSize = UDim2.new(0, 0, 100, 0)
    Field.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    Field.MidImage = "rbxassetid://8793402379"
    Field.ScrollBarThickness = 10
    Field.TopImage = "rbxassetid://8793402379"
    Grid.Name = "Grid"
    Grid.Parent = Field
    Grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Grid.SortOrder = Enum.SortOrder.LayoutOrder
    Grid.CellPadding = UDim2.new(0, 1, 0, 1)
    Grid.CellSize = UDim2.new(0, 92, 0, 30)
    FirstCorner.Name = "FirstCorner"
    FirstCorner.Parent = Window
    local ttwizzLibrary = {}
    function ttwizzLibrary:AddButton(Text, Callback)
        local Button = Instance.new("TextButton")
        Button.Name = "Button"
        Button.Parent = Field
        Button.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
        Button.BackgroundTransparency = 0.8
        Button.BorderSizePixel = 0
        Button.Position = UDim2.new(-0.000620716251, 0, -0.00101351738, 0)
        Button.Size = UDim2.new(0, 92, 0, 30)
        Button.Font = Enum.Font.Arial
        Button.Text = Text or "Button"
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)
        Button.TextScaled = true
        Callback = Callback or function() end
        Button.MouseButton1Down:Connect(function()
            pcall(Callback)
        end)
    end
    return ttwizzLibrary
end

return ttwizzLib