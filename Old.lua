local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh12eqweaws/vvvs/refs/heads/main/caz"))()
local Window = redzlib:MakeWindow({
  Title = "bt me gi dau",
  SubTitle = "???",
})

local AFKOptions = {}

local Discord = Window:MakeTab({"Youtube", "video"})
Discord:AddDiscordInvite({
  Name = "////",
  Description = "cc dumamay",
  Logo = "rbxassetid://id ảnh",
  Invite = ""
})
local Discord = Window:MakeTab({"Facebook", "play"})
Discord:AddDiscordInvite({
  Name = "Duc Design",
  Description = "cc dumamay",
  Logo = "rbxassetid://id ảnh",
  Invite = "https://www.facebook.com/"
  })
local Tab = Window:MakeTab({"Fix Lag",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "fix lag V1",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  	end    
})
Tab:AddButton({
	Name = "Fix lag V2",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/AKGAMING-FIXLAG"))()
  	end    
})

local Tab2 = Window:MakeTab({ "PvP",
	Name = "Mod Client",
	Icon = "rbxassetid://10723417131",
	PremiumOnly = false
})


Tab2:AddButton({
	Name = "Aim [dùng chung với HitBox]",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Ace/main/Ace"))()
  	end    
})

Tab2:AddButton({
	Name = "HitBox",
	Callback = function()
       loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
end
})

local Tab3 = Window:MakeTab({"Troll",
	Icon = "rbxassetid://10723425376",
	PremiumOnly = false
})

Tab3:AddButton({
	Name = "Fake Ban",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/giahuy2511-coder/FakeBan/refs/heads/main/fakeban"))()
end
})

Tab3:AddButton({
	Name = "Troll Kick",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/VxezeHubTrollKick/refs/heads/main/VxezeHubTrollKick.txt"))()
end
})
local Tab4 = Window:MakeTab({"Script Farm",
	Icon = "rbxassetid://10734906975",
	PremiumOnly = false
})
local Tab5 = Window:MakeTab({ "Auto",
	Icon = "rbxassetid://10723424838",
	PremiumOnly = false
})
Tab5:AddButton({
	Name = "Auto Mirage Island",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/mirage-island"))()
end
})
Tab5:AddButton({
	Name = "Auto Boss [Updatd]",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/VxezeHubHopBoss/refs/heads/main/SkidConCacBaM"))()
end
})
Tab5:AddButton({
	Name = "Auto Chest [tween]",
	Callback = function()
       getgenv().Team = "Marines" -- Pirates/Marines
getgenv().Hide_Menu = false -- true/false
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Autochest-Akgamingez"))()
end
})

Tab5:AddButton({
	Name = "Auto Chest [TPbypass]",
	Callback = function()
       _G.Settings = { ["Enable Farm"] = true, ["SnipeLegendaryItem"] = false, ["Choose Team"] = "Marines", ["White Screen"] = false, ["Reset Anti Detect"] = true } loadstring(game:HttpGet("https://raw.githubusercontent.com/xxhumggxx/SkullHub/refs/heads/main/ChestV2.lua"))()
end    
})

Tab3:AddButton({
	Name = "Reset Fruit",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/Kaitun.txt"))()
end
})

Tab3:AddButton({
	Name = "Trade Scam",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/lelel22f/test21/refs/heads/main/kk",true))()
end
})
Tab4:AddButton({
	Name = "W-azure Hub",
	Callback = function()
       getgenv().Team = "Pirates"
getgenv().AutoLoad = false --Will Load Script On Server Hop
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  	end    
})



Tab4:AddButton({
	Name = "Redz Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
end
})


Tab4:AddButton({
	Name = "Min Gaming",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinME"))()
end
})


Tab4:AddButton({
	Name = "Trẩu Roblox",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/TrauHub/refs/heads/main/TrauXt"))()
end
})

Tab4:AddButton({
	Name = "Master Hub",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/obfmoonsec/Masterhub/refs/heads/main/obf"))()
end
})

Tab4:AddButton({
	Name = "BlackTrap Hub",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
          loadstring(game:HttpGetAsync("https://lua-library.btteam.net/script-auth.txt"))()
  	end    
})

Tab4:AddButton({
	Name = "Zis Roblox",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/giaotrinhhoc/ZisRb/refs/heads/main/ZisRbV5"))()
  	end    
})
Tab4:AddButton({
	Name = "tên script",
	Callback = function()
        -- dán script vô
  	end    
})

Tab4:AddButton({
	Name = "tên script",
	Callback = function()
        -- dán script vô
  	end    
})

Tab4:AddButton({
	Name = "tên script",
	Callback = function()
        -- dán script vô
  	end    
})

Tab4:AddButton({
	Name = "CFrame Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Steveee11/Scripts/main/Blox%20Fruits%20OP%20Script"))()
  	end    
})

Tab4:AddButton({
	Name = "Flare Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/flares"))()
  	end    
})

Tab4:AddButton({
	Name = "BLCK Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/BLCK"))()
  	end    
})

Tab4:AddButton({
	Name = "Modz HUb",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/modz"))()
  	end    
})

Tab4:AddButton({
	Name = "Hoho Hub",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})

Tab4:AddButton({
	Name = "Lol Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/neon"))()
  	end    
})

Tab4:AddButton({
	Name = "Update...",
	Callback = function()
       -- dán script vô
  	end    
})

Tab4:AddButton({
	Name = "Update...",
	Callback = function()
       -- dán script vô
  	end    
})


Tab4:AddButton({
	Name = "Update...",
	Callback = function()
       -- dán script vô
  	end    
})

Tab4:AddButton({
	Name = "Update...",
	Callback = function()
       -- dán script vô
  	end    
})