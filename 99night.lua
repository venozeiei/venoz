_G.WebhookLink = "LINK HERE"
_G.OPFarmGem = true

_G.Class = {
    Enabled = true,
    Target = "Cyborg" -- Class Name or Target = {"Gambler" , "Cyborg"}
}

_G.LockDiamond = {
    Enabled = true,
    Amount = 10000, -- 1000,2000,3000
    SendWebhook = {
        Enabled = true,
        WebhookLink = "",
        Message = "Reached Target", 
    }
}
-- Log Account Hub link -> https://accounthub.bunnycat.xyz/login
_G.ApiKey = "" -- get api in link
-- Script Here !!!

script_key="WQGQxHKbEXOwHCLsdjRexCxWJLXnyBBb";
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5f69c589c2e08aee7d37c351dd3068af.lua"))()
