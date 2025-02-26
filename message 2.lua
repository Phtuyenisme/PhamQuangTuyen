local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh12eqweaws/vvvs/refs/heads/main/caz"))()
local Window = redzlib:MakeWindow({
  Title = "Script Tổng Hợp[NEW]",
  SubTitle = "Phtuyen_yeuem",
})

local AFKOptions = {}

local Discord = Window:MakeTab({"Tiktok", "video"})
Discord:AddDiscordInvite({
  Name = "Phtuyen",
  Description = "SIGMA_BOY",
  Logo = "rbxassetid://89923135895849",
  Invite = ""
})
local Discord = Window:MakeTab({"Facebook", "play"})
Discord:AddDiscordInvite({
  Name = "Quang Tuyên",
  Description = "phtuyenisme",
  Logo = "http://www.roblox.com/asset/?id=112969263935543",
  Invite = "https://www.facebook.com/"
  })
local Tab = Window:MakeTab({"Script Farm",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "W-azure Hub",
	Callback = function()
       getgenv().Team = "Pirates"
getgenv().AutoLoad = false --Will Load Script On Server Hop
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  	end    
})
Tab:AddButton({
	Name = "Redz Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  	end    
})
Tab:AddButton({
	Name = "Min Gaming",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinME"))()
  	end    
})
Tab:AddButton({
	Name = "Trẩu Roblox",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/TrauHub/refs/heads/main/TrauXt"))()
  	end    
})
Tab:AddButton({
	Name = "Zis Roblox",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRb7"))()
  	end    
})
Tab:AddButton({
	Name = "Mukuro Hub",
	Callback = function()
     loadstring(game:HttpGet("https://auth.quartyz.com/scripts/Loader.lua"))()
  	end    
})
Tab:AddButton({
	Name = "Alchemy Hub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/AlchemyHub/main/Main.lua"))({ "discord.gg/alchemyhub","x2neptune.tech/LoaderPromo",true,"BY:x2Neptune" })
  	end    
})
Tab:AddButton({
	Name = "Raito Hub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
  	end    
})
Tab:AddButton({
	Name = "Speed Hub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua
  	end    
})
Tab:AddButton({
	Name = "Teddy Hub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/TeddyHubv2"))()
  	end    
})
Tab:AddButton({
	Name = "Xero Hub",
	Callback = function()
     getgenv().Team = "Pirates"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
  	end    
})
Tab:AddButton({
	Name = "AstralV1",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
  	end    
})
Tab:AddButton({
	Name = "QuanTum Hub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
  	end    
})
Tab:AddButton({
	Name = "Volcano Hub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoLocal.lua"))()
  	end    
})
Tab:AddButton({
	Name = "Rubu Tv",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RuBuBFVn"))()
  	end    
})
Tab:AddButton({
	Name = "BlueX",
	Callback = function()
     _G.Team = "Pirates" 
_G.FixLag = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  	end    
})