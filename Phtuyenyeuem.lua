local Tab2 = Window:MakeTab({"Script Kaitun",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "Update Soon",
	Callback = function()
       ---Update
  	end    
})
local Tab3 = Window:MakeTab({"Script Auto",
	Icon = "rbxassetid://10709751939",
	PremiumOnly = false
})

Tab3:AddButton({
	Name = "Auto Mirage Island",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/mirage-island"))()
  	end    
})

Tab3:AddButton({
	Name = "Cuttay Hub",
	Callback = function()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a1498369f289af2671cca90085f23fb8.lua"))()
  	end    
})

Tab3:AddButton({
	Name = "Auto Boss[Update]",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/VxezeHubHopBoss/refs/heads/main/SkidConCacBaM"))()
  	end    
})

Tab3:AddButton({
	Name = "Auto Chest[tween]",
	Callback = function()
       getgenv().Team = "Marines" -- Pirates/Marines

getgenv().Hide_Menu = false -- true/false

loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Autochest-Akgamingez"))()
  	end    
})

Tab3:AddButton({
	Name = "Auto Chest[TpBypass]",
	Callback = function()
       _G.Settings = { ["Enable Farm"] = true, ["SnipeLegendaryItem"] = false, ["Choose Team"] = "Marines", ["White Screen"] = false, ["Reset Anti Detect"] = true } loadstring(game:HttpGet("https://raw.githubusercontent.com/xxhumggxx/SkullHub/refs/heads/main/ChestV2.lua"))()
  	end    
})
local Tab4 = Window:MakeTab({"Fix Lag-PvP",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab4:AddButton({
	Name = "Fix Lag_V1",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  	end    
})

Tab4:AddButton({
	Name = "Fix Lag_V2",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/AKGAMING-FIXLAG"))()
  	end    
})

Tab4:AddButton({
	Name = "AimBot [Dùng cùng HitBox]",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Ace/main/Ace"))()
  	end    
})

Tab4:AddButton({
	Name = "HitBox",
	Callback = function()
       loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
  	end    
})
local Tab5 = Window:MakeTab({"Script Troll",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab5:AddButton({
	Name = "Fake Ban",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/FakeBan/refs/heads/main/fakeban"))()
  	end    
})

Tab5:AddButton({
	Name = "Troll Kick",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/VxezeHubTrollKick/refs/heads/main/VxezeHubTrollKick.txt"))()
  	end    
})

Tab5:AddButton({
	Name = "Reset Fruit",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/Kaitun.txt"))()
  	end    
})

Tab5:AddButton({
	Name = "Trade Scam",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/lelel22f/test21/refs/heads/main/kk",true))()
  	end    
})
