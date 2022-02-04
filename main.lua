
local function eksdee()
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
end
end
eksdee()
loadstring(game:HttpGet('https://raw.githubusercontent.com/AstraTehFloof/teyeye/main/teleport.lua',true))())
