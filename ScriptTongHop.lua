local Main = royxui:royxstart("Tổng Hợp[V3] | Phtuyenisme⚡️")
royxui:NewNotification("Đã Chạy Script Thành Công!", "⛅TuongVyy", 1, "rbxassetid://112969263935543")

local Tab = Main:royxtab("Tab 1")

local Tab2 = Main:royxtab("Tab 2")

local Page = Tab:royxpage("Auto Farm")

Page:Label("Phtuyenisme")

Page:Button("Button",function()

end)

Page:Button("Notification",function()
	royxui:NewNotification("Đã Chạy Script Thành Công!", "⛅TuongVyy", 1, "rbxassetid://112969263935543")
end)