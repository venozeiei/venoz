getgenv().JinkX = {
    ['99 Night Diamond Farm'] = {
        ['Gems_Limit'] = 3000, -- Set your 'Gems' Limits
        
        ['Class'] = {
            ['Target'] = {"Cyborg"}, -- Work only [Alien, Cyborg, Pyromaniac, Assassin]
            
            ['Enabled'] = true, -- Automatically buy your "Target" Class
            ['AutoUpgrade'] = false, -- Automatically upgrade your "Target" Class
            ['Level'] = 1, -- Level 1 - 3
        },

        -- Performance Settings
        ['FPS_Boost'] = true,
        ['FPS_Cap'] = false,
        ['FPS_Value'] = 30,
    },
}
script_key="iNDBRWtITUTzDbVmZhmmcbFZBuTMVoGg";
repeat wait() until game:IsLoaded()

if game.GameId == 6701277882 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d169661d1f368f4d900c9f1a477306da.lua"))()
    return
elseif game.GameId == 7326934954 then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f7dfc0d64587003c292c68265b0ec9f7.lua"))()
    return
end
