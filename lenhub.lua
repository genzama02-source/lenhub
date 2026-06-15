-- lenhub.lua
local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.3, 0, 0.1, 0)
    button.Position = UDim2.new(0.35, 0, 0.45, 0)
    button.TextScaled = true
    button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = "Roll!"
    button.Parent = screenGui

    button.MouseButton1Click:Connect(function()
        local result = math.random(1, 100)
        button.Text = "Hasil roll: " .. result
    end)
end)
