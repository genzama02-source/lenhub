local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0.2, 0)
    label.Position = UDim2.new(0, 0, 0.4, 0)
    label.TextScaled = true
    label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Text = "Halo dari lenhub.lua!"
    label.Parent = screenGui
end)
