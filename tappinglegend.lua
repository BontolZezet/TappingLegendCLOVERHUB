--Tapping legends script



--auto farm
getgenv().autotap = false;
getgenv().autorebirth = false;

--auto upgrade var
getgenv().autoupgradetapmultiplier = false;
getgenv().autoupgradeautoclicker = false;
getgenv().autoupgrademorerebirth = false;
getgenv().autoupgradepetstorage = false;
getgenv().autoupgradefasterwalk = false;
getgenv().autoupgradecriticalchances = false;
getgenv().autoupgradeautoclickermultiplier = false;
getgenv().autoupgrademaxcombo = false;
getgenv().autoupgradeachivmentluck = false;

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Cloveor Hub", "DarkTheme")

local w = Window:NewTab("Farming")

local a = w:NewSection("Auto Farm")
local b = w:NewSection("Auto Upgrade")





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

b:NewToggle("Pet Storage", "Upgrade Pet Storage", function(state)
    if state then
	getgenv().autoupgradepetstorage = true;
	MoreStorage()
    else
    getgenv().autoupgradepetstorage = false;
    end
end)

b:NewToggle("Faster Walk", "Upgrade Faster Walk", function(state)
    if state then
	getgenv().autoupgradefasterwalk= true;
	FasterWalk()
    else
    getgenv().autoupgradefasterwalk = false;
    end
end)


b:NewToggle("Critical Chances", "Upgrade Critical Chances", function(state)
    if state then
	getgenv().autoupgradecriticalchances = true;
	CriticalChances()
    else
    getgenv().autoupgradecriticalchances = false;
    end
end)


b:NewToggle("Auto Clicker Multiplier", "Upgrade Auto Clicker Multiplier", function(state)
    if state then
	getgenv().autoupgradeautoclickermultiplier = true;
	AUmultiplier()
    else
    getgenv().autoupgradeautoclickermultiplier = false;
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


b:NewToggle("Max Tap Combo", "Upgrade Max combo", function(state)
    if state then
	getgenv().autoupgrademaxcombo = true;
	MaxCombo()
    else
    getgenv().autoupgrademaxcombo = false;
    end
end)

b:NewToggle("Achivement Luck", "Upgrade achivement luck", function(state)
    if state then
	getgenv().autoupgradeachivmentluck = true;
	AchivLuck()
    else
    getgenv().autoupgradeachivmentluck = false;
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


a:NewToggle("Auto Rebirth", "auto rebirth", function(state)
    if state then
	getgenv().autorebirth = true;
	autorebirtoh()
    else
    getgenv().autorebirth = false;
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
		while getgenv().autorebirth == true do
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


function MoreStorage()
	spawn(function()
		while autoupgradepetstorage == true do 
			local args = {
				[1] = "Ruby",
				[2] = "PetStorage"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

MoreStorage();

function FasterWalk()
	spawn(function()
		while autoupgradefasterwalk == true do 
			local args = {
				[1] = "Ruby",
				[2] = "RebirthsUpgrade"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

FasterWalk();

function CriticalChances()
	spawn(function()
		while autoupgradecriticalchances == true do 
			local args = {
				[1] = "Ruby",
				[2] = "CriticalChances"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

CriticalChances();

function AUmultiplier()
	spawn(function()
		while autoupgradeautoclickermultiplier == true do 			
			local args = {
				[1] = "Ruby",
				[2] = "AutoClickerMultiplier"
			}

			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

AUmultiplier();

function MaxCombo()
	spawn(function()
		while autoupgrademaxcombo == true do 
			local args = {
				[1] = "Ruby",
				[2] = "MaxCombo"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

MaxCombo();

function AchivLuck()
	spawn(function()
		while autoupgradeachivmentluck == true do 
			local args = {
				[1] = "Ruby",
				[2] = "AchievementLuck"
			}
			
			game:GetService("ReplicatedStorage").Remotes.Upgrade:InvokeServer(unpack(args))
			wait()
		end	
	end)
end

AchivLuck();

