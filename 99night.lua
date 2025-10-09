repeat task.wait() until game:IsLoaded()

repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
  _G.Team = "Pirate" -- Marine / Pirate
    getgenv().Script_Mode = "Kaitun_Script"
    _G.EnabledBypassTP = true
    _G.MainSettings = {
        ["EnabledHOP"] = true,            -- เปิด HOP ( มันไม่มีอยู่ละใส่มาเท่ๆ )
        ["UseGun"] = false,
        ['FPSBOOST'] = true,              -- ภาพกาก
        ["FPSLOCKAMOUNT"] = 60,           -- จำนวน FPS
        ['WhiteScreen'] = false,          -- จอขาว
        ['CloseUI'] = false,              -- ปิด Ui
        ["NotifycationExPRemove"] = true, -- ลบ ExP ที่เด้งตอนฆ่ามอน
        ['AFKCheck'] = 150,               -- ถ้ายืนนิ่งเกินวิที่ตั้งมันจะรีเกม
        ["LockFragments"] = 200000,       -- ล็อคเงินม่วง
        ["LockFruitsRaid"] = {            -- ล็อคผลที่ไม่เอาไปลงดัน
            [1] = "Dough-Dough",
            [2] = "Dragon-Dragon",
            [2] = "Kitsune-Kitsune",
            [2] = "Yeti-Yeti",
            [2] = "Gas-Gas"

        }
    }
    _G.Fruits_Settings = {                                                            -- ตั้งค่าผล
        ['Main_Fruits'] = { "Dragon-Dragon" },                                        -- ผลหลัก ถ้ายังไม่ใช่ค่าที่ตั้งมันจะกินจนกว่าจะใช่หรือซื้อ
        ['Select_Fruits'] = { "Dark-Dark", "Ice-Ice", "Light-Light", "Magma-Magma" }, -- กินหรือซื้อตอนไม่มีผล
    }
    _G.Quests_Settings = {                                                            -- ตั้งค่าเควสหลักๆ
        ['Rainbow_Haki'] = false,
        ["MusketeerHat"] = false,
        ["PullLever"] = true,
        ['DoughQuests_Mirror'] = {
            ['Enabled'] = true,
            ['UseFruits'] = true
        }
    }
    _G.Races_Settings = { -- ตั้งค่าเผ่า
        ['Race'] = {
            ['EnabledEvo'] = true,
            ["v2"] = false,
            ["v3"] = true,
            ["Races_Lock"] = {
                ["Races"] = { -- Select Races U want
                    ["Mink"] = true,
                    ["Human"] = true,
                    ["Fishman"] = true
                },
                ["RerollsWhenFragments"] = 500000 -- Random Races When Your Fragments is >= Settings
            }
        }
    }
    _G.Settings_Melee = { -- หมัดที่จะทำ
        ['Superhuman'] = true,
        ['DeathStep'] = true,
        ['SharkmanKarate'] = true,
        ['ElectricClaw'] = true,
        ['DragonTalon'] = true,
        ['Godhuman'] = true
    }
    _G.FarmMastery_Settings = {
        ['Melee'] = true,
        ['Sword'] = false,
        ['DevilFruits'] = true,
        ['Select_Swords'] = {
            ["AutoSettings"] = false, -- ถ้าเปิดอันนี้มันจะเลือกดาบให้เองหรือฟาร์มทุกดาบนั่นเอง
            ["ManualSettings"] = {    -- ถ้าปรับ AutoSettings เป็น false มันจะฟาร์มดาบที่เลือกตรงนี้ ตัวอย่างข้างล่าง
                "Saber",
                "CursedDualKatana",
                "Buddy Sword"
            }
        }
    }
    _G.SwordSettings = { -- ดาบที่จะทำ
        ['Saber'] = true,
        ["Pole"] = false,
        ['MidnightBlade'] = false,
        ['Shisui'] = false,
        ['Saddi'] = false,
        ['Wando'] = false,
        ['Yama'] = true,
        ['Rengoku'] = false,
        ['Canvander'] = false,
        ['BuddySword'] = false,
        ['TwinHooks'] = false,
        ['HallowScryte'] = false,
        ['TrueTripleKatana'] = false,
        ['CursedDualKatana'] = true
    }
    _G.SharkAnchor_Settings = {
        ["Enabled_Farm"] = false,
        ['FarmAfterMoney'] = 2500000
    }
    _G.GunSettings = { -- ปืนที่จะทำ
        ['Kabucha'] = false,
        ['SerpentBow'] = false,
        ['SoulGuitar'] = false
    }
    getgenv().Key = "MARU-S21P-WHFCY-FHYC-JC1N4-M9MG"
    getgenv().id = "1015231612272787497"
    getgenv().Script_Mode = "Kaitun_Script"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
