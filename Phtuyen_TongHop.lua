require(game.ReplicatedStorage:WaitForChild("Notification")).new(
            " <Color=Yellow>Lưu ý! Một vài Script sẽ không chạy,Lỗi.Lười chưa xoá! <Color=/> "
        ):Display()
require(game.ReplicatedStorage:WaitForChild("Notification")).new(
            " <Color=Green>SigmaBoy <Color=/> "
        ):Display()
require(game.ReplicatedStorage:WaitForChild("Notification")).new(
            " <Color=Blue>Script-By:Phtuyenn <Color=/> "
        ):Display()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "PhTuyen_Cuto",
         Animation = "PhTuyen_zZ"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=89923135895849",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
     local Tab2o = MakeTab({Name = "Script Troll[Cẩn thận khi dùng]"})
     local Tab3o = MakeTab({Name = "Script PvP"})
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "W-azure Hub",
    Callback = function()	getgenv().Team = "Pirates"
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 = false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "MinGaming Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinCE"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Trẩu Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/TrauHub/refs/heads/main/TrauXt"))()
  end
  })

    AddButton(Tab1o, {
     Name = "AstralV1 Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Xero Hub",
    Callback = function()	getgenv().Team = "Pirates"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Speed Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })

    AddButton(Tab1o, {
     Name = "Raito Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Quantum Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Mukuro Hub",
    Callback = function()	loadstring(game:HttpGet("https://auth.quartyz.com/scripts/Loader.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Alchemy Hub",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/AlchemyHub/main/Main.lua"))({ "discord.gg/alchemyhub","x2neptune.tech/LoaderPromo",true,"BY:x2Neptune" })
  end
  })

    AddButton(Tab1o, {
     Name = "Cuttay Hub[FREE]",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/diemquy/CutTayHub/refs/heads/main/Cuttayhub-mizu.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Teddy Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/TeddyHubv2"))()
  end
  })

    AddButton(Tab1o, {
     Name = "TeddyHub Auto Hop",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/TeddyHop-FREE"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Auto Fruit",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()
  end
  })

    AddButton(Tab1o, {
     Name = "Auto Chest[Tp bypass]",
    Callback = function()	require(game.ReplicatedStorage:WaitForChild("Notification")).new(
            " <Color=Blue>!Script chỉ Tp ở một đảo! <Color=/> "
        ):Display()
_G.Settings = { ["Enable Farm"] = true, ["SnipeLegendaryItem"] = false, ["Choose Team"] = "Marines", ["White Screen"] = false, ["Reset Anti Detect"] = true } loadstring(game:HttpGet("https://raw.githubusercontent.com/xxhumggxx/SkullHub/refs/heads/main/ChestV2.lua"))()
  end
  })

    AddButton(Tab2o, {
     Name = "TradeScam",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/lelel22f/test21/refs/heads/main/kk",true))()
  end
  })

    AddButton(Tab2o, {
     Name = "ResetFruit",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/Kaitun.txt"))()
  end
  })

    AddButton(Tab3o, {
     Name = "Fix Lag",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })

    AddButton(Tab3o, {
     Name = "Fix LagV2",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/AKGAMING-FIXLAG"))()
  end
  })

    AddButton(Tab3o, {
     Name = "AIM[dùng với Hitbox]",
    Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Ace/main/Ace"))()
  end
  })

    AddButton(Tab3o, {
     Name = "Hit Box",
    Callback = function()	loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
  end
  })
---Succac
---YeuuTuongVyy