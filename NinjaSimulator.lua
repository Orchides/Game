local Config = {

    WindowName = "OP NINJA SIMULATOR",



Color = Color3.fromRGB(30,144,255),



Keybind = Enum.KeyCode.RightShift 



}





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()



local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))







local Tab1 = Window:CreateTab("Sub To C02 Script")







local Section1 = Tab1:CreateSection("Auto Farming Section")







function tool()



    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do



        if v.Name ~= "Shuriken"  then

            if v.Name ~= "TeleportTool" then



          local tools = v



          return tools



            end

        end

    end

end











local autofarm = Section1:CreateToggle("Auto Farm", nil, function(State)



local character = game.Players.LocalPlayer.Character







for i,v in pairs(character:GetChildren()) do



if v:IsA("Tool") then



    equipped = true



    else



  equipped = false



    end

end

    local tool = tool()



    if equipped ~= true then



game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)



end

s = State

while s == true do wait()

local vu = game:GetService("VirtualUser")

vu:Button1Down(Vector2.new())

                end

        end)











local autoequip = Section1:CreateToggle("Auto Katana", nil, function(State)

  tog = State

  while tog do wait()

        local tool = tool()

        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)



      end
end)
