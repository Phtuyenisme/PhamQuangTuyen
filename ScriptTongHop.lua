--ScriptBY:PhtuyenzZ
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Script Tổng Hợp[V3] | Phtuyen⚡️", HidePremium = false, IntroEnabled = false, IntroText = "BUỒI | LỒN", SaveConfig = true, ConfigFolder = "PhtuyenConfig"})

--TAB
local Tab = Window:MakeTab({
	Name = "ScriptFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "KaiTun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "PvP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "Auto",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab4 = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end    
})