-- UI Hiện Đại Dựa Trên OrionLib (Cải Tiến, Kéo Thả Mượt)
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 📌 Tạo UI Chính (Nhỏ Gọn)
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui") -- ⚡ Đảm bảo hiển thị đúng

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 400, 0, 250) -- ⚡ Giảm kích thước UI
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -125) -- ⚡ Căn giữa
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

-- 📌 Tạo UI Riêng Cho Nút Ẩn/Hiện
local ToggleGui = Instance.new("ScreenGui")
ToggleGui.Parent = LocalPlayer:WaitForChild("PlayerGui") -- ⚡ Đảm bảo hiển thị

-- 📌 Tạo Nút Ẩn/Hiện UI (Dùng ImageButton)
local ToggleButton = Instance.new("ImageButton")
ToggleButton.Size = UDim2.new(0, 50, 0, 50) -- ⚡ Kích thước lớn hơn để dễ kéo
ToggleButton.Position = UDim2.new(0, 20, 0, 400) -- ⚡ Căn chỉnh vị trí góc trái
ToggleButton.BackgroundTransparency = 1
ToggleButton.Image = "rbxassetid://7072719338" -- ⚡ Thay bằng ID ảnh bạn muốn
ToggleButton.Parent = ToggleGui

local isHidden = false
ToggleButton.MouseButton1Click:Connect(function()
    isHidden = not isHidden
    MainFrame.Visible = not isHidden
    ToggleButton.Image = isHidden and "rbxassetid://7072720870" or "rbxassetid://7072719338" -- ⚡ Đổi icon khi ẩn/hiện
end)

-- 📌 Hệ Thống Kéo Thả Cho Nút Ẩn/Hiện (ĐÃ SỬA)
local Dragging, DragInput, DragStart, StartPos

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        Dragging = true
        DragStart = input.Position
        StartPos = ToggleButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                Dragging = false
            end
        end)
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        DragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if Dragging and input == DragInput then
        local delta = input.Position - DragStart
        ToggleButton.Position = UDim2.new(0, StartPos.X.Offset + delta.X, 0, StartPos.Y.Offset + delta.Y)
    end
end)

-- 📌 Đảm bảo nút luôn hiển thị đúng
ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleButton.ZIndex = 10 -- ⚡ Luôn nằm trên cùng
