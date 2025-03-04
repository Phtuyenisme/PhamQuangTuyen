 local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "name",
    SubTitle = "by name",
    TabWidth = 160,
    Size = UDim2.new(0, 580, 0, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

Window.Draggable = false
Window.Position = UDim2.new(0.3, 0, 0.2, 0)

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "rbxassetid://4483345998" })
}

Tabs.Main:AddSection("name")
local hakiRunning = false

local VirtualInputManager = game:GetService("VirtualInputManager")

Tabs.Main:AddToggle({
    Title = "name tab",
    Description = "name",
    Default = false,
    Callback = function(value)
        hakiRunning = value
        if hakiRunning then
            spawn(function()
                while hakiRunning do
                    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.J, false, game)
                    wait(0.1)
                    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.J, false, game)
                    wait(5)
                end
            end)
            Fluent:Notify({
                Title = "name",
                Content = "i dont know",
                Duration = 3
            })
        else
            Fluent:Notify({
                Title = "name",
                Content = "i dont know",
                Duration = 3
            })
        end
    end
}):SetIcon("rbxassetid://4483345998")

Tabs.Main:AddSection("Menu Control")

local menuVisible = true

Tabs.Main:AddButton({
    Title = "Ẩn/Hiện Menu",
    Description = "Ẩn hoặc hiện menu",
    Callback = function()
        if menuVisible then
            Window:TweenSize(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.3, true)
            menuVisible = false
            Fluent:Notify({
                Title = "name",
                Content = "i dont know",
                Duration = 3
            })
        else
            Window:TweenSize(UDim2.new(0, 580, 0, 460), "Out", "Quad", 0.3, true)
            menuVisible = true
            Fluent:Notify({
                Title = "????",
                Content = "???",
                Duration = 3
            })
        end
    end
})

Window:SelectTab(1)