
--loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
for i, v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "Bomb" then
        if v:FindFirstChild("Owner") then
            v:Destroy()
        else
        return nil
        end
    end
end

local RNTPE = false
local NCE = false
local AFE = false
_G.ToggleColor = Color3.fromRGB(255, 0, 0)
_G.ButtonColor = Color3.fromRGB(0, 255, 0)
_G.SliderColor = Color3.fromRGB(0, 0, 255)

local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3")))() -- It's obfuscated, I won't let you see my ugly coding skills. =)
local debugbool = false
local w = library:CreateWindow("Main")
local w1 = library:CreateWindow("Gods")
local w2 = library:CreateWindow("Autofarming")

local b = w:CreateFolder("Character Exploits")
local xdd = w:CreateFolder("Misc Scripts")
local tp = w:CreateFolder("Teleports")
local b1 = w1:CreateFolder("God Exploits")
local b2 = w2:CreateFolder("Bread autofarming")

-- loadstring(game:HttpGet(('https://raw.githubusercontent.com/superdude914/scripts/master/remotespy.lua')))()
b1:Button(
    "Kill BG",
    function()
        killbg()
    end
)
xdd:Button(
    "Inf Yield",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
)
--tp:Label("Teleports",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
b1:Button(
    "Kill EBG",
    function()
        killebg()
    end
)

tp:Button(
    "Get Sword (Will become viking)",
    function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character
        local currentpos = char.HumanoidRootPart.Position
        wait(0.2)

        if fireproximityprompt then
            char.HumanoidRootPart.CFrame = CFrame.new(-254, 19, -210)
            wait(0.5)
            fireproximityprompt(game.Workspace.Map.Bricklandia.SwordStand.Sword.Sword)
            wait(0.001)
            char.HumanoidRootPart.CFrame = CFrame.new(currentpos)
        else
            local m = Instance.new("Message")
            m.Text = "Your exploit doesnt support this function, this button wont work."
            m.Parent = game.Workspace
            wait(2)
            m:Destroy()
        end
    end
)

tp:Button(
    "Castle",
    function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character

        char.HumanoidRootPart.CFrame = CFrame.new(-423, 24, 33)
    end
)
-- -423, 24, 33

tp:Button(
    "Noob Lord spawn",
    function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character

        char.HumanoidRootPart.CFrame = CFrame.new(-396, 37, 30)
    end
)
-- -396, 37, 30

tp:Button(
    "Bricklandia",
    function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character

        char.HumanoidRootPart.CFrame = CFrame.new(-405, 61, -143)
    end
)
-- -405, 61, -143
tp:Button(
    "Admin Spawn",
    function()
        local plr = game.Players.LocalPlayer
        local char = plr.Character

        char.HumanoidRootPart.CFrame = CFrame.new(-418, 46, -143)
    end
)

-- -418, 46, -143
b:Button(
    "Noclip (PRESS E)",
    function()
        if NCE == false then
            NCE = true
            noclip = false
            game:GetService("RunService").Stepped:connect(
                function()
                    if noclip then
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                end
            )
            plr = game.Players.LocalPlayer
            mouse = plr:GetMouse()
            mouse.KeyDown:connect(
                function(key)
                    if key == "e" then
                        noclip = not noclip
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    end
                end
            )
        elseif NCE == true then
            local m = Instance.new("Message")
            m.Name = math.random(1, 50239)
            m.Text = "This is already enabled"
            m.Parent = game.Workspace
            wait(2)
            m:Destroy()
        end
    end
)

b:Button(
    "Remove nametag",
    function()
        RNT()
    end
)

b:Button(
    "Remove nametag (PERM)",
    function()
        if RNTPE == false then
            RNTPE = true
            RNTP()
        elseif RNTPE == true then
            local m = Instance.new("Message")
            m.Name = math.random(1, 50239)
            m.Text = "This is already enabled"
            m.Parent = game.Workspace
            wait(2)
            m:Destroy()
        end
    end
)

b:Button(
    "Force team change",
    function()
        local remote = game.ReplicatedStorage.Remotes:WaitForChild("BackToChoosing")
        remote:FireServer()
    end
)
--
--[[
b2:Button("Autofarm bread (toggleable)",function()
if AFE == false then
AFE = true
autofarmstart()
while wait(7.001) do
autofarmstart()
end
else

end
end)	
]] b2:Button(
    "Autofarm bread (toggleable)",
    function()
        if AFE == false then
            AFE = true
            autofarmstart()
            while wait(6.5) do
                autofarmstart()
                if AFE == false then
                    break
                end
            end
        end
    end
)

b2:Button(
    "(Disable autofarm toggle)",
    function()
        if AFE == true then
            AFE = false
        end
    end
) --b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
--

--[[
b:Toggle("Bread autofarm",function(bool)
shared.toggle = bool
wait(0.5)
if shared.toggle == true then
autofarmbreadmessage()
while wait(5) do
autofarmstart()
end
else
end
end)
]] -- print(mob)
--nd)

