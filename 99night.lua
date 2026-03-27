repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local Plr = Players.LocalPlayer.Name

local LV = workspace.Camera:WaitForChild(Plr).Head.NameLevelBBGUI.LevelFrame.TextLabel.Text
local level = tonumber(string.match(LV,"%d+"))

local Gems = Players.LocalPlayer.Backpack.Framework.TasksV2.TaskCard.TaskCardTemplate.ClaimButton.GemsAmount.Text
local stardust = Players.LocalPlayer.PlayerGui.HUD.BottomFrame.CurrencyList.Stardust.Amount.Text
local Gold = Players.LocalPlayer.PlayerGui.HUD.BottomFrame.CurrencyList.Coins.Amount.Text

while true do
    local mapName = RS.Map.Value
    local challengeMap = RS.ChallengeMap.Value
    local wave = Players.LocalPlayer.PlayerGui.HUD.Wave.Text

    local message =
    "⚡Lv." .. level ..
    " | 🪙" .. Gold ..
    " | 💎" .. Gems ..
    " | ⭐" .. stardust ..
    " | 🗺️" .. mapName ..
    " | 🌊" .. wave ..
    (challengeMap ~= "" and " | ⚔️" .. challengeMap or "")

    _G.Horst_SetDescription(message)
    task.wait(3)
end
