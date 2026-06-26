local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("Obby Tower Script")
local gg = Window:NewSection("Main")

local localplayer = game.Players.LocalPlayer

gg:CreateButton("Get Sword", function()
    local sword = workspace:FindFirstChild("ClassicSword")
    if sword and sword:FindFirstChild("Handle") and sword.Handle:FindFirstChild("TouchInterest") then
        local touchInterest = sword.Handle
        firetouchinterest(localplayer.Character.HumanoidRootPart, touchInterest, 0)
        wait()
        firetouchinterest(localplayer.Character.HumanoidRootPart, touchInterest, 1)
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Sword",
            Text = "Sword is not Available.",
            Icon = "",
            Duration = 8
        })
    end
end)
