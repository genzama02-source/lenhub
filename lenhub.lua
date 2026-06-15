local items = {"Sword", "Shield", "Potion", "Rare Gem"}

function rollItem()
    local result = items[math.random(1, #items)]
    print("Kamu mendapatkan: "..result)
end

return {
    rollItem = rollItem
}

