
local Flux = {RainbowColorValue = 0, HueSelectionPosition = 0}
local PresetColor = Color3.fromRGB(66, 134, 255)
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local FluxLib = Instance.new("ScreenGui")
FluxLib.Name = "FluxLib"
FluxLib.Parent = game.CoreGui
FluxLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main UI for Mobile
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = FluxLib
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(50, 53, 59)
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.9, 0, 0.9, 0) 

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- Close Button for Mobile
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = MainFrame
CloseButton.Size = UDim2.new(0.1, 0, 0.05, 0)
CloseButton.Position = UDim2.new(0.9, 0, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseButton.Text = "X"
CloseButton.TextScaled = true
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- Tabs UI
local TabHolder = Instance.new("Frame")
TabHolder.Name = "TabHolder"
TabHolder.Parent = MainFrame
TabHolder.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
TabHolder.Size = UDim2.new(0.25, 0, 1, 0)

local TabLayout = Instance.new("UIListLayout")
TabLayout.Parent = TabHolder
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder

local Tabs = {}

function Flux:CreateTab(name)
    local TabButton = Instance.new("TextButton")
    TabButton.Name = name
    TabButton.Parent = TabHolder
    TabButton.Size = UDim2.new(1, 0, 0.1, 0)
    TabButton.BackgroundColor3 = Color3.fromRGB(66, 134, 255)
    TabButton.Text = name
    TabButton.TextScaled = true

    local TabFrame = Instance.new("Frame")
    TabFrame.Name = name .. "Frame"
    TabFrame.Parent = MainFrame
    TabFrame.Size = UDim2.new(0.75, 0, 1, 0)
    TabFrame.Position = UDim2.new(0.25, 0, 0, 0)
    TabFrame.Visible = false

    Tabs[name] = TabFrame

    TabButton.MouseButton1Click:Connect(function()
        for _, tab in pairs(Tabs) do
            tab.Visible = false
        end
        TabFrame.Visible = true
    end)

    return TabFrame
end

-- Draggable UI for Mobile
local function MakeDraggable(topbarobject, object)
    local Dragging, DragInput, DragStart, StartPosition

    local function Update(input)
        local Delta = input.Position - DragStart
        object.Position = UDim2.new(
            StartPosition.X.Scale, StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y
        )
    end

    topbarobject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = input.Position
            StartPosition = object.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)

    topbarobject.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            DragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == DragInput and Dragging then
            Update(input)
        end
    end)
end

MakeDraggable(MainFrame, MainFrame)

return Flux
