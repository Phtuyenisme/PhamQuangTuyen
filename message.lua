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

-- 📌 Nút Thu Nhỏ UI
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -70, 0, 5) -- ⚡ Góc phải, cách 70px từ mép
MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MinimizeButton.Text = "-"
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.TextSize = 20
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Parent = MainFrame

local isMinimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 400, 0, 40)}):Play()
    else
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 400, 0, 250)}):Play()
    end
end)

-- 📌 Nút Thoát UI
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5) -- ⚡ Góc phải, cách 35px từ mép
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Text = "X"
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 16
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Parent = MainFrame

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy() -- ⚡ Xóa UI hoàn toàn
end)

-- 📌 Tiêu đề (Dùng làm khu vực kéo UI)
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "UI Mini - Phtuyenz"
Title.TextSize = 16 -- ⚡ Chữ nhỏ hơn
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = MainFrame

-- 📌 Hệ Thống Tab (Danh sách Tab)
local TabMenu = Instance.new("Frame")
TabMenu.Size = UDim2.new(1, 0, 0, 40)
TabMenu.Position = UDim2.new(0, 0, 0, 40)
TabMenu.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TabMenu.Parent = MainFrame

-- 📌 Khu vực hiển thị nội dung Tab
local TabContent = Instance.new("Frame")
TabContent.Size = UDim2.new(1, 0, 1, -80) -- ⚡ Trừ phần tiêu đề & Tab Menu
TabContent.Position = UDim2.new(0, 0, 0, 80)
TabContent.BackgroundTransparency = 1
TabContent.Parent = MainFrame

-- 📌 Hệ thống `MakeTab()`
local Tabs = {}

function MakeTab(tabName)
    -- 📌 Tạo Tab Button
    local TabButton = Instance.new("TextButton")
    TabButton.Size = UDim2.new(0, 100, 0, 40)
    TabButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    TabButton.Text = tabName
    TabButton.Font = Enum.Font.GothamBold
    TabButton.TextSize = 14
    TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabButton.Parent = TabMenu

    -- 📌 Tạo khu vực nội dung Tab
    local TabFrame = Instance.new("Frame")
    TabFrame.Size = UDim2.new(1, 0, 1, 0)
    TabFrame.BackgroundTransparency = 1
    TabFrame.Visible = false
    TabFrame.Parent = TabContent

    -- 📌 Thêm Tab vào danh sách
    Tabs[tabName] = TabFrame

    -- 📌 Xử lý khi bấm vào Tab
    TabButton.MouseButton1Click:Connect(function()
        for _, frame in pairs(Tabs) do
            frame.Visible = false
        end
        TabFrame.Visible = true
    end)
    
    return TabFrame
end

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
ToggleGui.ResetOnSpawn = false -- ⚡ Đảm bảo nút không bị mất khi respawn
ToggleGui.Parent = LocalPlayer:WaitForChild("PlayerGui") -- ⚡ Đảm bảo hiển thị

-- 📌 Tạo Nút Ẩn/Hiện UI (Dùng ImageButton)
local ToggleButton = Instance.new("ImageButton")
ToggleButton.Size = UDim2.new(0, 50, 0, 50) -- ⚡ Kích thước lớn hơn để dễ kéo
ToggleButton.Position = UDim2.new(0.2, 0, 0.85, 0) -- ⚡ Căn chỉnh vị trí góc trái
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
