-- Instances:

local HUD = Instance.new("ScreenGui")

local MAIN = Instance.new("Frame")

local start = Instance.new("TextButton")

local BAR = Instance.new("Frame")

local Close = Instance.new("TextButton")

local welcome = Instance.new("TextLabel")

local game = Instance.new("TextLabel")

--Properties:

HUD.Name = "HUD"

HUD.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if gethui() or syn.protect_gui then
    if gethui() then
        HUD.Parent = gethui()
    elseif syn.protect_gui then
        syn.protect_gui(HUD)
    end
else
    HUD.Parent = game.CoreGui
end

MAIN.Name = "MAIN"

MAIN.Parent = HUD

MAIN.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

MAIN.BackgroundTransparency = 0.500

MAIN.Position = UDim2.new(0.338179529, 0, 0.282417595, 0)

MAIN.Size = UDim2.new(0, 441, 0, 198)

start.Name = "start"

start.Parent = MAIN

start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

start.BackgroundTransparency = 1.000

start.Position = UDim2.new(0.316740483, 0, 0.614937246, 0)

start.Size = UDim2.new(0, 157, 0, 41)

start.Font = Enum.Font.PatrickHand

start.Text = "START"

start.TextColor3 = Color3.fromRGB(170, 0, 0)

start.TextScaled = true

start.TextSize = 14.000

start.TextWrapped = true

BAR.Name = "BAR"

BAR.Parent = MAIN

BAR.BackgroundColor3 = Color3.fromRGB(170, 0, 0)

BAR.Position = UDim2.new(-0.000202342868, 0, -0.00493537262, 0)

BAR.Size = UDim2.new(0, 441, 0, 20)

Close.Name = "Close"

Close.Parent = BAR

Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

Close.BackgroundTransparency = 1.000

Close.Position = UDim2.new(0.952380955, 0, 0, 0)

Close.Size = UDim2.new(0, 21, 0, 20)

Close.Font = Enum.Font.PatrickHand

Close.Text = "X"

Close.TextColor3 = Color3.fromRGB(0, 0, 0)

Close.TextScaled = true

Close.TextSize = 14.000

Close.TextWrapped = true

welcome.Name = "welcome"

welcome.Parent = MAIN

welcome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

welcome.BackgroundTransparency = 1.000

welcome.Position = UDim2.new(0, 0, 0.181818187, 0)

welcome.Size = UDim2.new(0, 441, 0, 30)

welcome.Font = Enum.Font.PatrickHand

welcome.Text = "Welcome: [user]"

welcome.TextColor3 = Color3.fromRGB(170, 0, 0)

welcome.TextScaled = true

welcome.TextSize = 14.000

welcome.TextWrapped = true

game.Name = "game"

game.Parent = MAIN

game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

game.BackgroundTransparency = 1.000

game.Position = UDim2.new(-0.000202343304, 0, 0.363636374, 0)

game.Size = UDim2.new(0, 441, 0, 24)

game.Font = Enum.Font.SourceSans

game.Text = "Game: [game]"

game.TextColor3 = Color3.fromRGB(170, 0, 0)

game.TextScaled = true

game.TextSize = 14.000

game.TextWrapped = true

-- Scripts:

local function DWAOFF_fake_script() -- start.LocalScript
    local script = Instance.new("LocalScript", start)

    script.Parent.MouseButton1Down:Connect(
        function()
            if game.GameId == 73754455 then
                script.Parent.Parent.Parent.Parent:Destroy()

                loadstring(game:HttpGet("https://raw.githubusercontent.com/AstraTehFloof/teyeye/main/Area51.lua", true))(

                )
            elseif game.GameId == 504035427 then
                script.Parent.Parent.Parent.Parent:Destroy()

                _G.gunname = "Machine Gun"

                loadstring(game:HttpGet("https://raw.githubusercontent.com/AstraTehFloof/teyeye/main/main.lua", true))()
            else
                script.Parent.Parent.Parent.Parent:Destroy()

                game.Players.LocalPlayer:Kick("Game is not supported, sorry!")
            end
        end
    )
end

coroutine.wrap(DWAOFF_fake_script)()

local function THUZF_fake_script() -- Close.LocalScript
    local script = Instance.new("LocalScript", Close)

    script.Parent.MouseButton1Down:Connect(
        function()
            script.Parent.Parent.Parent.Parent:Destroy()
        end
    )
end

coroutine.wrap(THUZF_fake_script)()

local function XTHCNA_fake_script() -- welcome.LocalScript
    local script = Instance.new("LocalScript", welcome)

    script.Parent.Text = tostring("Welcome: " .. game.Players.LocalPlayer.Name)
end

coroutine.wrap(XTHCNA_fake_script)()

local function CAXYEEP_fake_script() -- game.LocalScript
    local script = Instance.new("LocalScript", game)

    if game.GameId == 73754455 then
        script.Parent.Text = "Game: Survive and Kill the Killers in Area 51"
    elseif game.GameId == 504035427 then
        script.Parent.Text = "Game: Zombie Attack"
    else
        game.Players.LocalPlayer:Kick("Game is not supported, sorry!")
    end
end
