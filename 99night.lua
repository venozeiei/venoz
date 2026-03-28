repeat task.wait() until game:IsLoaded()

local plr = game:GetService("Players").LocalPlayer

while true do
    task.wait(3)

    local gold = "?"
    local stardust = "?"
    local gems = "?"
    local level = "?"
    local wave = "?"

    pcall(function()
        gold = plr.PlayerGui.HUD.BottomFrame.CurrencyList.Coins.Amount.Text
    end)

    pcall(function()
        stardust = plr.PlayerGui.HUD.BottomFrame.CurrencyList.Stardust.Amount.Text
    end)

    pcall(function()
        if plr:FindFirstChild("leaderstats") then
            level = plr.leaderstats.Level.Value
        end
    end)

    pcall(function()
        for _,v in pairs(game:GetDescendants()) do
            if v.Name == "Gems" and v:IsA("IntValue") then
                gems = v.Value
            end
        end
    end)

    pcall(function()
        for _,v in pairs(plr.PlayerGui:GetDescendants()) do
            if v:IsA("TextLabel") and string.find(v.Name,"Wave") then
                wave = v.Text
            end
        end
    end)

    local message = "💰"..gold.." | 💎"..gems.." | 🌟"..stardust.." | 📊Lv."..level.." | 🌊Wave "..wave

    _G.Horst_SetDescription(message)
end
