
local Flux = {RainbowColorValue = 0, HueSelectionPosition = 0}
local PresetColor = Color3.fromRGB(255, 105, 180) -- Pink Flat UI
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local FluxLib = Instance.new("ScreenGui")
FluxLib.Name = "FluxLib"
FluxLib.Parent = game.CoreGui
FluxLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main UI (Pink & Semi-Transparent)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = FluxLib
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 182, 193) -- Light Pink
MainFrame.BackgroundTransparency = 0.2 -- Semi-transparent effect
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.8, 0, 0.8, 0)

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12) -- Smooth rounded corners
MainCorner.Parent = MainFrame

-- Close Button
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = MainFrame
CloseButton.Size = UDim2.new(0.1, 0, 0.05, 0)
CloseButton.Position = UDim2.new(0.9, 0, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 20, 147) -- Deep Pink
CloseButton.Text = "X"
CloseButton.TextScaled = true
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- Tabs UI (Pink Flat UI)
local TabHolder = Instance.new("Frame")
TabHolder.Name = "TabHolder"
TabHolder.Parent = MainFrame
TabHolder.BackgroundColor3 = Color3.fromRGB(255, 160, 180) -- Soft Pink
TabHolder.BackgroundTransparency = 0.3
TabHolder.Size = UDim2.new(0.25, 0, 1, 0)

local TabLayout = Instance.new("UIListLayout")
TabLayout.Parent = TabHolder
TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabLayout.Padding = UDim.new(0, 5)

local Tabs = {}
local TabButtons = {}

function Flux:CreateTab(name)
    local TabButton = Instance.new("TextButton")
    TabButton.Name = name .. "Button"
    TabButton.Parent = TabHolder
    TabButton.Size = UDim2.new(1, 0, 0.1, 0)
    TabButton.BackgroundColor3 = Color3.fromRGB(255, 105, 180) -- Pink Color for Tabs
    TabButton.Text = name
    TabButton.TextScaled = true
    TabButton.Font = Enum.Font.Gotham
    TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    local TabFrame = Instance.new("ScrollingFrame")
    TabFrame.Name = name .. "Frame"
    TabFrame.Parent = MainFrame
    TabFrame.Size = UDim2.new(0.75, 0, 1, 0)
    TabFrame.Position = UDim2.new(0.25, 0, 0, 0)
    TabFrame.BackgroundTransparency = 1
    TabFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
    TabFrame.ScrollBarThickness = 5
    TabFrame.Visible = false

    local TabLayout = Instance.new("UIListLayout")
    TabLayout.Parent = TabFrame
    TabLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabLayout.Padding = UDim.new(0, 10)

    Tabs[name] = TabFrame
    TabButtons[name] = TabButton

    TabButton.MouseButton1Click:Connect(function()
        for _, tab in pairs(Tabs) do
            tab.Visible = false
        end
        TabFrame.Visible = true
    end)

    return TabFrame
end

-- Ensure first tab is visible by default
local FirstTab = Flux:CreateTab("Home")
FirstTab.Visible = true

Flux:CreateTab("Settings")
Flux:CreateTab("Profile")

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
