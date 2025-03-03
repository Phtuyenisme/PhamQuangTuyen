local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh12eqweaws/vvvs/refs/heads/main/caz"))()
local Window = redzlib:MakeWindow({
  Title = "Script Tổng Hợp V2",
  SubTitle = "Phtuyenn",
})

local player = game.Players.LocalPlayer
local playerGui = player:FindFirstChild("PlayerGui")

-- Tạo một ScreenGui riêng để chứa nút Minimize
local buttonGui = Instance.new("ScreenGui99")
buttonGui.Name = "MinimizeButtonGUI"
buttonGui.Parent = playerGui

-- Tạo nút Minimize
local minimizeButton = Instance.new("ImageButton")
minimizeButton.Size = UDim2.new(0, 40, 0, 40)
minimizeButton.Position = UDim2.new(1, -50, 0, 10) -- Góc trên phải màn hình
minimizeButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
minimizeButton.Image = "rbxassetid://112969263935543" -- Icon Minimize
minimizeButton.Parent = buttonGui -- Gắn vào GUI riêng biệt

-- Thêm góc bo tròn
local uicorner = Instance.new("UICorner")
uicorner.Parent = minimizeButton

-- Tìm UI chính cần ẩn/hiện
local myGui = playerGui:FindFirstChild("ScreenGui") -- ⚠ Thay "MainUI" bằng tên thực tế của UI

-- Khi bấm, ẩn hoặc hiện UI chính
minimizeButton.MouseButton1Click:Connect(function()
    if myGui then
        myGui.Enabled = not myGui.Enabled -- Ẩn/Hiện UI chính
    end
end)

local AFKOptions = {}

local Discord = Window:MakeTab({"TikTok", "video"})
Discord:AddDiscordInvite({
  Name = "phamTuyen",
  Description = "Phtuyen_yeuem",
  Logo = "http://www.roblox.com/asset/?id=112969263935543",
  Invite = "https://www.tiktok.com/@.pham.tuyen?_t=ZS-8uFDxCkfL9j&_r=1"
})
local Discord = Window:MakeTab({"Facebook", "play"})
Discord:AddDiscordInvite({
  Name = "Quang Tuyên",
  Description = "SIGMA_BOY",
  Logo = "http://www.roblox.com/asset/?id=89923135895849",
  Invite = "https://www.facebook.com/ph.tuyenn0"
  })
local Tab = Window:MakeTab({"Fix Lag",
	Icon = "rbxassetid://10709774068",
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
	Icon = "rbxassetid://10734975692",
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
       loadstring(game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
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
	Icon = "rbxassetid://10709751939",
	PremiumOnly = false
})
Tab5:AddButton({
	Name = "Auto Mirage Island",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Mirage-Teddyreal-FREE"))()
end
})
Tab5:AddButton({
	Name = "Auto Boss[Update]",
	Callback = function()
       --dán Script vô
end
})
Tab5:AddButton({
	Name = "Auto Boss+MirageIsland",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
end
})

Tab5:AddButton({
	Name = "Auto Chest [TPbypass]",
	Callback = function()
       _G.Settings = { 
    ["Enable Farm"] = true, 
    ["SnipeLegendaryItem"] = false, 
    ["Choose Team"] = "Marines", 
    ["White Screen"] = false, 
    ["Reset Anti Detect"] = true 
} 

loadstring(game:HttpGet("https://raw.githubusercontent.com/xxhumggxx/SkullHub/refs/heads/main/ChestV2.lua"))()
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
	Name = "Zis Roblox",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRb7"))()
end
})

Tab4:AddButton({
	Name = "Mukuro Hub",
	Callback = function()
       loadstring(game:HttpGet("https://auth.quartyz.com/scripts/Loader.lua"))()
  	end    
})

Tab4:AddButton({
	Name = "Alchemy Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/AlchemyHub/main/Main.lua"))({ "discord.gg/alchemyhub","x2neptune.tech/LoaderPromo",true,"BY:x2Neptune" })
  	end    
})
Tab4:AddButton({
	Name = "Raito Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
  	end    
})

Tab4:AddButton({
	Name = "Speed Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  	end    
})

Tab4:AddButton({
	Name = "Teddy Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/TeddyHubv2"))()
  	end    
})

Tab4:AddButton({
	Name = "Xero Hub",
	Callback = function()
       getgenv().Team = "Pirates"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
  	end    
})

Tab4:AddButton({
	Name = "AstralV1 Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
  	end    
})

Tab4:AddButton({
	Name = "QuanTum Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
  	end    
})

Tab4:AddButton({
	Name = "Volcano Hub",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoLocal.lua"))()
  	end    
})

Tab4:AddButton({
	Name = "Rubu TV",
	Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RuBuBFVn"))()
  	end    
})

Tab4:AddButton({
	Name = "BlueX Hub",
	Callback = function()
       _G.Team = "Pirates" 
_G.FixLag = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
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