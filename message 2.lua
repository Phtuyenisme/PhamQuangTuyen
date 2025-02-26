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
  Logo = "http://www.roblox.com/asset/?id=89923135895849",
  Invite = ""
})
local Discord = Window:MakeTab({"Facebook", "play"})
Discord:AddDiscordInvite({
  Name = "Quang Tuyên",
  Description = "phtuyenisme",
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
local Tab9 = Window:MakeTab({"tên tab",
	Icon = "rbxassetid://10734941499",
	PremiumOnly = false
})

Tab9:AddButton({
	Name = "NEW: Yumiara",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Overflow/refs/heads/main/Main.lua"))()
  	end    
})