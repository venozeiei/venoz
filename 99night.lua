_G.WebhookLink = "LINK HERE"
_G.OPFarmGem = true

_G.Class = {
    Enabled = true,
    Target = "Cyborg" -- Class Name or Target = {"Gambler" , "Cyborg"}
}

_G.LockDiamond = {
    Enabled = true,
    Amount = 3000, -- 1000,2000,3000
    SendWebhook = {
        Enabled = true,
        WebhookLink = "",
        Message = "Reached Target", 
    }
}
-- Log Roblox Account Manger PC ONLY -> TURN ON WEBSERVER IN DEVELOPER MODE AND CHANGE Enabled to true Enabled = true
_G.LogRam = {
    Enabled = false,
    Port = 7963,
    Debug = false, -- F9 CONSOLE
}
-- Script Here !!!
script_key="WQGQxHKbEXOwHCLsdjRexCxWJLXnyBBb";
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5f69c589c2e08aee7d37c351dd3068af.lua"))()
