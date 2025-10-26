local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeySystemGUI"
screenGui.Parent = playerGui

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 400, 0, 300)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Rounded Corners
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = mainFrame

-- Border/Stroke
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(80, 60, 140)
UIStroke.Thickness = 2
UIStroke.Parent = mainFrame

-- Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0, 60)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
titleLabel.TextColor3 = Color3.fromRGB(170, 120, 255)
titleLabel.Text = "PLANTS VS BRAINROTS SYNZ"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 20
titleLabel.Parent = mainFrame

-- Title Rounded Corners
local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 10)
titleCorner.Parent = titleLabel

-- Key TextBox
local keyTextBox = Instance.new("TextBox")
keyTextBox.Name = "KeyTextBox"
keyTextBox.Size = UDim2.new(0.8, 0, 0, 45)
keyTextBox.Position = UDim2.new(0.1, 0, 0.25, 0)
keyTextBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
keyTextBox.TextColor3 = Color3.fromRGB(220, 220, 220)
keyTextBox.PlaceholderText = "Enter your key here..."
keyTextBox.PlaceholderColor3 = Color3.fromRGB(140, 140, 160)
keyTextBox.Font = Enum.Font.Gotham
keyTextBox.TextSize = 14
keyTextBox.Text = ""
keyTextBox.Parent = mainFrame

-- TextBox Rounded Corners
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 8)
textBoxCorner.Parent = keyTextBox

-- TextBox Border
local textBoxStroke = Instance.new("UIStroke")
textBoxStroke.Color = Color3.fromRGB(70, 50, 130)
textBoxStroke.Thickness = 1
textBoxStroke.Parent = keyTextBox

-- Verify Key Button
local verifyKeyButton = Instance.new("TextButton")
verifyKeyButton.Name = "VerifyKeyButton"
verifyKeyButton.Size = UDim2.new(0.8, 0, 0, 45)
verifyKeyButton.Position = UDim2.new(0.1, 0, 0.5, 0)
verifyKeyButton.BackgroundColor3 = Color3.fromRGB(90, 70, 160)
verifyKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyKeyButton.Text = "VERIFY KEY"
verifyKeyButton.Font = Enum.Font.GothamBold
verifyKeyButton.TextSize = 14
verifyKeyButton.Parent = mainFrame

-- Get Key Button
local getKeyButton = Instance.new("TextButton")
getKeyButton.Name = "GetKeyButton"
getKeyButton.Size = UDim2.new(0.8, 0, 0, 45)
getKeyButton.Position = UDim2.new(0.1, 0, 0.75, 0)
getKeyButton.BackgroundColor3 = Color3.fromRGB(70, 50, 140)
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.Text = "GET KEY"
getKeyButton.Font = Enum.Font.GothamBold
getKeyButton.TextSize = 14
getKeyButton.Parent = mainFrame

-- Buttons Rounded Corners
local verifyCorner = Instance.new("UICorner")
verifyCorner.CornerRadius = UDim.new(0, 8)
verifyCorner.Parent = verifyKeyButton

local getCorner = Instance.new("UICorner")
getCorner.CornerRadius = UDim.new(0, 8)
getCorner.Parent = getKeyButton

-- Buttons Hover Effects
verifyKeyButton.MouseEnter:Connect(function()
    verifyKeyButton.BackgroundColor3 = Color3.fromRGB(100, 80, 180)
end)

verifyKeyButton.MouseLeave:Connect(function()
    verifyKeyButton.BackgroundColor3 = Color3.fromRGB(90, 70, 160)
end)

getKeyButton.MouseEnter:Connect(function()
    getKeyButton.BackgroundColor3 = Color3.fromRGB(80, 60, 160)
end)

getKeyButton.MouseLeave:Connect(function()
    getKeyButton.BackgroundColor3 = Color3.fromRGB(70, 50, 140)
end)

-- Get Key Function
getKeyButton.MouseButton1Click:Connect(function()
    pcall(function()
        setclipboard("https://direct-link.net/1426202/dhfViCF1Epxx")
    end)
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "PLANTS VS BRAINROTS SYNZ",
        Text = "Link copied to clipboard!",
        Duration = 5
    })
end)

-- Verify Key Function
verifyKeyButton.MouseButton1Click:Connect(function()
    local key = keyTextBox.Text
    
    if key == "" or key == " " then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PLANTS VS BRAINROTS SYNZ",
            Text = "Please enter a key to verify!",
            Duration = 5
        })
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PLANTS VS BRAINROTS SYNZ", 
            Text = "Key entered: " .. key,
            Duration = 5
        })
    end
end)
