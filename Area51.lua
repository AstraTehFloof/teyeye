_G.ToggleColor = Color3.fromRGB(255, 0, 0)
_G.ButtonColor = Color3.fromRGB(0, 255, 0)
_G.SliderColor = Color3.fromRGB(0, 0, 255)

local StarterGui = game:GetService("StarterGui")
local library =
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3")))() -- It's obfuscated, I won't let you see my ugly coding skills. =)
local debugbool = false
local m = library:CreateWindow("Main")
local f = m:CreateFolder("Functions")
--

--[[
f:Button(
	"Name",
	function()
		--Code here
	end
)
]]
f:Button(
    "WalkSpeed",
    function()
        local tpwalking = true
        local hb = game:GetService("RunService").Heartbeat
        local chr = game.Players.LocalPlayer.Character
        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

        local StarterGui = game:GetService("StarterGui")
        StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Silent Speed",
                Text = "Please type '/e speed' to run this script!",
                Duration = 3000,
                Button1 = "Ok"
            }
        )
        game.Players.LocalPlayer.Chatted:Connect(
            function(args1)
                if string.lower(args1) == "/e speed" then
                    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                        if hum.MoveDirection.Magnitude > 0 then
                            local args = {
                                [1] = 1
                            }
                            if args[1] then
                                chr:TranslateBy(hum.MoveDirection * tonumber(args[1]))
                            else
                                chr:TranslateBy(hum.MoveDirection)
                            end
                        end
                    end
                end
            end
        )
    end
)

f:Button(
    "Show PAP",
    function()
        game.Players.LocalPlayer.PlayerGui:WaitForChild("PAP").Frame.Visible = true
    end
)

f:Button(
    "PAP All Guns",
    function()
        local tool = nil
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
            if v:IsA("Tool") then
                if v:IsA("LocalScript") then
                    wait()
                else
                    v = v
                    tool = tostring(v)
                    if string.find(tool, "PAP", 1) then
                        error("PAPED Gun found, skipping")
                    else
                        local args = {
                            [1] = tool
                        }

                        game:GetService("ReplicatedStorage"):FindFirstChild("Remote Functions"):FindFirstChild(
                            "PAP Weapon"
                        ):InvokeServer(unpack(args))
                        wait(0.015)
                        game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events").PAPFinished:FireServer()

                        tool = nil
                    end
                end
            end
        end
    end
)

f:Button(
    "Inf Energy gamepass",
    function()
        while wait() do
            fireclickdetector(game.Workspace.AREA51.CafeRoom["Coffee Machine"].Energy.Head.ClickDetector)
        end
    end
)

f:Button(
    "Kill all killers",
    function()
        killAllKillers()
    end
)

f:Button(
    "Infinite Yield",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
    end
)

local function killAllKillers()
    hitpart = nil

    for i, v in pairs(game.Workspace.Killers:GetDescendants()) do
        if v.Name == "Torso" then
            v = v
            hitpart = v
        end
    end

    local args = {
        [1] = hitpart,
        [2] = hitpart.Position,
        [3] = "MG42",
        [4] = 1644082977.4439,
        [5] = true
    }

    game:GetService("ReplicatedStorage"):FindFirstChild("Remote Events"):FindFirstChild("Missile Touch"):FireServer(
        unpack(args)
    )
    hitpart = nil
end
