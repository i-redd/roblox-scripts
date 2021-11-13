local vers = "b1.3"
local PLR = game:GetService("Players").LocalPlayer
local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

coroutine.wrap(function()
    print(vers)

    local PLR = game:GetService("Players").LocalPlayer
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

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

    -- Respawn TP?
    coroutine.wrap(function()
        PLR.CharacterAdded:Connect(function()
            repeat
                wait()
            until HRP
            HRP.CFrame = CFrame.new(-869.63232421875, -38.302879333496, -586.50354003906) + Vector3.new(0, 4, 0)
        end)
    end)()

end)()
