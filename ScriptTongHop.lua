--ScriptBY:PhtuyenzZ
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Script Tổng Hợp[V3] | Phtuyen⚡️", HidePremium = false, IntroEnabled = false, IntroText = "BUỒI | LỒN", SaveConfig = true, ConfigFolder = "PhtuyenConfig"})

--TAB
-- 📌 Tạo Tab Giới Thiệu
local AboutTab = Window:MakeTab({
    Name = "Giới Thiệu",
    Icon = "rbxassetid://10747374131", -- Icon cho Tab (có thể thay thế)
    PremiumOnly = false
})

-- 📌 Thêm Logo
AboutTab:AddImage({
    Image = "rbxassetid://112969263935543", -- ⚠ Thay bằng ID hình ảnh của bạn
    ImageSize = UDim2.new(0, 150, 0, 150) -- Kích thước Logo
})

-- 📌 Thêm nội dung giới thiệu
AboutTab:AddLabel("🎉 Chào mừng bạn đến với Script Tổng Hợp V2!") 
AboutTab:AddLabel("🛠 Phiên bản: 1.0.0") 
AboutTab:AddLabel("👤 Tác giả: Phtuyenn") 
AboutTab:AddLabel("🔗 Discord: discord.gg/example") 

-- 📌 Thêm nút liên hệ Discord
AboutTab:AddButton({
    Name = "🔗 Tham gia Discord",
    Callback = function()
        setclipboard("https://discord.gg/example") -- Sao chép link Discord vào clipboard
    end
})

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

local Tab5 = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})