local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Roqs Team | Rebirth Champions X", HidePremium = true, SaveConfig = true, IntroText = "Roqs Team", ConfigFolder = "RoqsTeam"})



_G.autoTap = true
_G.autoRebit = true
_G.autoTapSkin = true
_G.autoUpgradeClick = true
_G.autoReward = true
_G.autoUpgradeGem = true


function autoTap()
while _G.autoTap == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()


    wait(.000000000000001)
 end
end

function autoUpgradeGem()
while _G.autoUpgradeGem == true do
    local args = {
    [1] = "GemsMultiplier"
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Upgrade"):InvokeServer(unpack(args))


    wait(.000000000000001)
 end
end

function autoReward()
while _G.autoReward == true do
    local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("ClaimPlaytimeReward"):InvokeServer(unpack(args))


    wait(.000000000000001)
 end
end

function autoUpgradeClick()
while _G.autoUpgradeClick == true do
    local args = {
    [1] = "ClickMultiplier"
}

game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Upgrade"):InvokeServer(unpack(args))



    wait(.000000000000001)
 end
end

function autoTapSkin()
while _G.autoTapSkin == true do
    game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("TapSkin"):InvokeServer()



    wait(.000000000000001)
 end
end

function autoRebit()
while _G.autoRebit == true do
    local args = {
    [1] = 7
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))


    wait(.000000000000001)
 end
end


local FarmTab = Window:MakeTab({
	Name = "auto farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local UpgradeTab = Window:MakeTab({
	Name = "Upgrade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		  _G.autoTap = Value
		  autoTap()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebit",
	Default = false,
	Callback = function(Value)
		  _G.autoRebit = Value
		  autoRebit()
	end    
})

UpgradeTab:AddToggle({
	Name = "Auto Upgrade TapSkin",
	Default = false,
	Callback = function(Value)
		  _G.autoTapSkin = Value
		  autoTapSkin()
	end    
})

UpgradeTab:AddToggle({
	Name = "Auto Upgrade Click Multiplier",
	Default = false,
	Callback = function(Value)
		  _G.autoUpgradeClick = Value
		  autoUpgradeClick()
	end    
})

UpgradeTab:AddToggle({
	Name = "Auto Reward",
	Default = false,
	Callback = function(Value)
		  _G.autoReward = Value
		  autoReward()
	end    
})

UpgradeTab:AddToggle({
	Name = "Auto Upgrade Gem Multiplier",
	Default = false,
	Callback = function(Value)
		  _G.autoUpgradeGem = Value
		  autoUpgradeGem()
	end    
})

OrionLib:Init()
