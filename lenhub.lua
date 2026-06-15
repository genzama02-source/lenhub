local Players = game:GetService("Players")
Players.PlayerAdded:Connect(function(player)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0,200,0,50)
    button.Position = UDim2.new(0.5,-100,0.5,-25)
    button.Text = "Roll!"
    button.Parent = screenGui
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0,200,0,50)
    label.Position = UDim2.new(0.5,-100,0.5,40)
    label.Text = "Hasil: -"
    label.Parent = screenGui
    button.MouseButton1Click:Connect(function()
        label.Text = "Hasil: "..math.random(1,100)
    end)
end)
