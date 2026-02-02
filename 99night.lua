setfpscap(10)
_G.Config = {
	["Boat"] = {
        "dtlxbzpa1716",
	},
	["Farm"] = {

	},
	["Make7M"] = {

     
	},
}
Key = "c0e142198f973d18338a5ced"

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
getgenv().Key = "c0e142198f973d18338a5ced"
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
getgenv().Key = "c0e142198f973d18338a5ced"
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
getgenv().Key = "c0e142198f973d18338a5ced"
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
