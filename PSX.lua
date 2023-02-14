codes = {"a", "b", "c"}
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
	cantaff.Enabled = false
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
	setclipboard(codes[math.random(1, #codes)])
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
local UICorner_2 = Instance.new("UICorner")

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

--Start
local _1BG = Instance.new("Frame")
local UICornera_2 = Instance.new("UICorner")
local TextButtona = Instance.new("TextButton")
local ImageLabela = Instance.new("ImageLabel")
local ImageLabela_2 = Instance.new("ImageLabel")
local TextLabela = Instance.new("TextLabel")
local UICornera = Instance.new("UICorner")
local Pricea = Instance.new("TextLabel")
_1BG.Name = "1B Gems"
_1BG.Parent = ScrollingFrame
_1BG.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
_1BG.Position = UDim2.new(0.0670000836, 0, -0.00136186823, 0)
_1BG.Size = UDim2.new(0.236999989, 0, 0.180132821, 0)

UICornera.Parent = _1BG

ImageLabela.Parent = _1BG
ImageLabela.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabela.BackgroundTransparency = 1.000
ImageLabela.Position = UDim2.new(-0.00196933001, 0, 0.536627233, 0)
ImageLabela.Size = UDim2.new(0.281615615, 0, -0.0686778426, 43)
ImageLabela.Image = "rbxassetid://12482865709"
ImageLabela.ScaleType = Enum.ScaleType.Fit

Pricea.Name = "Price"
Pricea.Parent = _1BG
Pricea.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pricea.BackgroundTransparency = 1.000
Pricea.Position = UDim2.new(0.353667796, 0, 0.536627233, 0)
Pricea.Size = UDim2.new(0.637264431, 0, 0.177417874, 0)
Pricea.Font = Enum.Font.FredokaOne
Pricea.Text = "30"
Pricea.TextColor3 = Color3.fromRGB(255, 255, 255)
Pricea.TextScaled = true
Pricea.TextSize = 14.000
Pricea.TextWrapped = true
Pricea.TextXAlignment = Enum.TextXAlignment.Left

TextButtona.Parent = _1BG
TextButtona.BackgroundColor3 = Color3.fromRGB(98, 255, 124)
TextButtona.Position = UDim2.new(0, 0, 0.801241517, 0)
TextButtona.Size = UDim2.new(1, 0, 0.225598976, 0)
TextButtona.Font = Enum.Font.FredokaOne
TextButtona.Text = "Buy"
TextButtona.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButtona.TextScaled = true
TextButtona.TextSize = 14.000
TextButtona.TextWrapped = true
TextButtona.MouseButton1Down:Connect(function()
	okayy.Enabled = true
	okayy.Frame.Desc.Text = "Are You Sure You Wanna Buy 1B Gems?"
end)
okayy.Frame.Yes.MouseButton1Down:Connect(function()
if okayy.Frame.Desc.Text == "Are You Sure You Wanna Buy 1B Gems?" then
	if tonumber(amount) >= tonumber(Pricea.Text) then
		amount = tostring(tonumber(amount) - tonumber(Pricea.Text))
		okayy.Enabled = false
		aff.Enabled = true
		aff.Frame.Desc.Text = "You Bought 1B Gems! (You Have ".. tonumber(amount).. " Coins) Click 'Ok' To Copy The ID Of The Item. DM Yusefk7797#3922 With The Code In Order To Proceed."
		aff.Frame.Ok.MouseButton1Down:Connect(function()
			setclipboard(codes[math.random(1, #codes)])
		end)
	else
		okayy.Enabled = false
		cantaff.Enabled = true
		cantaff.Frame.Desc.Text = "You Do Not Have Enough Tokens In Order To Purchase 1B Gems (".. tonumber(Pricea.Text) - tonumber(amount).. " Needed)"
	end
	end
end)
okayy.Frame.No.MouseButton1Down:Connect(function()
	okayy.Enabled = false
end)
UICornera_2.Parent = TextButton

ImageLabela_2.Parent = _1BG
ImageLabela_2.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabela_2.BackgroundTransparency = 1.000
ImageLabela_2.Position = UDim2.new(0.070577912, 0, -0.00174619618, 0)
ImageLabela_2.Size = UDim2.new(0.920354366, 0, 0.292096168, 43)
ImageLabela_2.Image = "rbxassetid://7786012670"
ImageLabela_2.ScaleType = Enum.ScaleType.Fit

TextLabela.Parent = _1BG
TextLabela.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabela.BackgroundTransparency = 1.000
TextLabela.Position = UDim2.new(0, 0, -0.00174619618, 0)
TextLabela.Size = UDim2.new(0.990932167, 0, 0.177417874, 0)
TextLabela.Font = Enum.Font.FredokaOne
TextLabela.Text = "1B"
TextLabela.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabela.TextScaled = true
TextLabela.TextSize = 14.000
TextLabela.TextStrokeTransparency = 0.000
TextLabela.TextWrapped = true
-- End
--Start
local EXC = Instance.new("Frame")
local UICornerb_2 = Instance.new("UICorner")
local TextButtonb = Instance.new("TextButton")
local ImageLabelb = Instance.new("ImageLabel")
local ImageLabelb_2 = Instance.new("ImageLabel")
local TextLabelb = Instance.new("TextLabel")
local UICornerb = Instance.new("UICorner")
local Priceb = Instance.new("TextLabel")
EXC.Name = "Exclusive"
EXC.Parent = ScrollingFrame
EXC.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
EXC.Position = UDim2.new(0.0670000836, 0, -0.00136186823, 0)
EXC.Size = UDim2.new(0.236999989, 0, 0.180132821, 0)

UICornerb.Parent = EXC

ImageLabelb.Parent = EXC
ImageLabelb.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabelb.BackgroundTransparency = 1.000
ImageLabelb.Position = UDim2.new(-0.00196933001, 0, 0.536627233, 0)
ImageLabelb.Size = UDim2.new(0.281615615, 0, -0.0686778426, 43)
ImageLabelb.Image = "rbxassetid://12482865709"
ImageLabelb.ScaleType = Enum.ScaleType.Fit

Priceb.Name = "Price"
Priceb.Parent = EXC
Priceb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Priceb.BackgroundTransparency = 1.000
Priceb.Position = UDim2.new(0.353667796, 0, 0.536627233, 0)
Priceb.Size = UDim2.new(0.637264431, 0, 0.177417874, 0)
Priceb.Font = Enum.Font.FredokaOne
Priceb.Text = "100000"
Priceb.TextColor3 = Color3.fromRGB(255, 255, 255)
Priceb.TextScaled = true
Priceb.TextSize = 14.000
Priceb.TextWrapped = true
Priceb.TextXAlignment = Enum.TextXAlignment.Left

TextButtonb.Parent = EXC
TextButtonb.BackgroundColor3 = Color3.fromRGB(98, 255, 124)
TextButtonb.Position = UDim2.new(0, 0, 0.801241517, 0)
TextButtonb.Size = UDim2.new(1, 0, 0.225598976, 0)
TextButtonb.Font = Enum.Font.FredokaOne
TextButtonb.Text = "Buy"
TextButtonb.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButtonb.TextScaled = true
TextButtonb.TextSize = 14.000
TextButtonb.TextWrapped = true
TextButtonb.MouseButton1Down:Connect(function()
	okayy.Enabled = true
	okayy.Frame.Desc.Text = "Are You Sure You Wanna Buy An Exclusive?"
end)
okayy.Frame.Yes.MouseButton1Down:Connect(function()
if okayy.Frame.Desc.Text == "Are You Sure You Wanna Buy An Exclusive?" then
	if tonumber(amount) >= tonumber(Priceb.Text) then
		amount = tostring(tonumber(amount) - tonumber(Priceb.Text))
		okayy.Enabled = false
		aff.Enabled = true
		aff.Frame.Desc.Text = "You Bought An Exclusive! (You Have ".. tonumber(amount).. " Coins) Click 'Ok' To Copy The ID Of The Item. DM Yusefk7797#3922 With The Code In Order To Proceed."
	else
		okayy.Enabled = false
		cantaff.Enabled = true
		cantaff.Frame.Desc.Text = "You Do Not Have Enough Tokens In Order To Purchase An Exclusive (".. tonumber(Priceb.Text) - tonumber(amount).. " Needed)"
	end
	end
end)
okayy.Frame.No.MouseButton1Down:Connect(function()
	okayy.Enabled = false
end)
UICornerb_2.Parent = TextButton

ImageLabelb_2.Parent = EXC
ImageLabelb_2.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabelb_2.BackgroundTransparency = 1.000
ImageLabelb_2.Position = UDim2.new(0.070577912, 0, -0.00174619618, 0)
ImageLabelb_2.Size = UDim2.new(0.920354366, 0, 0.292096168, 43)
ImageLabelb_2.Image = "rbxassetid://7786012670"
ImageLabelb_2.ScaleType = Enum.ScaleType.Fit

TextLabelb.Parent = EXC
TextLabelb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelb.BackgroundTransparency = 1.000
TextLabelb.Position = UDim2.new(0, 0, -0.00174619618, 0)
TextLabelb.Size = UDim2.new(0.990932167, 0, 0.177417874, 0)
TextLabelb.Font = Enum.Font.FredokaOne
TextLabelb.Text = "Exclusive"
TextLabelb.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabelb.TextScaled = true
TextLabelb.TextSize = 14.000
TextLabelb.TextStrokeTransparency = 0.000
TextLabelb.TextWrapped = true
-- End
--Start
local HHR = Instance.new("Frame")
local UICornerc_2 = Instance.new("UICorner")
local TextButtonc = Instance.new("TextButton")
local ImageLabelc = Instance.new("ImageLabel")
local ImageLabelc_2 = Instance.new("ImageLabel")
local TextLabelc = Instance.new("TextLabel")
local UICornerc = Instance.new("UICorner")
local Pricec = Instance.new("TextLabel")
HHR.Name = "Huge Hell Rock"
HHR.Parent = ScrollingFrame
HHR.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
HHR.Position = UDim2.new(0.0670000836, 0, -0.00136186823, 0)
HHR.Size = UDim2.new(0.236999989, 0, 0.180132821, 0)

UICornerc.Parent = HHR

ImageLabelc.Parent = HHR
ImageLabelc.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabelc.BackgroundTransparency = 1.000
ImageLabelc.Position = UDim2.new(-0.00196933001, 0, 0.536627233, 0)
ImageLabelc.Size = UDim2.new(0.281615615, 0, -0.0686778426, 43)
ImageLabelc.Image = "rbxassetid://12487055473"
ImageLabelc.ScaleType = Enum.ScaleType.Fit

Pricec.Name = "Price"
Pricec.Parent = HHR
Pricec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pricec.BackgroundTransparency = 1.000
Pricec.Position = UDim2.new(0.353667796, 0, 0.536627233, 0)
Pricec.Size = UDim2.new(0.637264431, 0, 0.177417874, 0)
Pricec.Font = Enum.Font.FredokaOne
Pricec.Text = "10000000"
Pricec.TextColor3 = Color3.fromRGB(255, 255, 255)
Pricec.TextScaled = true
Pricec.TextSize = 14.000
Pricec.TextWrapped = true
Pricec.TextXAlignment = Enum.TextXAlignment.Left

TextButtonc.Parent = HHR
TextButtonc.BackgroundColor3 = Color3.fromRGB(98, 255, 124)
TextButtonc.Position = UDim2.new(0, 0, 0.801241517, 0)
TextButtonc.Size = UDim2.new(1, 0, 0.225598976, 0)
TextButtonc.Font = Enum.Font.FredokaOne
TextButtonc.Text = "Buy"
TextButtonc.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButtonc.TextScaled = true
TextButtonc.TextSize = 14.000
TextButtonc.TextWrapped = true
TextButtonc.MouseButton1Down:Connect(function()
	okayy.Enabled = true
	okayy.Frame.Desc.Text = "Are You Sure You Wanna Buy An Huge Hell Rock?"
end)
okayy.Frame.Yes.MouseButton1Down:Connect(function()
if okayy.Frame.Desc.Text == "Are You Sure You Wanna Buy An Huge Hell Rock?" then
	if tonumber(amount) >= tonumber(Pricec.Text) then
		amount = tostring(tonumber(amount) - tonumber(Pricec.Text))
		okayy.Enabled = false
		aff.Enabled = true
		aff.Frame.Desc.Text = "You Bought An Huge Hell Rock! (You Have ".. tonumber(amount).. " Coins) Click 'Ok' To Copy The ID Of The Item. DM Yusefk7797#3922 With The Code In Order To Proceed."
		aff.Frame.Ok.MouseButton1Down:Connect(function()
			setclipboard(codes[math.random(1, #codes)])
		end)
	else
		okayy.Enabled = false
		cantaff.Enabled = true
		cantaff.Frame.Desc.Text = "You Do Not Have Enough Tokens In Order To Purchase An Huge Hell Rock (".. tonumber(Pricec.Text) - tonumber(amount).. " Needed)"
	end
	end
end)
okayy.Frame.No.MouseButton1Down:Connect(function()
	okayy.Enabled = false
end)
UICornerc_2.Parent = TextButton

ImageLabelc_2.Parent = HHR
ImageLabelc_2.BackgroundColor3 = Color3.fromRGB(254, 203, 102)
ImageLabelc_2.BackgroundTransparency = 1.000
ImageLabelc_2.Position = UDim2.new(0.070577912, 0, -0.00174619618, 0)
ImageLabelc_2.Size = UDim2.new(0.920354366, 0, 0.292096168, 43)
ImageLabelc_2.Image = "rbxassetid://7786012670"
ImageLabelc_2.ScaleType = Enum.ScaleType.Fit

TextLabelc.Parent = HHR
TextLabelc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelc.BackgroundTransparency = 1.000
TextLabelc.Position = UDim2.new(0, 0, -0.00174619618, 0)
TextLabelc.Size = UDim2.new(0.990932167, 0, 0.177417874, 0)
TextLabelc.Font = Enum.Font.FredokaOne
TextLabelc.Text = "Huge Hell Rock"
TextLabelc.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabelc.TextScaled = true
TextLabelc.TextSize = 14.000
TextLabelc.TextStrokeTransparency = 0.000
TextLabelc.TextWrapped = true
-- End

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
