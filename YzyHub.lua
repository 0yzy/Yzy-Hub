local UILib = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

print("Yzy Hub Loading...")
local Unloaded = false
pcall(function()
    if _G.YzyHubLoaded ~= nil then
        _G.YzyHubLoaded()
    else
        _G.YzyHubLoaded = function()
            Unloaded = true
            UILib:Destroy()
        end
    end
end)

local Window = UILib:CreateWindow({
    Name = "Yzy Hub",
    LoadingTitle = "Loading Script",
    LoadingSubtitle = "by Yzy",
    Theme = "Default",
 
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "YzyHub",
       FileName = "Yzy Hub"
    },
 
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
 
    KeySystem = false,
    KeySettings = {
       Title = "Yzy Hub",
       Subtitle = "Key System",
       Note = "",
       FileName = "YzyHubKeySystem",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {""}
    }
})

local MainTab = Window:CreateTab("Main", 4483362458)

print("Yzy Hub Loaded Successfully!")