--b:Toggle("Toggle",function(bool)
--shared.toggle = bool
--print(shared.toggle)
--end)

function killbg()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char.Head:FindFirstChild("NameGui") then
        char.Head.NameGui:Destroy()
    end
    while true do
        for i, v in pairs(game.Workspace.Interactables.Gods.BrickGod:GetDescendants()) do
            if v.Name == "Part" then
                v.CanCollide = false
            end
        end
        if game.Players.LocalPlayer.Backpack:FindFirstChild("sword") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.sword)
        else
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
        end
        wait(0.05)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-508, 74, -372)
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            for i, v in pairs(game.Workspace.Interactables.Gods.BrickGod:GetDescendants()) do
                if v.Name == "Part" then
                    v.CanCollide = true
                end
            end
            break
        else
        end
    end
end

function killebg()
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char.Head:FindFirstChild("NameGui") then
        char.Head.NameGui:Destroy()
    end
    while true do
        for i, v in pairs(game.Workspace.Interactables.Gods.EvilBrickGod:GetDescendants()) do
            if v.Name == "Part" then
                v.CanCollide = false
            end
        end
        if game.Players.LocalPlayer.Backpack:FindFirstChild("sword") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.sword)
        else
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
            game.Players.LocalPlayer.Character.sword.HeavyAttack:FireServer()
        end
        wait(0.05)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(503, 39, 39)
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
            for i, v in pairs(game.Workspace.Interactables.Gods.EvilBrickGod:GetDescendants()) do
                if v.Name == "Part" then
                    v.CanCollide = true
                end
            end
            break
        else
        end
    end
end

function RNT()
    local player = game.Players.LocalPlayer
    local char = player.Character
    char.Head.NameGui:Destroy()
end

function RNTP()
    game:GetService("RunService").RenderStepped:connect(
        function()
            local player = game.Players.LocalPlayer
            local char = player.Character
            if char.Head:FindFirstChild("NameGui") then
                v = char.Head:FindFirstChild("NameGui")
                v:Destroy()
            else
            return nil
            end
        end
    )
end

function autofarmstart()
	
	local remote = game.ReplicatedStorage.Remotes:WaitForChild("BackToChoosing")
    remote:FireServer()
	wait(1)
	local plr = game.Players.LocalPlayer
    local char = plr.Character
    char.HumanoidRootPart.CFrame = CFrame.new(-467, 6, -355)
    wait(0.4)
	for i,v in pairs(plr.Backpack:GetChildren()) do
		if v.Name == "uncooked bred" then
			v:Destroy()
			else
			wait()
		end
		
	end
		
		
    for i, v in pairs(game.Workspace.Map.Bricklandia:GetDescendants()) do
        if v.Name == "Dough" then
            fireproximityprompt(v)
        end
    end

    wait(10)
    char.Humanoid:EquipTool(plr.Backpack["uncooked bred"])
    wait(0.001)
    char.HumanoidRootPart.CFrame = CFrame.new(-372, 7, -352)
    if plr.Backpack:FindFirstChild("bred") then
        local remote = game:GetService("ReplicatedStorage").Remotes.Shop
        remote:FireServer("bred", false)
        else
        return nil
    end
    if plr.Backpack:FindFirstChild("burnt bred") then
        local bred = plr.Backpack:FindFirstChild("burnt bred")
        bred.Parent = game.Workspace
        bred:Destroy()
        else
        return nil
    end
end

--11.6001
function autofarmbreadmessage()
    local m = Instance.new("Message")
    m.Name = math.random(1, 1929)
    m.Text = "Please note, this is toggleable, but doesnt not mean you dont get banned from the game."
    m.Parent = game.Workspace
    wait(5)
    m:Destroy()
end

--[[
-467, 6, -355
-374, 7, -354
]] --
