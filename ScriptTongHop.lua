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

AboutTab:AddButton({
    Name = "🔗 Tham gia Discord",
    Callback = function()
        setclipboard("https://discord.gg/example") -- Sao chép link Discord vào clipboard
    end
})