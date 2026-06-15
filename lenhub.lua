local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(player)
    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = false
    screenGui.Parent = player:WaitForChild("PlayerGui")

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.5, -25)
    button.Text = "Roll!"
    button.TextScaled = true
    button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = screenGui

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0, 200, 0, 50)
    label.Position = UDim2.new(0.5, -100, 0.5, 40)
    label.Text = "Hasil: -"
    label.TextScaled = true
    label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Parent = screenGui

    button.MouseButton1Click:Connect(function()
        local angka = math.random(1, 100)
        label.Text = "Hasil: " .. angka
    end)
end)
