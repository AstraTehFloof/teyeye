function troll()
 while wait() do
--Hitpart >
local hitpart

for i,v in pairs(game.Workspace:WaitForChild("enemies"):GetDescendants()) do
if v.Name == "Head" then
    v = v
    hitpart = v
end
end




local args = {
    [1] = {
        ["Normal"] = Vector3.new(hitpart.CFrame.Position),
        ["Direction"] = Vector3.new(hitpart.CFrame.Position),
        ["Name"] = _G.gunname,
        ["Hit"] = hitpart,
        ["Origin"] = Vector3.new(hitpart.CFrame.Position),
        ["Pos"] = Vector3.new(hitpart.CFrame.Position),
    }
}

game:GetService("ReplicatedStorage").Gun:FireServer(unpack(args))
hitpart = ""

local value = Vector3.new(0,10,0)
	for i,v in pairs(game.Workspace.enemies:GetDescendants()) do
		if v.Name == "Head" then
			v=v
			local currentpos = game.Players.LocalPlayer.Character.Head.Position
			v.Anchored = true
			v.CanCollide = false
			v.Position = currentpos + value
			
		end
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-202, 64, -131)
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end


end

troll()
