local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh12eqweaws/vvvs/refs/heads/main/caz"))()
local Window = redzlib:MakeWindow({
  Title = "Script Tổng Hợp[NEW]",
  SubTitle = "Phtuyen_zZ",
})

local AFKOptions = {}

local Discord = Window:MakeTab({"Youtube", "video"})
Discord:AddDiscordInvite({
  Name = "Phtuyenisme",
  Description = "SIGMA_BOY",
  Logo = "rbxassetid://id ảnh",
  Invite = ""
})
local Discord = Window:MakeTab({"Facebook", "play"})
Discord:AddDiscordInvite({
  Name = "Quang Tuyên",
  Description = "phtuyen_yeuem",
  Logo = "rbxassetid://92532554311671",
  Invite = "https://www.facebook.com/ph.tuyenn0"
  })
local Tab = Window:MakeTab({"Script",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "NEW: Yumiara",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))()
  	end    
})
Tab:AddButton({
	Name = "NEW: Gangteng",
	Callback = function()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/a5c3af437cd698d64379cf75cacb9281.lua"))()
  	end    
})
Tab:AddButton({
	Name = "NEW: Volcano",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoLocal.lua"))()
  	end    
})

local Tab3 = Window:MakeTab({"tên tab",
	Icon = "rbxassetid://10723425376",
	PremiumOnly = false
})

Tab3:AddButton({
	Name = "Fix Lag",
	Callback = function()
        repeat wait(5) until game:IsLoaded()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
end
})

Tab3:AddButton({
	Name = "Anti Kick",
	Callback = function()
        repeat wait(5) until game:IsLoaded()
     loadstring(game:HttpGet("https://pastebin.com/raw/FPfaukXN"))()
end
})
local Tab4 = Window:MakeTab({"Tên tab",
	Icon = "rbxassetid://10734906975",
	PremiumOnly = false
})

Tab4:AddButton({
	Name = "Royx Hub",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
         loadstring(game:HttpGet("https://api.realaya.xyz/v1/files/l/73mkp0aqyfo4ypy8hvl0nz10lq49fey5.lua"))()
  	end    
})



Tab4:AddButton({
	Name = "Trẩu Roblox",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/TrauHub/refs/heads/main/TrauV1"))()
end
})


Tab4:AddButton({
	Name = "Cụt Tay Hub",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
         loadstring(game:HttpGet('https://raw.githubusercontent.com/diemquy/CutTayHub/main/Cuttayhubreal.lua'))()
end
})


Tab4:AddButton({
	Name = "Xero Hub",
	Callback = function()
         repeat wait(5) until game:IsLoaded()
         getgenv().Team = "Marines" -- Pirates/Marines
getgenv().Fix_Lag = true -- true/false
getgenv().Auto_Execute = false -- true/false
getgenv().Clear_Settings = false -- true/false
loadstring(game:HttpGet("http://apixerohub.x10.mx/main.lua"))()
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
	Name = "Zen Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaizenofficiall/ZenHub/main/Loader", true))()
  	end    
})

Tab4:AddButton({
	Name = "Uranium/Switch Hub",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Augustzyzx/UraniumX/main/src_.lua.txt"))()
  	end    
})


Tab4:AddButton({
	Name = "Thunder Z",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Mobile-Loader"))()
  	end    
})

Tab4:AddButton({
	Name = "Mukuro Hub",
	Callback = function()
        loaloadstring(game:HttpGet("https://raw.githubusercontent.com/xDepressionx/Free-Script/main/BloxFruit.lua"))()
  	end    
})