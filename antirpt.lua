local usernames = {"lnsidedition", "HIHIHIHIurM"}
-- local uids = {1592948699, 1733077634}
game.Players.PlayerAdded:Connect(function(plr)
    for i, v in pairs(usernames) do
        if plr.Name == v then
        local loc = game.Players.LocalPlayer
        loc:Kick(v.." joined (report bot)")
      end
    end
end)
