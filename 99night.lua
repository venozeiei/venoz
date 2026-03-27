repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local plr = Players.LocalPlayer

-- รอ HUD โหลด
repeat task.wait() until plr:FindFirstChild("PlayerGui")

local function safe(func)
    local ok,res = pcall(func)
    if ok and res then
        return tostring(res)
    end
    return "0"
end

-- LEVEL
local function getLevel()
    return safe(function()
        local txt = workspace.Camera:WaitForChild(plr.Name)
        .Head.NameLevelBBGUI.LevelFrame.TextLabel.Text
        return txt:match("%d+")
    end)
end

-- GOLD
local function getGold()
    return safe(function()
        return plr.PlayerGui.HUD.BottomFrame.CurrencyList.Coins.Amount.Text
    end)
end

-- GEMS
local function getGems()
    return safe(function()
        return plr.PlayerGui.HUD.BottomFrame.CurrencyList.Gems.Amount.Text
    end)
end

-- STARDUST
local function getStardust()
    return safe(function()
        return plr.PlayerGui.HUD.BottomFrame.CurrencyList.Stardust.Amount.Text
    end)
end

-- WAVE
local function getWave()
    return safe(function()
        return plr.PlayerGui.HUD.TopFrame.WaveFrame.Wave.Text
    end)
end

-- MAP
local function getMap()
    return safe(function()
        if workspace:FindFirstChild("Map") then
            return workspace.Map.Name
        end
        return "Lobby"
    end)
end

-- MODE
local function getMode()
    return safe(function()
        if game.ReplicatedStorage:FindFirstChild("GameMode") then
            return game.ReplicatedStorage.GameMode.Value
        end
        return "Lobby"
    end)
end

-- CHAPTER
local function getChapter()
    return safe(function()
        if game.ReplicatedStorage:FindFirstChild("Chapter") then
            return game.ReplicatedStorage.Chapter.Value
        end
        return "None"
    end)
end

-- STATUS
local function getStatus()
    if workspace:FindFirstChild("Enemies") then
        return "FARMING"
    else
        return "LOBBY"
    end
end

-- LOOP LOGGER
spawn(function()
while true do

local msg =
"👤 Player : "..plr.Name..
"\n🗺 Map : "..getMap()..
"\n🎮 Mode : "..getMode()..
"\n📖 Chapter : "..getChapter()..
"\n🌊 Wave : "..getWave()..
"\n\n⭐ Level : "..getLevel()..
"\n💰 Gold : "..getGold()..
"\n💎 Gems : "..getGems()..
"\n✨ Stardust : "..getStardust()..
"\n\n🟢 Status : "..getStatus()

if _G.Horst_SetDescription then
    _G.Horst_SetDescription(msg)
end

print(msg)

task.wait(3)

end
end)
