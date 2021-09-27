-- Need this updated, just shoot me a dm

local usernames = {"lnsidedition", "HIHIHIHIurM", "KirbyFleshlight"}

game.Players.PlayerAdded:Connect(function(plr)
    for i, v in pairs(usernames) do
        if plr.Name == v then
        local loc = game.Players.LocalPlayer
        loc:Kick(v.." joined | Anti RPT")
      end
    end
end)
