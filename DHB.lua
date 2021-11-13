vers = "1.2"

coroutine.wrap(function()

    print("1 "..vers)

    local PLR = game:GetService("Players").LocalPlayer
    local HRP = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

    HRP.CFrame = CFrame.new(-869.63232421875, -38.302879333496, -586.50354003906) + Vector3.new(0, 4, 0)

    coroutine.wrap(function()
        print("1.1")
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
        print("1.2")
        PLR.CharacterAdded:Connect(function()
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            print("1.2.1")
            HRP.CFrame = CFrame.new(-869.63232421875, -38.302879333496, -586.50354003906) + Vector3.new(0, 4, 0)
        end)
    end)()

end)()
