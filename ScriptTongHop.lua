local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/Phtuyenisme/PhamQuangTuyen/refs/heads/main/message_mobile.lua")()

-- Tạo cửa sổ chính (Main UI)
local Window = Flux:Window("Tên Cửa Sổ", "Mô tả", Color3.fromRGB(66, 134, 255), Enum.KeyCode.RightControl)

-- Tạo một tab trong cửa sổ
local Tab1 = Window:Tab("Tab 1", "rbxassetid://1234567890") -- Biểu tượng tab (có thể thay đổi)

Tab1:Button("Nhấn vào đây", "Đây là một nút", function()
    print("Bạn đã nhấn nút trong Tab 1!")
end)