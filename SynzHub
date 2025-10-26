-- LocalScript - Coloque em StarterPlayerScripts
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Criar a GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeySystemGUI"
screenGui.Parent = playerGui

-- Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 350, 0, 250)
mainFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Cantos arredondados
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = mainFrame

-- Título
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Text = "PLANTS VS BRAINROTS SYNZ"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = mainFrame

-- Caixa de texto para key
local keyTextBox = Instance.new("TextBox")
keyTextBox.Name = "KeyTextBox"
keyTextBox.Size = UDim2.new(0.8, 0, 0, 40)
keyTextBox.Position = UDim2.new(0.1, 0, 0.25, 0)
keyTextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keyTextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
keyTextBox.PlaceholderText = "Type your key here..."
keyTextBox.Font = Enum.Font.Gotham
keyTextBox.TextSize = 14
keyTextBox.Text = ""
keyTextBox.Parent = mainFrame

-- Cantos arredondados da caixa de texto
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 6)
textBoxCorner.Parent = keyTextBox

-- Botão Verify Key
local verifyKeyButton = Instance.new("TextButton")
verifyKeyButton.Name = "VerifyKeyButton"
verifyKeyButton.Size = UDim2.new(0.8, 0, 0, 40)
verifyKeyButton.Position = UDim2.new(0.1, 0, 0.5, 0)
verifyKeyButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
verifyKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyKeyButton.Text = "VERIFY KEY"
verifyKeyButton.Font = Enum.Font.Gotham
verifyKeyButton.TextSize = 14
verifyKeyButton.Parent = mainFrame

-- Botão Get Key
local getKeyButton = Instance.new("TextButton")
getKeyButton.Name = "GetKeyButton"
getKeyButton.Size = UDim2.new(0.8, 0, 0, 40)
getKeyButton.Position = UDim2.new(0.1, 0, 0.75, 0)
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.Text = "GET KEY"
getKeyButton.Font = Enum.Font.Gotham
getKeyButton.TextSize = 14
getKeyButton.Parent = mainFrame

-- Cantos arredondados dos botões
local verifyCorner = Instance.new("UICorner")
verifyCorner.CornerRadius = UDim.new(0, 6)
verifyCorner.Parent = verifyKeyButton

local getCorner = Instance.new("UICorner")
getCorner.CornerRadius = UDim.new(0, 6)
getCorner.Parent = getKeyButton

-- Função para Get Key
getKeyButton.MouseButton1Click:Connect(function()
    -- Tenta copiar para área de transferência
    pcall(function()
        setclipboard("https://direct-link.net/1426202/dhfViCF1Epxx")
    end)
    
    -- Mostra mensagem
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "PLANTS VS BRAINROTS SYNZ",
        Text = "Link copied",
        Duration = 5
    })
end)

-- Função para Verify Key
verifyKeyButton.MouseButton1Click:Connect(function()
    local key = keyTextBox.Text
    
    if key == "" or key == " " then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PLANTS VS BRAINROTS SYNZ",
            Text = "Type your key!",
            Duration = 5
        })
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "PLANTS VS BRAINROTS SYNZ", 
            Text = "Key typed: " .. key,
            Duration = 5
        })
    end
end)
