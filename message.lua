-- UI Hiện Đại Dựa Trên OrionLib (Cải Tiến)
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 📌 Tạo UI Chính
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 600, 0, 400)
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

-- Tiêu đề
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "UI Hiện Đại - Phtuyenz"
Title.TextSize = 18
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Parent = MainFrame

-- Nút Minimize
local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 40, 0, 40)
MinimizeButton.Position = UDim2.new(1, -50, 0, 5)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
MinimizeButton.Text = "-"
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.TextSize = 18
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Parent = MainFrame

local function ToggleMinimize()
    if MainFrame.Size.Y.Offset > 50 then
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 600, 0, 50)}):Play()
    else
        TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0, 600, 0, 400)}):Play()
    end
end

MinimizeButton.MouseButton1Click:Connect(ToggleMinimize)

-- Hệ thống kéo thả
local Dragging, DragStart, StartPos

local function UpdateDrag(input)
    local delta = input.Position - DragStart
    MainFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        DragStart = input.Position
        StartPos = MainFrame.Position
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
        UpdateDrag(input)
    end
end)

-- 📌 Tạo UI Riêng Cho Nút Ẩn/Hiện
local ToggleGui = Instance.new("ScreenGui")
ToggleGui.Parent = game.CoreGui

-- 📌 Tạo Nút Ẩn/Hiện UI (Nằm Ngoài UI Chính)
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 150, 0, 40)
ToggleButton.Position = UDim2.new(0, 20, 0.8, 0) -- Góc trái màn hình
ToggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ToggleButton.Text = "Ẩn UI"
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.TextSize = 16
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Parent = ToggleGui

local isHidden = false
ToggleButton.MouseButton1Click:Connect(function()
    isHidden = not isHidden
    MainFrame.Visible = not isHidden
    ToggleButton.Text = isHidden and "Hiện UI" or "Ẩn UI"
end)
