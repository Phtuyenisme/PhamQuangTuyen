--ScriptBY:PhtuyenzZ
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Script Tổng Hợp[V3] | Phtuyen⚡️", HidePremium = false, IntroEnabled = false, IntroText = "BUỒI | LỒN", SaveConfig = true, ConfigFolder = "PhtuyenConfig"})

for _, tween in pairs(TweenService:GetChildren()) do
    tween:Destroy()
end

task.wait(1) -- Đợi 1 giây để UI load
local MainUI = game.CoreGui:FindFirstChild("Orion") -- Tìm UI chính
if MainUI then
    MainUI.Main.Draggable = true
    MainUI.Main.Active = true -- Bắt buộc để kéo được
    MainUI.Main.Selectable = true
end

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