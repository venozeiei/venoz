setfpscap(15)
_G.WebhookLink = "LINK HERE"
_G.OPFarmGem = true

_G.Class = {
    Enabled = true,
    Target = "Gambler" -- Class Name
}

_G.LockDiamond = {
    Enabled = false,
    Amount = 1000, -- 1000,2000,3000
    SendWebhook = {
        Enabled = false,
        WebhookLink = "",
        Message = "Reached Target", 
    }
}
-- Script Here !!!
script_key="WQGQxHKbEXOwHCLsdjRexCxWJLXnyBBb";
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5f69c589c2e08aee7d37c351dd3068af.lua"))()
