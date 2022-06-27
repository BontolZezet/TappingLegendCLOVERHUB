--Tapping legends script
--FIRST DAY MAKING A SCRIPT :D


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

--Fitur tambahan aja sih hehe
getgenv().Redeemallcode = false;


--Teleport area
getgenv().SpawnArea = false;
getgenv().ForestArea = false;
getgenv().DesertArea = false;
getgenv().WinterArea = false;
getgenv().LavaArea = false;
getgenv().AquaArea = false;
getgenv().SakuraArea = false;
getgenv().MinesArea = false;
getgenv().GalaxyArea = false;
getgenv().HeavenArea = false;
getgenv().HellArea = false;
getgenv().TechArea = false;
getgenv().SteampunkArea = false;



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Cloveor Hub", "DarkTheme")

local w = Window:NewTab("Farming")
local c = Window:NewTab("Teleport")
local p = Window:NewTab("Misc")


local a = w:NewSection("Auto Farm")
local b = w:NewSection("Auto Upgrade")
local o = p:NewSection("Fitur Tambahan")
local k = c:NewSection("Teleport Area")




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

--MIsc
p:NewButton("Redeem All Code", "Redeem a code", function()
    getgenv().Redeemallcode = true;
	RedeemCodes()
end)


--Teleport
k:NewButton("SpawnAr", "0 Rebirth Area", function()
    getgenv().SpawnArea = true;
	SpawnAr()
end)

k:NewButton("Forest", "2,5K Rebirth Area", function()
    getgenv().ForestArea = true;
	Forest()
end)

k:NewButton("Desert", "500K Rebirth Area", function()
    getgenv().DesertArea = true;
	Desert()
end)

k:NewButton("Winter", " 20M Rebirth Area", function()
    getgenv().WinterArea = true;
	Winter()
end)

k:NewButton("Lava", "300M Rebirth Area", function()
    getgenv().LavaArea = true;
	Lava()
end)

k:NewButton("Aqua", "12B Rebirth Area", function()
    getgenv().AquaArea = true;
	Aqua()
end)

k:NewButton("Sakura", "150B Rebirth Area", function()
    getgenv().SakuraArea = true;
	Sakura()
end)

k:NewButton("Mines", "1,5T Rebirth Area", function()
    getgenv().MinesArea = true;
	Mines()
end)

k:NewButton("Galaxy", "15T Rebirth Area", function()
    getgenv().GalaxyArea = true;
	Galaxy()
end)

k:NewButton("Heaven", "250T Rebirth Area", function()
    getgenv().HellArea = true;
	Heaven()
end)

k:NewButton("Hell", "10Qd Rebirth Area", function()
    getgenv().HellArea = true;
	Hell()
end)

k:NewButton("Tech", "500Qd Rebirth Area", function()
    getgenv().TechArea = true;
	Tech()
end)

k:NewButton("Steampunk", "20Qn Rebirth Area", function()
    getgenv().SteampunkArea = true;
	Steampunk()
end)


--Function
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

function RedeemCodes()
	spawn(function()
		while Redeemallcode == true do
			local args = {
				[1] = "JustAdog"
			}
			
			game:GetService("ReplicatedStorage").Remotes.RedeemCode:InvokeServer(unpack(args))
		end
	end)
end

RedeemCodes();



function SpawnAr()
	spawn(function()
		while SpawnArea == true do
			local args = {
				[1] =  1
			}
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

SpawnAr();


function Forest()
	spawn(function()
		while ForestArea == true do
			local args = {
				[1] =  2
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Forest();

function Desert()
	spawn(function()
		while DesertArea == true do
			local args = {
				[1] =  3
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Forest();

function Winter()
	spawn(function()
		while WinterArea == true do
			local args = {
				[1] =  4
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Winter();

function Lava()
	spawn(function()
		while LavaArea == true do
			local args = {
				[1] =  5
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Lava();

function Aqua()
	spawn(function()
		while AquaArea == true do
			local args = {
				[1] =  6
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Aqua();

function Sakura()
	spawn(function()
		while AquaArea == true do
			local args = {
				[1] =  7
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Aqua();

function Mines()
	spawn(function()
		while MinesArea == true do
			local args = {
				[1] =  8
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Mines();

function Galaxy()
	spawn(function()
		while GalaxyArea == true do
			local args = {
				[1] =  9
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Mines();

function Heaven()
	spawn(function()
		while HeavenArea == true do
			local args = {
				[1] =  10
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Heaven();

function Hell()
	spawn(function()
		while HellArea == true do
			local args = {
				[1] =  11
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Hell();

function Tech()
	spawn(function()
		while TechArea == true do
			local args = {
				[1] =  12
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Tech();

function Steampunk()
	spawn(function()
		while SteampunkArea == true do
			local args = {
				[1] =  13
			}
			
			game:GetService("ReplicatedStorage").Remotes.TeleportToArea:FireServer(unpack(args))
		end
	end)
end

Steampunk();
