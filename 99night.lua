repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local plr = Players.LocalPlayer

local function safe(f)
    local ok,v = pcall(f)
    if ok and v then
        return tostring(v)
    end
    return "0"
end

local function getLevel()
    return safe(function()
        local txt = workspace.Camera:WaitForChild(plr.Name)
        .Head.NameLevelBBGUI.LevelFrame.TextLabel.Text
        return txt:match("%d+")
    end)
end

local function getGold()
    return safe(function()
        return plr.PlayerGui.HUD.BottomFrame.CurrencyList.Coins.Amount.Text
    end)
end

local function getGems()
    return safe(function()
        return plr.PlayerGui.HUD.BottomFrame.CurrencyList.Gems.Amount.Text
    end)
end

local function getStardust()
    return safe(function()
        return plr.PlayerGui.HUD.BottomFrame.CurrencyList.Stardust.Amount.Text
    end)
end

local function getWave()
    return safe(function()
        return plr.PlayerGui.HUD.TopFrame.WaveFrame.Wave.Text
    end)
end

local function getMap()
    return safe(function()
        if workspace:FindFirstChild("Map") then
            return workspace.Map.Name
        end
        return "Lobby"
    end)
end

spawn(function()
while true do

local msg =
"⭐Level:"..getLevel()..
" 💰Gold:"..getGold()..
" 💎Gems:"..getGems()..
" ⭐stardust:"..getStardust()..
" 🗺Map:"..getMap()..
" 🌊Wave:"..getWave()

if _G.Horst_SetDescription then
    _G.Horst_SetDescription(msg)
end

task.wait(3)

end
end)
