local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Cửa sổ chính
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0.4, 0, 0.6, 0) -- Kích thước 40% màn hình
mainFrame.Position = UDim2.new(0.3, 0, 0.2, 0) -- Giữa màn hình
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) -- Màu tối
mainFrame.BackgroundTransparency = 0.2 -- Hơi trong suốt
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui

-- Bo tròn góc
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = mainFrame

-- Đường viền
local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(100, 100, 100)
stroke.Parent = mainFrame

-- Tạo các nút bấm
local function createButton(text, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.1, 0)
    button.Position = UDim2.new(0.1, 0, position, 0)
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = text
    button.Parent = mainFrame

    -- Bo tròn nút
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 5)
    btnCorner.Parent = button

    -- Sự kiện khi nhấn nút
    button.MouseButton1Click:Connect(function()
        print(text .. " clicked!")
    end)
end

-- Danh sách nút bấm
local buttons = {
    "Unlock Sea 3",
    "Unlock Sea 2",
    "Spawn Rip Indra",
    "Raid",
    "God Human Progress"
}

-- Tạo các nút theo danh sách
for i, text in pairs(buttons) do
    createButton(text, 0.15 * i)
end
