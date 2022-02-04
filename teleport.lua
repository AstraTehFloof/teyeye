local value = Vector3.new(0,10,0)
	
while wait() do
	for i,v in pairs(game.Workspace.enemies:GetDescendants()) do
		if v.Name == "Head" then
			v=v
			local currentpos = game.Players.LocalPlayer.Character.Head.Position
			v.Anchored = true
			v.CanCollide = false
			v.Position = currentpos + value
			
		end
	end
end
