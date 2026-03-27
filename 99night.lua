repeat task.wait() until game:IsLoaded()
repeat task.wait(1) until _G.Horst_SetDescription ~= nil

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local Plr = Players.LocalPlayer.Name

while true do
    pcall(function()
        local LV = workspace.Camera:WaitForChild(Plr).Head.NameLevelBBGUI.LevelFrame.TextLabel.Text
        local level = tonumber(string.match(LV,"%d+"))
        local Gems = Players.LocalPlayer.Backpack.Framework.TasksV2.TaskCard.TaskCardTemplate.ClaimButton.GemsAmount.Text
        local stardust = Players.LocalPlayer.PlayerGui.HUD.BottomFrame.CurrencyList.Stardust.Amount.Text
        local Gold = Players.LocalPlayer.PlayerGui.HUD.BottomFrame.CurrencyList.Coins.Amount.Text
        local mapName = RS.Map.Value
        local challengeMap = RS.ChallengeMap.Value
        local wave = Players.LocalPlayer.PlayerGui.HUD.Wave.Text

        local message =
        "Level :" .. level ..
        " Gold :" .. Gold ..
        " Gems :" .. Gems ..
        " ⭐stardust :" .. stardust ..
        " 🗺️Map :" .. mapName ..
        " 🌊" .. wave ..
        (challengeMap ~= "" and " ⚔️Challenge :" .. challengeMap or "")

        _G.Horst_SetDescription(message)
    end)
    task.wait(1)
end
