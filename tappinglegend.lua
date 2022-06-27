--Tapping legends script
getgenv().autotap = false;
getgenv().autorebirth = false;
getgenv().autoupgradetapmultiplier = false;
getgenv().autoupgradeautoclicker = false;
getgenv().autoupgrademorerebirth = false;

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Cloveor Hub", "Ocean")

local w = Window:NewTab("Farming")


local b = w:NewSection("Auto Upgrade")
local a = w:NewSection("Auto Farm")




b:NewToggle("Clicker Multiplier", "Upgrade Click Multiplier", function(state)
    if state then
	getgenv().autoupgradetapmultiplier = true;
	ClikerMultiplier()
    else
    getgenv().autoupgradetapmultiplier = false;
    end
end)

b:NewToggle("More Rebirth", "Upgrade Rebirth value", function(state)
    if state then
	getgenv().autoupgrademorerebirth = true;
	MoreRebirth()
    else
    getgenv().autoupgrademorerebirth = false;
    end
end)

b:NewToggle("Auto Clicker", "Upgrade Auto Clicker", function(state)
    if state then
	getgenv().autoupgradeautoclicker = true;
	AutoClicker()
    else
    getgenv().autoupgradeautoclicker = false;
    end
end)


a:NewToggle("Auto Tap", "auto clicker", function(state)
    if state then
	getgenv().autotap = true;
	doatap()
    else
    getgenv().autotap = false;
    end
end)




function doatap()
	spawn(function()
		while getgenv().autotap == true do
			game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
			wait()
		end
	end)
end

doatap();


function autorebirtoh()
	spawn(function()
		while getgenv(),autorebirth == true do
			local args = {
				[1] = 1
			}
			
			game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			wait()
		end
	end)
end

autorebirtoh();



function ClikerMultiplier()
	spawn(function()
		while autoupgradetapmultiplier == true do
			local args = {
				[1] = "Ruby",
				[2] = "TapMultiplier"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end
	end)
end

ClikerMultiplier();


function AutoClicker()
	spawn(function()
		while autoupgradeautoclicker == true do 
			local args = {
				[1] = "Ruby",
				[2] = "FreeAutoClicker"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end
	end)
end

AutoClicker();


function MoreRebirth()
	spawn(function()
		while autoupgrademorerebirth == true do 
			local args = {
				[1] = "Ruby",
				[2] = "RebirthsUpgrade"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

MoreRebirth();
