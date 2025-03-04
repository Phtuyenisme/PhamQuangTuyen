--ScriptBY:PhtuyenzZ
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Phtuyenisme/PhamQuangTuyen/refs/heads/main/message.lua')))()
local Window = OrionLib:MakeWindow({
    Name = "Script Tổng Hợp | Phtuyen⚡️",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "PhtuyenConfig"
})

-- 📌 Tạo Tab `Farm`
local FarmTab = MakeTab("Farm")

-- 📌 Tạo nút `Redz` trong Tab `Farm`
local RedzButton = Instance.new("TextButton")
RedzButton.Size = UDim2.new(0, 150, 0, 40)
RedzButton.Position = UDim2.new(0.5, -75, 0, 20) -- ⚡ Căn giữa theo chiều ngang
RedzButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
RedzButton.Text = "Redz"
RedzButton.Font = Enum.Font.GothamBold
RedzButton.TextSize = 16
RedzButton.TextColor3 = Color3.fromRGB(255, 255, 255)
RedzButton.Parent = FarmTab

RedzButton.MouseButton1Click:Connect(function()
    print("Nút Redz Đã Được Bấm!")
end)

-- 📌 Tạo nút `W-Azure` trong Tab `Farrm`
local WAzureButton = Instance.new("TextButton")
WAzureButton.Size = UDim2.new(0, 150, 0, 40)
WAzureButton.Position = UDim2.new(0.5, -75, 0, 70) -- ⚡ Dưới nút `Redz`
WAzureButton.BackgroundColor3 = Color3.fromRGB(50, 50, 100)
WAzureButton.Text = "W-Azure"
WAzureButton.Font = Enum.Font.GothamBold
WAzureButton.TextSize = 16
WAzureButton.TextColor3 = Color3.fromRGB(255, 255, 255)
WAzureButton.Parent = FarmTab

WAzureButton.MouseButton1Click:Connect(function()
    print("Nút W-Azure Đã Được Bấm!")
end)

-- 📌 Hiển thị mặc định Tab `Farm`
FarmTab.Visible = true


