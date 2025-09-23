getgenv().JinkX = {
    ['99 Night Diamond Farm'] = {
        ['Gems_Limit'] = 3000, -- Set your 'Gems' Limits
        
        ['Class'] = {
            ['Target'] = {"Alien"}, -- Work only [Alien, Cyborg, Pyromaniac, Assassin]
            
            ['Enabled'] = false, -- Automatically buy your "Target" Class
            ['AutoUpgrade'] = false, -- Automatically upgrade your "Target" Class
            ['Level'] = 3, -- Level 1 - 3
        },

        -- Performance Settings
        ['FPS_Boost'] = false,
        ['FPS_Cap'] = false,
        ['FPS_Value'] = 30,
    },
}
script_key="iNDBRWtITUTzDbVmZhmmcbFZBuTMVoGg";
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f7dfc0d64587003c292c68265b0ec9f7.lua"))()
