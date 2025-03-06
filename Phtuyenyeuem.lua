local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Tạo Frame chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.2, 0)
frame.Position = UDim2.new(0.3, 0, 0.4, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BackgroundTransparency = 0.2
frame.Parent = gui

-- Bo góc cho Frame
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.1, 0)
corner.Parent = frame

-- Viền cho Frame
local stroke = Instance.new("UIStroke")
stroke.Thickness = 2
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Parent = frame

-- Tạo Label hiển thị nội dung thông báo
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 0.6, 0)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Text = "Script đã được Update!\nVui lòng ấn vào nút 'Lấy Script' để sử dụng tiếp."
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextScaled = true
label.Font = Enum.Font.Gotham
label.TextWrapped = true
label.Parent = frame

-- Tạo Nút "Lấy Script"
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.5, 0, 0.25, 0)
button.Position = UDim2.new(0.25, 0, 0.7, 0)
button.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
button.Text = "Lấy Script"
button.TextScaled = true
button.Font = Enum.Font.Gotham
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = frame

-- Bo góc cho Button
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0.2, 0)
buttonCorner.Parent = button

-- Viền cho Button
local buttonStroke = Instance.new("UIStroke")
buttonStroke.Thickness = 2
buttonStroke.Color = Color3.fromRGB(255, 255, 255)
buttonStroke.Parent = button

-- Nội dung Script cần Copy
local scriptContent = [[
print("Script đã được cập nhật!")
]]

-- Xử lý khi nhấn nút
button.MouseButton1Click:Connect(function()
    -- Coppy nội dung vào clipboard
    setclipboard(scriptContent)
    
    -- Thay đổi nội dung nút để báo đã copy thành công
    button.Text = "Đã Copy!"
    
    -- Hiệu ứng đổi màu trong 1 giây rồi đổi lại
    button.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
    wait(1)
    button.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
    button.Text = "Lấy Script"
end)
