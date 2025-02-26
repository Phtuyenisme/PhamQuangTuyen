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
local Tab = Window:MakeTab({"tên tab",
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
local Tab1 = Window:MakeTab({"tên tab",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})
local Tab2 = Window:MakeTab({"tên tab",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})local Tab3 = Window:MakeTab({"tên tab",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})