--the source
--btw if you dont know what your doing dont edit this

--Popup Message
--if the popup message gets on your nerves just remove this part

local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
	Title = "Synapse Z Interal UI",
	Text = "Press Insert to open ui",
	Duration = 3
})


-- Instances:

local A7Bg2bjwq = Instance.new("ScreenGui")
local dim = Instance.new("Frame")
local main = Instance.new("Frame")
local TheText = Instance.new("TextLabel")
local Execute = Instance.new("TextButton")
local ScrollFrame = Instance.new("ScrollingFrame")
local txt = Instance.new("TextBox")

--Properties:

A7Bg2bjwq.Name = "A7B^!&g2b#jwq"
A7Bg2bjwq.Parent = game.CoreGui

dim.Name = "dim"
dim.Parent = A7Bg2bjwq
dim.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
dim.BackgroundTransparency = 0.500
dim.Position = UDim2.new(0, 0, -0.0076923077, 0)
dim.Size = UDim2.new(0, 2147483647, 0, 2147483647)
dim.Visible = false

main.Name = "main"
main.Parent = A7Bg2bjwq
main.BackgroundColor3 = Color3.fromRGB(86, 86, 86)
main.Position = UDim2.new(0.223565862, 0, 0.204188257, 0)
main.Size = UDim2.new(0, 603, 0, 422)
main.Visible = false
main.Active = true
main.Draggable = true

TheText.Name = "The Text"
TheText.Parent = main
TheText.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
TheText.Position = UDim2.new(-0.000607416208, 0, -0.00167461683, 0)
TheText.Size = UDim2.new(0, 603, 0, 26)
TheText.Font = Enum.Font.SourceSans
TheText.Text = "   Synapse Z Internal UI"
TheText.TextColor3 = Color3.fromRGB(255, 255, 255)
TheText.TextSize = 14.000
TheText.TextXAlignment = Enum.TextXAlignment.Left

Execute.Name = "Execute"
Execute.Parent = main
Execute.BackgroundColor3 = Color3.fromRGB(98, 98, 98)
Execute.Position = UDim2.new(0.838699877, 0, 0.923149645, 0)
Execute.Size = UDim2.new(0, 84, 0, 23)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 14.000
Execute.MouseButton1Down:connect(function()
	loadstring(txt.Text)()
end)

ScrollFrame.Name = "Scroll Frame"
ScrollFrame.Parent = main
ScrollFrame.Active = true
ScrollFrame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
ScrollFrame.Position = UDim2.new(-0.000708736596, 0, 0.0585105345, 0)
ScrollFrame.Size = UDim2.new(0, 603, 0, 358)

txt.Name = "txt"
txt.Parent = ScrollFrame
txt.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
txt.Position = UDim2.new(0.000708736479, 0, -0.000662624836, 0)
txt.Size = UDim2.new(0, 590, 0, 864)
txt.Font = Enum.Font.SourceSans
txt.PlaceholderColor3 = Color3.fromRGB(127, 127, 127)
txt.PlaceholderText = "type here script"
txt.Text = ""
txt.TextColor3 = Color3.fromRGB(255, 255, 255)
txt.TextSize = 14.000
txt.TextXAlignment = Enum.TextXAlignment.Left
txt.TextYAlignment = Enum.TextYAlignment.Top
txt.ClearTextOnFocus = false

--the toggle

local Open = false

local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(KeyCode)
    if KeyCode.KeyCode == Enum.KeyCode.Insert then 
        if Open == true then
   main.Visible = true
   dim.Visible = true
   Open = false
   else
       main.Visible = false
       dim.Visible = false
       Open = true
       end
end
end)
