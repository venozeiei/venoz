setfpscap(10)
_G.Config = {
	["Boat"] = {
        "rirkwcqn8574",
	},
	["Farm"] = {
		
        "ahlm45zwqk12",
        "carcqglb5966",
        "wkygwxmg6024",
        "ucarlaix5178",
        "ofjkdyrl0672",
        "lecrpdkt8349",
        "tfaj52bnur60",
        "mgtb29eztf34",
        "dien95zglt50",
        "sgkpgpic8427",
        "sbyjyprr8700",
        "fdcw17qvlw62",
        "hdlhxmsh5559",
        "itpd88shsk57",
        "jsxnwqtr2355",
        "mcld02fgib52",
        "lexppocs0731",
        "gxqs26tzjp62",
        "jwjcgcua8311",
        "keam96ljfm83",
        "gxjxkxox6650",
        "rfmo86xmcb67",
        "zdgu40iddx00",
        "ryedieju2390",
        "dhol51bnqs43",
        "mzyslhlk7007",
        "qexb32yfsp67",
        "latr04whdz41",
        "zwef50yihb17",
        "wbdi09gevo13",
        "rmbu01htgv85",
        "sqil77hnar83",
        "ssmznuto5500",
        "yezo16cbae62",
        "plupbyev8878",
        "lbzw12zlxl55",
        "osdwotwx1060",
        "wjvngsck4542",
        "jhqjcvyf9150",
        "ajyjrtmx2070",
        "jaojxrpn1604",
        "eitn07yrkc25",
        "xwxh60fkcx86",
        "hshl15cabi19",
        "nxnk95hnao44",
        "hmsw80naxm21",
        "fnnpidvg0652",
        "ndhrjipd7985",
        "thqxxeix7365",
        "spoglzmw9138",
        "qfwhkwha9065",
        "jsbfszcr2996",
        "qpdzmfzt8371",
        "cslpucbs7727",
        "gmji72ujnf00",
        "xnijfzfq2654",
        "gwzfabmm1739",
        "camckjzt1114",
        "wxkusdzz3759",
        "odra10ekut48",
        "jbjaagpc1652",
        "ilcr17eful44",
        "zyoz54grij88",
        "mmwpfdzd5651",
        "mmikmlhj6161",
        "xbim65syek44",
        "fwsfltfa7203",
        "lzfhwysw8315",
        "bjcllzty0514",
        "vcvrcclp0292",
        "huoe27bnxe28",
        "zhjs83durc94",
        "kkpemcrg4712",
        "nfox79alov33",
        "owfarwmz1150",
        "zxhh56oiby34",
        "kxzp66vvop73",
        "qehenmzn2717",
        "acnjsxpw0023",
        "dsln93coji44",
        "dlmlcank3280",
        "cbwb92hoeo25",
        "bthw93ysua32",
        "jugj03eunm54",
        "sbiu48affp58",
        "hkxjutyo5104",
        "qxoe95mysp06",
        "dzjl53fzax98",
        "pumf79atku74",
        "lvmo56laqr55",
        "lhhr42usoi71",
        "zvcy37msjk11",
        "oexsbgtl8672",
        "wytv53tqnr68",
        "omuw33kfep60",
        "hhzrcdxx7311",
        "apmb23bbms53",
        "myec23dvul11"

	},
	["Make7M"] = {

     
	},
}
Key = "75fa9d8920d6a671459be009"

repeat
	task.wait()
until game:IsLoaded()
repeat
	task.wait()
until game.Players
repeat
	task.wait()
until game.Players.LocalPlayer
repeat
	task.wait()
until game.Players.LocalPlayer:FindFirstChild("PlayerGui")

while game.Players.LocalPlayer.Team == nil do
	pcall(function()
		wait()
		local Gui = game:GetService("Players").LocalPlayer.PlayerGui["Main (minimal)"].ChooseTeam.Container
		for _, Event in pairs({ "MouseButton1Click", "MouseButton1Down", "Activated" }) do
			PiratesBtn = Gui.Pirates.Frame.TextButton[Event]
			MarinesBtn = Gui.Marines.Frame.TextButton[Event]
			pcall(function()
				for _, Connect in pairs(getconnections(MarinesBtn)) do
					Connect.Function()
				end
			end)
		end
	end)
end

repeat
	wait(1)
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
setfpscap(20)
function LoadScriptMake7M()
	print("Loading Make7M Script...")
	getgenv().Config = {
		["No Frog"] = true,
		["Use skill fast dont hold"] = true,
		["Auto Farm Material Sanguine Art"] = true,
		["Boost Fps"] = true,
	}
getgenv().Key = "75fa9d8920d6a671459be009"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"))()
end

function LoadScriptFarm()
	print("Loading Farm Script...")
	getgenv().Config = {
		["No Frog"] = true,
		["Use skill fast dont hold"] = true,
		["Select Owner Boat Beast Hunter"] = _G.Config["Boat"][1],
		["Boost Fps"] = true,
		["Start Hunt Leviathan"] = true,
	}
getgenv().Key = "75fa9d8920d6a671459be009"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"))()
end

function LoadScriptBoat()
	print("Loading Boat Script...")
	getgenv().Config = {
		["Shoot Heart When Ice Spike Breaks"] = true,
		["Drive Boat To Tiki"] = true,
		["No Frog"] = true,
		["Use skill fast dont hold"] = true,
		["Account Buy Boat"] = true,
		["Start Hunt Leviathan"] = true,
	}
getgenv().Key = "75fa9d8920d6a671459be009"
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/refs/heads/main/BananaCat-KaitunLevi.lua"))()
end

local function CheckAndLoadScript()
	local myName = game.Players.LocalPlayer.Name
	local found = false

	for _, name in pairs(_G.Config["Boat"]) do
		if myName == name then
			LoadScriptBoat()
			found = true
			break
		end
	end
	if not found then
		for _, name in pairs(_G.Config["Farm"]) do
			if myName == name then
				local status = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
				if status == 1 then
					found = true
				elseif status == 0 then
					found = true
				else
					LoadScriptFarm()
					found = true
				end
				break
			end
		end
	end

	if not found then
		for _, name in pairs(_G.Config["Make7M"]) do
			if myName == name then
				local status = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)

				if status == 1 then
					found = true
				elseif status == 0 then
					found = true
				else
					LoadScriptMake7M()
					found = true
				end
				break
			end
		end
	end
end

CheckAndLoadScript()

