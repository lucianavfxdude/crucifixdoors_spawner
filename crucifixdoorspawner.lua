--[[
	crucifix door spawner script
    please run script after door 0/reception room!
    keybind is enabled. to disable it, comment it out with "--"
    proudly skid free
    really nice for faking item generation and luck videos
    by @spindash on discord
    i am so tired. . .
]]

local ReSt = game:GetService("ReplicatedStorage")
local Wc = game:GetService("Workspace")
local PlayersStandlone = game:GetService("Players")
local Plr = PlayersStandlone.LocalPlayer
local Inventory = Plr.Backpack

firesignal(game.ReplicatedStorage.RemotesFolder.Caption.OnClientEvent, "door spawner loaded | script by @spindash")

local j  = game.Players.LocalPlayer:GetMouse() -- [APART OF KEYBIND!]

j.KeyDown:Connect(function(key) -- [APART OF KEYBIND!]
 if key == "j" then -- [APART OF KEYBIND!]
local crucifixnode = game:GetObjects("rbxassetid://88548470926281")[1]
crucifixnode.Name = "CrucifixShell"
crucifixnode.Parent = Wc
crucifixnode.Color = Color3.fromRGB(81, 69, 63)
crucifixnode.Material = "Wood"
-- local newhighlight = Instance.new("Highlight",crucifixnode)
local proximityprompt = Instance.new("ProximityPrompt",crucifixnode)
proximityprompt.Name = "Collect"
proximityprompt.MaxActivationDistance = 9
proximityprompt.Style = "Custom"

local currentroomvalue = ReSt.GameData.LatestRoom.Value
local currentroommodel = Wc.CurrentRooms[currentroomvalue]
local door = currentroommodel.RoomEntrance

crucifixnode.CFrame = door.CFrame + Vector3.new(0, 5.8, -0.55)
warn("made by @spindash | spawned crucifix on door") -- credit purposes

crucifixnode.Collect.Triggered:Connect(function()
    local decoycrucgive = game:GetObjects("rbxassetid://89332862603547")[1]
	decoycrucgive.Parent = Inventory
    crucifixnode.Transparency = 1
    proximityprompt.Enabled = false
    crucifixnode:Destroy()
    warn("made by @spindash | crucifix collected + node mockup deleted")
end)
end -- [APART OF KEYBIND!]
end) -- [APART OF KEYBIND!]

warn("made by @spindash on discord | script loaded")

