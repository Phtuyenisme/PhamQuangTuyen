local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/Phtuyenisme/PhamQuangTuyen/refs/heads/main/message_mobile.lua")()

-- Tạo cửa sổ chính (Main UI)
local Window = Flux:Window("Tên Cửa Sổ", "Mô tả", Color3.fromRGB(66, 134, 255), Enum.KeyCode.RightControl)

-- Tạo một tab trong cửa sổ
local Tab1 = Window:Tab("Tab 1", "rbxassetid://1234567890") -- Biểu tượng tab (có thể thay đổi)

-- Tạo một nút trong tab
Tab:Button("Nhấn vào đây", "Nút này có thể thực hiện một hành động", function()
    print("Bạn đã nhấn vào nút!")
end)

-- Tạo một Toggle (Bật/Tắt)
Tab:Toggle("Bật/Tắt Chức Năng", "Mô tả toggle", false, function(state)
    print("Trạng thái Toggle:", state)
end)

-- Tạo một Local Window bằng `Flux:Window`
local LocalWindow = Flux:Window("Local Window", "Cửa sổ nhỏ", Color3.fromRGB(255, 100, 100), Enum.KeyCode.LeftControl)

-- Tạo tab trong Local Window
local LocalTab = LocalWindow:Tab("Tùy chọn", "rbxassetid://9876543210")

-- Thêm một nút vào Local Window
LocalTab:Button("Đóng Local Window", "Nhấn để đóng", function()
    LocalWindow:Toggle(false) -- Ẩn cửa sổ khi nhấn
end)