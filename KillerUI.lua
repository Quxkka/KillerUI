local KillerUI = {}
function KillerUI:createCell()
	
local KillerXUI = Instance.new("ScreenGui")
local MainUI = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
	
KillerXUI.Name = "KillerXUI"
KillerXUI.Parent = game.CoreGui
KillerXUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainUI.Name = "MainUI"
MainUI.Parent = KillerXUI
MainUI.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
MainUI.BackgroundTransparency = 1
MainUI.BorderSizePixel = 0
MainUI.Position = UDim2.new(0.012369792, 0, 0.0249999724, 0)
MainUI.Size = UDim2.new(0.9765625, 0, 0.953883827, 0)

UIGridLayout.Parent = MainUI
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 5)
UIGridLayout.CellSize = UDim2.new(0, 150, 0, 189)

local MainUI = {}

function MainUI:createMain(text)
	
local Main = Instance.new("ImageLabel")
local MainSection = Instance.new("ScrollingFrame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local MainTitle = Instance.new("TextLabel")
local MainBar = Instance.new("Frame")
		
local am = 0
local UserInputService = game:GetService("UserInputService")
local out = false
		
Main.Name = "Main"
Main.Parent = MainUI
Main.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Main.BackgroundTransparency = 1
Main.ClipsDescendants = false
Main.Position = UDim2.new(0.08094199, 0, 0.0745030344, 0)
Main.Size = UDim2.new(0, 150, 0, 189)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.06

MainSection.Name = "MainSection"
MainSection.Parent = Main
MainSection.Active = true
MainSection.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
MainSection.BorderSizePixel = 0
MainSection.ClipsDescendants = false
MainSection.Position = UDim2.new(0, 0, 0.174603179, 0)
MainSection.Size = UDim2.new(0, 150, 0, 148)
MainSection.ScrollBarThickness = 0
MainSection.ScrollingEnabled = false
	
UIGridLayout_2.Parent = MainSection
UIGridLayout_2.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellPadding = UDim2.new(0, 5, 0, 10)
UIGridLayout_2.CellSize = UDim2.new(0, 135, 0, 28)
	
MainTitle.Name = "ForcesTitle"
MainTitle.Parent = Main
MainTitle.BackgroundColor3 = Color3.new(1, 1, 1)
MainTitle.BackgroundTransparency = 1
MainTitle.BorderSizePixel = 0
MainTitle.ClipsDescendants = false
MainTitle.Position = UDim2.new(0, 0, 0.0343914144, 0)
MainTitle.Size = UDim2.new(0, 149, 0, 18)
MainTitle.Font = Enum.Font.GothamSemibold
MainTitle.TextColor3 = Color3.new(1, 1, 1)
MainTitle.TextScaled = true
MainTitle.TextSize = 14
MainTitle.TextWrapped = true
MainTitle.Text = text

MainBar.Name = "MainBar"
MainBar.Parent = Main
MainBar.BackgroundColor3 = Color3.new(1, 0, 0.313726)
MainBar.BorderSizePixel = 0
MainBar.Position = UDim2.new(0, 0, 0.127000004, 2)
MainBar.Size = UDim2.new(0, 150, 0, 2)
		
UserInputService.InputBegan:connect(function(keyCode)
	if keyCode.keyCode == Enum.KeyCode.RightControl then
		if out then
			Main:TweenPosition(UDim2.new(Main.AbsolutePosition.X,0, Main.AbsolutePosition.Y,0), "Out", "Quart", 0.6, true)
			out = false
		else
			Main:TweenPosition(UDim2.new(Main.AbsolutePosition.X,0, Main.AbsolutePosition.Y,0), "Out", "Quart", 0.6, true)
			out = true
		end
	end
		end)
				
local FeaturesUI = {}

function FeaturesUI:createToggle(text, callback)
			
local active = false
callback = callback or function() end
local Toggle = Instance.new("ImageLabel")
local ToggleText = Instance.new("TextLabel")
local ToggleInOut = Instance.new("ImageButton")
	
Toggle.Name = "Toggle"
Toggle.Parent = MainSection
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.ClipsDescendants = true
Toggle.Position = UDim2.new(0.0466666669, 0, 0, 0)
Toggle.Size = UDim2.new(0, 135, 0, 28)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.04

ToggleText.Name = "ToggleText"
ToggleText.Parent = Toggle
ToggleText.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleText.BackgroundTransparency = 1
ToggleText.BorderSizePixel = 0
ToggleText.Position = UDim2.new(0.0444444455, 0, 0, 0)
ToggleText.Size = UDim2.new(0, 90, 0, 28)
ToggleText.Font = Enum.Font.GothamSemibold
ToggleText.Text = text
ToggleText.TextColor3 = Color3.new(1, 1, 1)
ToggleText.TextSize = 14
ToggleText.TextXAlignment = Enum.TextXAlignment.Left

ToggleInOut.Name = "ToggleInOut"
ToggleInOut.Parent = Toggle
ToggleInOut.BackgroundColor3 = Color3.new(1, 1, 1)
ToggleInOut.BackgroundTransparency = 1
ToggleInOut.BorderSizePixel = 0
ToggleInOut.Position = UDim2.new(0.770370424, 0, 0.142857075, 0)
ToggleInOut.Size = UDim2.new(0, 20, 0, 20)
ToggleInOut.Image = "rbxassetid://3570695787"
ToggleInOut.ImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ToggleInOut.ScaleType = Enum.ScaleType.Slice
ToggleInOut.SliceCenter = Rect.new(100, 100, 100, 100)
ToggleInOut.SliceScale = 0.04
ToggleInOut.MouseButton1Click:Connect(function()
				if active == active then
					game:GetService("TweenService"):Create(ToggleInOut, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(255, 0, 80)}):Play()
					active = true
				else
					game:GetService("TweenService"):Create(ToggleInOut, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(40, 40, 40)}):Play()
					active = false
				end
			end)
