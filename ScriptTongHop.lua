local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/Phtuyenisme/PhamQuangTuyen/refs/heads/main/message.lua")()

local win = Flux:Window("PREVIEW", "Baseplate", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)
local tab = win:Tab("Tab 1", "http://www.roblox.com/asset/?id=6023426915")
tab:Button("Kill all", "This function may not work sometimes and you can get banned.", function()
Flux:Notification("Killed all players successfully!", "Alright")
end)
tab:Label("This is just a label.")
tab:Line()
tab:Toggle("Auto-Farm Coins", "Automatically collects coins for you!", function(t)
print(t)
end)
tab:Slider("Walkspeed", "Makes your faster.", 0, 100,16,function(t)
print(t)
end)
tab:Dropdown("Part to aim at", {"Torso","Head","Penis"}, function(t)
print(t)
end)
tab:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)
tab:Textbox("Gun Power", "This textbox changes your gun power, so you can kill everyone faster and easier.", true, function(t)
print(t)
end)
tab:Bind("Kill Bind", Enum.KeyCode.Q, function()
print("Killed a random person!")
end)
win:Tab("Tab 2", "http://www.roblox.com/asset/?id=6022668888")