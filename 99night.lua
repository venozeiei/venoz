repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local Plr = Players.LocalPlayer
local PlrName = Plr.Name

-- ดึง Level ครั้งแรก
local LV_UI = workspace.Camera:WaitForChild(PlrName):FindFirstChild("Head")
local LV_Text = LV_UI and LV_UI.NameLevelBBGUI.LevelFrame.TextLabel.Text or "0"
local level = tonumber(string.match(LV_Text, "%d+")) or 0

while true do
    -- ดึงค่าเงินแบบ Real-time (ย้ายมาไว้ใน Loop เพื่อให้ตัวเลขขยับตามจริง)
    local Gold = Plr.PlayerGui.HUD.BottomFrame.CurrencyList.Coins.Amount.Text
    local Gems = Plr.Backpack.Framework.TasksV2.TaskCard.TaskCardTemplate.ClaimButton.GemsAmount.Text
    local stardust = Plr.PlayerGui.HUD.BottomFrame.CurrencyList.Stardust.Amount.Text
    
    local mapName = RS.Map.Value
    local challengeMap = RS.ChallengeMap.Value
    local wave = Plr.PlayerGui.HUD.Wave.Text
    
    -- จัดรูปแบบแนวนอนบรรทัดเดียว เน้นอ่านง่าย
    local message = 
        "👤 " .. PlrName .. " | " ..
        "🎖️ Lv." .. level .. " | " ..
        "💰 " .. Gold .. " | " ..
        "💎 " .. Gems .. " | " ..
        "✨ " .. stardust .. " | " ..
        "🗺️ " .. (mapName ~= "" and mapName or "Lobby") .. " | " ..
        "🌊 " .. wave .. 
        (challengeMap ~= "" and " | ⚔️ " .. challengeMap or "")

    -- ส่งค่าเข้า Function
    _G.Horst_SetDescription(message)
    
    task.wait(3)
end