end
function FeaturesUI:createButton(text, callback)
			
local button = false		
callback = callback or function()end
local Button = Instance.new("ImageLabel")
local ButtonText = Instance.new("TextButton")
local LightEffect = Instance.new("Frame")
	
Button.Name = "Button"
Button.Parent = MainSection
Button.BackgroundColor3 = Color3.new(1, 1, 1)
Button.BackgroundTransparency = 1
Button.ClipsDescendants = true
Button.Position = UDim2.new(0.0466666669, 0, 0, 0)
Button.Size = UDim2.new(0, 135, 0, 28)
Button.Image = "rbxassetid://3570695787"
Button.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(100, 100, 100, 100)
Button.SliceScale = 0.04

ButtonText.Name = "ButtonText"
ButtonText.Parent = Button
ButtonText.BackgroundColor3 = Color3.new(1, 1, 1)
ButtonText.BackgroundTransparency = 1
ButtonText.BorderSizePixel = 0
ButtonText.Size = UDim2.new(0, 135, 0, 28)
ButtonText.AutoButtonColor = false
ButtonText.Font = Enum.Font.GothamSemibold
ButtonText.TextColor3 = Color3.new(1, 1, 1)
ButtonText.TextSize = 14
ButtonText.Text = text

LightEffect.Name = "LightEffect"
LightEffect.Parent = Button
LightEffect.BackgroundColor3 = Color3.new(1, 1, 1)
LightEffect.BackgroundTransparency = 1
LightEffect.BorderSizePixel = 0
LightEffect.Size = UDim2.new(0, 7, 0, 28)
			
