-- MyHub.lua
-- Script gacha sederhana dengan GUI tombol roll

-- Daftar item yang bisa didapat
local items = {"Sword", "Shield", "Potion", "Rare Gem"}

-- Fungsi untuk melakukan roll
local function rollItem()
    local result = items[math.random(1, #items)]
    print("Kamu mendapatkan: "..result)
end

-- Buat GUI
local ScreenGui = Instance.new("ScreenGui")
local RollButton = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

RollButton.Parent = ScreenGui
RollButton.Size = UDim2.new(0, 200, 0, 50)
RollButton.Position = UDim2.new(0.5, -100, 0.5, -25)
RollButton.Text = "ROLL ITEM"
RollButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
RollButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RollButton.Font = Enum.Font.SourceSansBold
RollButton.TextSize = 24

-- Event klik tombol
RollButton.MouseButton1Click:Connect(function()
    rollItem()
end)
