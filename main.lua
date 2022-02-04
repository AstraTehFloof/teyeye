local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)

function troll()
    while wait() do
        --Hitpart >
        local hitpart

        for i, v in pairs(game.Workspace:WaitForChild("enemies"):GetDescendants()) do
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
                ["Pos"] = Vector3.new(hitpart.CFrame.Position)
            },
            [2] = {
                ["Normal"] = Vector3.new(hitpart.CFrame.Position),
                ["Direction"] = Vector3.new(hitpart.CFrame.Position),
                ["Name"] = _G.gunname,
                ["Hit"] = hitpart,
                ["Origin"] = Vector3.new(hitpart.CFrame.Position),
                ["Pos"] = Vector3.new(hitpart.CFrame.Position)
            },
            [3] = {
                ["Normal"] = Vector3.new(hitpart.CFrame.Position),
                ["Direction"] = Vector3.new(hitpart.CFrame.Position),
                ["Name"] = _G.gunname,
                ["Hit"] = hitpart,
                ["Origin"] = Vector3.new(hitpart.CFrame.Position),
                ["Pos"] = Vector3.new(hitpart.CFrame.Position)
            }
        }

        game:GetService("ReplicatedStorage").Gun:FireServer(unpack(args))
        hitpart = ""

        local value = Vector3.new(0, 7, 0)
        for i, v in pairs(game.Workspace.enemies:GetDescendants()) do
            if v.Name == "Head" then
                v = v
                local currentpos = game.Players.LocalPlayer.Character.Head.Position
                v.Anchored = true
                v.CanCollide = false
                v.Position = currentpos + value
            end
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128, 130, -352)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    end
end

troll()
