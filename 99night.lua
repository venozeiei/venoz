-- ASTD:X Horst Logger (Full)

spawn(function()
    while true do
        local plr = game:GetService("Players").LocalPlayer
        local msg = "Loading..."

        pcall(function()
            local hud = plr.PlayerGui:WaitForChild("HUD")
            local bottom = hud:WaitForChild("BottomFrame")
            local currency = bottom:WaitForChild("CurrencyList")

            local cash = "0"
            local gems = "0"
            local stardust = "0"
            local coins = "0"

            if currency:FindFirstChild("Cash") then
                cash = currency.Cash.Text
            end

            if currency:FindFirstChild("Gem") and currency.Gem:FindFirstChild("Amount") then
                gems = currency.Gem.Amount.Text
            end

            if currency:FindFirstChild("Stardust") and currency.Stardust:FindFirstChild("Amount") then
                stardust = currency.Stardust.Amount.Text
            end

            if currency:FindFirstChild("Coins") and currency.Coins:FindFirstChild("Amount") then
                coins = currency.Coins.Amount.Text
            end

            msg =
                "👤 "..plr.Name..
                " | 💰 "..cash..
                " | 💎 "..gems..
                " | ⭐ "..stardust..
                " | 🪙 "..coins
        end)

        if _G.Horst_SetDescription then
            _G.Horst_SetDescription(msg)
        end

        print(msg)

        task.wait(3)
    end
end)
