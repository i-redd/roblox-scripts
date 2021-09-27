_G.AutoDough = true
_G.AutoExtra = true -- Sauce & Topping, more coins?
_G.AutoStamper = true -- Probably gives more coins too
-- didnt care to add autobox cus the 12yo's do it anyway

--[[

for "Club Roblox" pizzeria, some cheap vers adopt me ig
link https://www.roblox.com/games/3457390032

this is all just remotes

]]

local rmt = game:GetService("ReplicatedStorage")

-- resetting oven by default, every 30 seconds
spawn(function()
    while wait(30) do
        local args = { [1] = workspace.GlobalServerItems.Interactables.Oven }
        rmt.PizzaEvents.remoteResetOven:FireServer(unpack(args))
    end
end)

spawn(function()
    while _G.AutoDough do wait(.7)
        local args = { [1] = workspace.GlobalServerItems.Interactables.DoughDropper }
        rmt.PizzaEvents.remoteDropDough:FireServer(unpack(args))  
    end
end)

spawn(function()
    if _G.AutoExtra == true then -- Renaming so it makes cheese pizza with pepperons, idk if you can do it differently im too nigmode
        game:GetService("Workspace").GlobalServerItems.Interactables.SauceDropper.Name = "Rename"
        game:GetService("Workspace").GlobalServerItems.Interactables.ToppingDropper.Name = "Topping1"
        game:GetService("Workspace").GlobalServerItems.Interactables.ToppingDropper.Name = "Rename"
        game:GetService("Workspace").GlobalServerItems.Interactables.ToppingDropper.Name = "Topping2"
    end
    
    while _G.AutoExtra do wait(.5)
        local args1 = { [1] = workspace.GlobalServerItems.Interactables.Topping1 }
        local args2 = { [1] = workspace.GlobalServerItems.Interactables.Topping2 }
        local args3 = { [1] = workspace.GlobalServerItems.Interactables.SauceDropper }
        
        rmt.PizzaEvents.remoteAddTopping:FireServer(unpack(args1))
        rmt.PizzaEvents.remoteAddTopping:FireServer(unpack(args2))
        rmt.PizzaEvents.remoteAddSauce:FireServer(unpack(args3))
    end
end)

spawn(function()
    if _G.AutoStamper == true then
        game:GetService("Workspace").GlobalServerItems.Interactables.PizzaStamper.Name = "piss"
    end
    
    while _G.AutoStamper do wait(.5)
        local args = { [1] = workspace.GlobalServerItems.Interactables.PizzaStamper }
        rmt.PizzaEvents.remotePizzaStamper:FireServer(unpack(args))
    end
end)

print("end")
