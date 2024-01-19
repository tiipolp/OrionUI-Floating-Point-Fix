# Moderka Library
This documentation is for the stable release of Moderka Library.

## Booting the Library
```lua
local ModerkaLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Roblox/master/ModerkaLibrary.lua", true))()
```


## Creating a Window
```lua
local Window = ModerkaLibrary:AddWindow("Title of the library")
```


## Creating a Page
```lua
local Page = Window:AddPage("Page 1")
```


## Creating a Button
```lua
local Button = Page:AddButton("Button 1", function()
	print("Button 1 pressed!")
end)
```


## Creating a Label
```lua
local Label = Page:AddLabel("Label 1")
```


## Creating a Dropdown
```lua
local Dropdown = Page:AddDropdown("Dropdown 1", {"Value 1", "Value 2", "Value 3"}, function(Value)
	print(Value)
end)
```


## Creating a Colour Picker
```lua
local ColourPicker = Page:AddColourPicker("Colour Picker 1", "white", function(Value)
	print(Value)
end)
```


## Creating a Slider
```lua
local Slider = Page:AddSlider("Slider 1", {Minimum = 0, Maximum = 255, Default = 50}, function(Value)
	print(Value)
end)
```


## Creating a Toggle
```lua
local Toggle = Page:AddToggle("Toggle 1", false, function(Value)
	print(Value)
end)
```


## Creating a TextBox
```lua
local TextBox = Page:AddTextBox("TextBox 1", function(Value)
	print(Value)
end)
```


## Destroying the Interface
```lua
Window:Destroy()
```
Copyright (c) 2024 ttwiz_z