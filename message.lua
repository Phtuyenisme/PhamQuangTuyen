-- UI Hiện Đại Dựa Trên OrionLib (Cải Tiến, Kéo Thả Mượt Cho Cả UI & ToggleButton)
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

-- 📌 Tiêu đề (Dùng làm khu vực kéo UI)
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "UI Mini - Phtuyenz"
Title.TextSize = 16 -- ⚡ Chữ nhỏ hơn
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = MainFrame

-- 📌 Hệ Thống Kéo Thả UI Chính
local DraggingUI, DragStartUI, StartPosUI

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        DraggingUI = true
        DragStartUI = input.Position
        StartPosUI = MainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                DraggingUI = false
            end
        end)
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        DragInputUI = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if DraggingUI and input == DragInputUI then
        local delta = input.Position - DragStartUI
        MainFrame.Position = UDim2.new(0, StartPosUI.X.Offset + delta.X, 0, StartPosUI.Y.Offset + delta.Y)
    end
end)

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

-- 📌 Hệ Thống Kéo Thả Cho Nút Ẩn/Hiện
local DraggingToggle, DragStartToggle, StartPosToggle

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        DraggingToggle = true
        DragStartToggle = input.Position
        StartPosToggle = ToggleButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                DraggingToggle = false
            end
        end)
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        DragInputToggle = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if DraggingToggle and input == DragInputToggle then
        local delta = input.Position - DragStartToggle
        ToggleButton.Position = UDim2.new(0, StartPosToggle.X.Offset + delta.X, 0, StartPosToggle.Y.Offset + delta.Y)
    end
end)

-- 📌 Đảm bảo nút luôn hiển thị đúng
ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleButton.ZIndex = 10 -- ⚡ Luôn nằm trên cùng