ButtonText.MouseButton1Click:Connect(function()
	game:GetService("TweenService"):Create(LightEffect, TweenInfo.new(0.1), {BackgroundTransparency = 0}):Play()
	LightEffect:TweenPosition(UDim2.new(0.948,0, 0,0), "Out", "Quart", 0.8, true)
	LightEffect:TweenSize(UDim2.new(0,14, 0,27), "Out", "Quart", 0.4, true)
	wait(0.1)
	LightEffect:TweenSize(UDim2.new(0,7, 0,27), "Out", "Quart", 0.4, true)
	wait(0.15)
		game:GetService("TweenService"):Create(LightEffect, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
	wait(0.15)
	LightEffect:TweenPosition(UDim2.new(0,0, 0,0), "Out", "Quart", 0.01, true)
pcall(callback)

end)
		end
function FeaturesUI:createSlider(minvalue, maxvalue, callback)
	

local Slider = Instance.new("ImageLabel")
local SliderCont = Instance.new("ImageLabel")
local SliderButton = Instance.new("ImageButton")
local SliderInner = Instance.new("ImageLabel")
local SliderValue = Instance.new("TextLabel")
			
	callback = callback or function() end		
			
local minvalue = minvalue
local maxvalue = maxvalue
local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
local Value;

Slider.Name = "Slider"
Slider.Parent = MainSection
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.ClipsDescendants = true
Slider.Position = UDim2.new(0.0466666669, 0, 0, 0)
Slider.Size = UDim2.new(0, 135, 0, 28)
Slider.Image = "rbxassetid://3570695787"
Slider.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(100, 100, 100, 100)
Slider.SliceScale = 0.04

SliderCont.Name = "SliderCont"
SliderCont.Parent = Slider
SliderCont.BackgroundColor3 = Color3.new(1, 1, 1)
SliderCont.BackgroundTransparency = 1
SliderCont.Position = UDim2.new(0.0221051257, 0, 0.112897597, 0)
SliderCont.Size = UDim2.new(0, 132, 0, 26)
SliderCont.Image = "rbxassetid://3570695787"
SliderCont.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SliderCont.ImageTransparency = 1
SliderCont.ScaleType = Enum.ScaleType.Slice
SliderCont.SliceCenter = Rect.new(100, 100, 100, 100)
SliderCont.SliceScale = 0.04

SliderButton.Name = "SliderButton"
SliderButton.Parent = SliderCont
SliderButton.BackgroundColor3 = Color3.new(1, 1, 1)
SliderButton.BackgroundTransparency = 1
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(0.023, 0, 0.231999993, 0)
SliderButton.Size = UDim2.new(0, 122, 0, 10)
SliderButton.Image = "rbxassetid://3570695787"
SliderButton.ImageColor3 = Color3.new(0.176471, 0.176471, 0.176471)
SliderButton.ScaleType = Enum.ScaleType.Slice
SliderButton.SliceCenter = Rect.new(100, 100, 100, 100)
SliderButton.SliceScale = 0.04

SliderInner.Name = "SliderInner"
SliderInner.Parent = SliderButton
SliderInner.BackgroundColor3 = Color3.new(1, 1, 1)
SliderInner.BackgroundTransparency = 1
SliderInner.Position = UDim2.new(0, 0, 0, 1)
SliderInner.Size = UDim2.new(0, 0, 0, 10)
SliderInner.Image = "rbxassetid://3570695787"
SliderInner.ImageColor3 = Color3.new(1, 0, 0.313726)
SliderInner.ScaleType = Enum.ScaleType.Slice
SliderInner.SliceCenter = Rect.new(100, 100, 100, 100)
SliderInner.SliceScale = 0.04

SliderValue.Name = "SliderValue"
SliderValue.Parent = SliderCont
SliderValue.BackgroundColor3 = Color3.new(1, 1, 1)
SliderValue.BackgroundTransparency = 1
SliderValue.BorderSizePixel = 0
SliderValue.Position = UDim2.new(0.310242414, 0, -0.0343846157, 2)
SliderValue.Size = UDim2.new(0, 46, 0, 20)
SliderValue.Font = Enum.Font.ArialBold
SliderValue.Text = "0"
SliderValue.TextColor3 = Color3.new(0, 0, 0)
SliderValue.TextSize = 10
SliderValue.TextTransparency = 1
			SliderButton.MouseButton1Down:Connect(function()
    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 122) * SliderInner.AbsoluteSize.X) + tonumber(minvalue)) or 0
    pcall(function()
        callback(Value)
    end)
    SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 122), 0, 10)
    moveconnection = mouse.Move:Connect(function()
		        SliderValue.Text = Value
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = Value
        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 122) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
        pcall(function()
            callback(Value)
        end)
        SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 122), 0, 10)
    end)
    releaseconnection = uis.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 122) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
            pcall(function()
                callback(Value)
            end)
            SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 122), 0, 10)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
		        end
		if SliderValue.Text == "0" then
		game:GetService("TweenService"):Create(SliderValue, TweenInfo.new(0.6), {TextTransparency = 1}):Play()
	else
		game:GetService("TweenService"):Create(SliderValue, TweenInfo.new(0.6), {TextTransparency = 0}):Play()
	end
	    end)
end)
			
end
function FeaturesUI:createLabel(text)
	
local Label = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

Label.Name = "Label"
Label.Parent = MainSection
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.ClipsDescendants = true
Label.Position = UDim2.new(0.0466666669, 0, 0, 0)
Label.Size = UDim2.new(0, 135, 0, 28)
Label.Image = "rbxassetid://3570695787"
Label.ImageColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Label.ScaleType = Enum.ScaleType.Slice
Label.SliceCenter = Rect.new(100, 100, 100, 100)
Label.SliceScale = 0.04

TextLabel.Parent = Label
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 135, 0, 28)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.Text = text

		end
		return FeaturesUI
	end
return MainUI;
end
local cell = KillerUI:createCell()
local main = cell:createMain("Au DD")
local esp = main:createToggle("ESP")
local wdtext = main:createLabel("WalkSpeed")
local wd = main:createSlider(0, 100, function(wd)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = wd
end)
local testb = main:createButton("Test")
local testff = main:createButton("Testd")
local main2 = cell:createMain("Main 2")
local esp2 = main2:createToggle("ESP 2")
local jrtext = main2:createLabel("Jump Power")
local jr = main2:createSlider(0, 100, function(jr)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jr
end)
local testb = main2:createButton("Test 2")