repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local plr = Players.LocalPlayer

-- ฟังก์ชันอ่านค่าปลอดภัย
local function safe(get)
    local ok,v = pcall(get)
    if ok and v then
        return v
    end
    return "N/A"
end

-- LEVEL
local function getLevel()
    return safe(function()
        local LV = Workspace.Camera:WaitForChild(plr.Name)
        .Head.NameLevelBBGUI.LevelFrame.TextLabel.Text
        return tonumber(string.match(LV,"%d+"))
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
        return plr.Backpack.Framework.TasksV2.TaskCard.TaskCardTemplate.ClaimButton.GemsAmount.Text
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
        return game:GetService("Workspace").Map.Name
    end)
end

-- MODE
local function getMode()
    return safe(function()
        local mode = ReplicatedStorage:FindFirstChild("GameMode")
        if mode then
            return mode.Value
        end
        return "Lobby"
    end)
end

-- CHAPTER
local function getChapter()
    return safe(function()
        local chapter = ReplicatedStorage:FindFirstChild("Chapter")
        if chapter then
            return chapter.Value
        end
        return "None"
    end)
end

-- สถานะ
local function getStatus()
    if Workspace:FindFirstChild("Enemies") then
        return "In Game"
    else
        return "Lobby"
    end
end

-- LOOP LOGGER
while true do
    local msg =
    "👤 Player : "..plr.Name..
    "\n⭐ Level : "..getLevel()..
    "\n💰 Gold : "..getGold()..
    "\n💎 Gems : "..getGems()..
    "\n✨ Stardust : "..getStardust()..
    "\n🧭 Map : "..getMap()..
    "\n🎮 Mode : "..getMode()..
    "\n📖 Chapter : "..getChapter()..
    "\n🌊 Wave : "..getWave()..
    "\n🟢 Status : "..getStatus()

    if _G.Horst_SetDescription then
        _G.Horst_SetDescription(msg)
    end

    print(msg)

    task.wait(3)
end
