repeat 
    wait() 
until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local v = 1
local PLR = game:GetService("Players").LocalPlayer
local HRP = PLR.Character.HumanoidRootPart

HRP.CFrame = CFrame.new(-869.63232421875, -38.302879333496, -586.50354003906) + Vector3.new(0, 4, 0)

coroutine.wrap(function()
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
end)()
