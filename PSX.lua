stuff = {}
if isfile("Data.txt") then
	amount = readfile("Data.txt")
else
	writefile("Data.txt", "0")
	amount = 0
end
cantaff = game.Players.LocalPlayer.PlayerGui.Message:Clone()
cantaff.Parent = game.Players.LocalPlayer.PlayerGui
cantaff.Name = "XD"
cantaff.Frame.Title.Text = "Sorry,"
cantaff.Frame.Desc.Text = "You Do Not Have Enough Tokens In Order To Purchase [Item] ([Require] Needed)"
cantaff.Frame.Yes.Visible = false
cantaff.Frame.No.Visible = false
cantaff.Frame.Ok.Visible = true
cantaff.Enabled = false
cantaff.Frame.Ok.MouseButton1Down:Connect(function()
	aff.Enabled = false
end)
aff = game.Players.LocalPlayer.PlayerGui.Message:Clone()
aff.Parent = game.Players.LocalPlayer.PlayerGui
aff.Name = "XD"
aff.Frame.Title.Text = "Congrats!"
aff.Frame.Desc.Text = "You Bought [Item]! (You Have [Balance] Coins)"
aff.Frame.Yes.Visible = false
aff.Frame.No.Visible = false
aff.Frame.Ok.Visible = true
aff.Enabled = false
aff.Frame.Ok.MouseButton1Down:Connect(function()
	aff.Enabled = false
end)
okayy = game.Players.LocalPlayer.PlayerGui.Message:Clone()
okayy.Parent = game.Players.LocalPlayer.PlayerGui
okayy.Name = "XD"
okayy.Frame.Title.Text = "Hold Up!"
okayy.Frame.Desc.Text = "Are You Sure You Wanna Buy [Item]?"
okayy.Enabled = false
okayy.Frame.Ok.Visible = false
okayy.Frame.Yes.Visible = true
okayy.Frame.No.Visible = true
ok = game.Players.LocalPlayer.PlayerGui.Main.Right["Diamonds"]:Clone()
ok.Parent = game.Players.LocalPlayer.PlayerGui.Main.Right
ok.Add:Destroy()
ok.Name = "XD"
ok.Icon.HC.Visible = true
ok.Icon.HC.Text = "NEW★"
ok.Icon.Image = "rbxassetid://12482865709"
ok.Amount_odometerGUIFX.Text = amount
ok.Amount_odometerGUIFX["Diamonds Gradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(254, 203, 102)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 222, 118))
}

okay = game.Players.LocalPlayer.PlayerGui.FusePets:Clone()
okay.Parent = game.Players.LocalPlayer.PlayerGui
okay.Name = "XD"
okay.Enabled = false
okay.Frame.Container:Destroy()
okay.Frame.Side:Destroy()
okay.Frame.Title.Text = "Tokens Shop"
okay.Frame.Title.Position = UDim2.new(-0.033, 0, 0.06, -12)
okay.Frame.Close:Destroy()

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local _10BG = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local Price = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScrollingFrame.Parent = okay.Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0.129999995, 0, 0.100000001, 0)
UIGridLayout.CellSize = UDim2.new(0.237000003, 0, 0.180000007, 0)

_10BG.Name = "10BG"
_10BG.Parent = ScrollingFrame
_10BG.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
_10BG.Position = UDim2.new(0.0670000836, 0, -0.00136186823, 0)
_10BG.Size = UDim2.new(0.236999989, 0, 0.180132821, 0)

UICorner.Parent = _10BG

ImageLabel.Parent = _10BG
ImageLabel.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(-0.00196933001, 0, 0.536627233, 0)
ImageLabel.Size = UDim2.new(0.281615615, 0, -0.0686778426, 43)
ImageLabel.Image = "rbxassetid://12482865709"
ImageLabel.ScaleType = Enum.ScaleType.Fit

Price.Name = "Price"
Price.Parent = _10BG
Price.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Price.BackgroundTransparency = 1.000
Price.Position = UDim2.new(0.353667796, 0, 0.536627233, 0)
Price.Size = UDim2.new(0.637264431, 0, 0.177417874, 0)
Price.Font = Enum.Font.FredokaOne
Price.Text = "30"
Price.TextColor3 = Color3.fromRGB(255, 255, 255)
Price.TextScaled = true
Price.TextSize = 14.000
Price.TextWrapped = true
Price.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = _10BG
TextButton.BackgroundColor3 = Color3.fromRGB(98, 255, 124)
TextButton.Position = UDim2.new(0, 0, 0.801241517, 0)
TextButton.Size = UDim2.new(1, 0, 0.225598976, 0)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "Buy"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	okayy.Enabled = true
	okayy.Frame.Desc.Text = "Are You Sure You Wanna Buy 10B Gems?"
end)
okayy.Frame.Yes.MouseButton1Down:Connect(function()
	if tonumber(amount) >= tonumber(Price.Text) then
		amount = tostring(tonumber(amount) - tonumber(Price.Text))
		okayy.Enabled = false
		aff.Enabled = true
		aff.Frame.Desc.Text = "You Bought 10B Gems! (You Have ".. tonumber(amount).. " Coins) Click 'Ok' To Copy The ID Of The Item. DM Yusefk7797#3922 With The Code In Order To Proceed."
	else
		okayy.Enabled = false
		cantaff.Enabled = true
		cantaff.Frame.Desc.Text = "You Do Not Have Enough Tokens In Order To Purchase 10B Gems (".. tonumber(Price.Text) - tonumber(amount).. " Needed)"
	end
end)
okayy.Frame.No.MouseButton1Down:Connect(function()
	okayy.Enabled = false
end)
UICorner_2.Parent = TextButton

ImageLabel_2.Parent = _10BG
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.Position = UDim2.new(0.070577912, 0, -0.00174619618, 0)
ImageLabel_2.Size = UDim2.new(0.920354366, 0, 0.292096168, 43)
ImageLabel_2.Image = "rbxassetid://7786012670"
ImageLabel_2.ScaleType = Enum.ScaleType.Fit

TextLabel.Parent = _10BG
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, -0.00174619618, 0)
TextLabel.Size = UDim2.new(0.990932167, 0, 0.177417874, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "10B"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

oka = game.Players.LocalPlayer.PlayerGui.Main.Left.Tools["Teleport"]:Clone()
oka.Parent = game.Players.LocalPlayer.PlayerGui.Main.Left.Tools
oka.Name = "XD"
oka.Thumbnail.Image = "rbxassetid://12483023686"
oka.MouseButton1Down:Connect(function()
	okay.Enabled = not okay.Enabled
end)

while wait() do
	print(table.concat(stuff, ", "))
	things = game.Workspace.__THINGS.Orbs
	for i = 1, #things:GetChildren() do
		if things:GetChildren()[i].Orb.Item.Image == "rbxassetid://6866743434" then
			things:GetChildren()[i].Orb.Item.Image = "rbxassetid://12482865709"
			table.insert(stuff, things:GetChildren()[i].Name)
		end
	end
	for i = 1, #stuff do
		found = false
		for ii = 1, #things:GetChildren() do
			if things:GetChildren()[ii].Name == stuff[i] then
				found = true
			end
		end
		if found == false then
			table.remove(stuff, table.find(stuff, stuff[i]))
			amount = tonumber(amount) + 3
		end
	end
	ok.Amount_odometerGUIFX.Text = amount
	writefile("Data.txt", tostring(amount))
end
