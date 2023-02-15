infoover = game.Players.LocalPlayer.PlayerGui.InfoOverlay
values = {
	["Huge Pumpkin Cat"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Santa Paws"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Festive Cat"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Forest Wyvern"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Hacked Cat"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Gargoyle Dragon"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Dog"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Dragon"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Lucky Cat"] = {"10", "Rainbow"}, -- Dark Matter
	["Huge Cupcake"] = {"10", "Rainbow"}, -- rainbow
	["Huge Pony"] = {"10", "Rainbow"}, -- rainbow
	["Huge Storm Agony"] = {"10", "Rainbow"}, -- rainbow
	["Huge Pixel Cat"] = {"10", "Rainbow"}, -- rainbow
	["Huge Easter Cat"] = {"10", "Rainbow"}, -- rainbow
	["Huge Super Corgi"] = {"10", "Rainbow"}, -- rainbow
	["Huge Rainbow Unicorn"] = {"10", "Rainbow"}, -- rainbow
	["Huge Floppa"] = {"10", "Rainbow"}, -- rainbow
	["Huge Sleipnir"] = {"10", "Rainbow"}, -- rainbow
	["Huge Hell Rock"] = {"10", "Rainbow"}, -- rainbow
	["Huge Cyborg Capybara"] = {"10", "Rainbow"}, -- rainbow
	["Huge Capybara"] = {"10", "Rainbow"}, -- rainbow
	["Huge Party Cat"] = {"10", "Rainbow"}, -- rainbow
	["Huge Scary Cat"] = {"10", "Rainbow"}, -- rainbow
	["Huge Scary Corgi"] = {"10", "Rainbow"}, -- rainbow
	["Huge Grim Reaper"] = {"10", "Rainbow"}, -- rainbow
	["Huge Pumpkin Cat"] = {"10", "Golden"}, -- Rainbow
	["Huge Santa Paws"] = {"10", "Golden"}, -- Rainbow
	["Huge Festive Cat"] = {"10", "Golden"}, -- Rainbow
	["Huge Forest Wyvern"] = {"10", "Golden"}, -- Rainbow
	["Huge Hacked Cat"] = {"10", "Golden"}, -- Rainbow
	["Huge Gargoyle Dragon"] = {"10", "Golden"}, -- Rainbow
	["Huge Dog"] = {"10", "Golden"}, -- Rainbow
	["Huge Dragon"] = {"10", "Golden"}, -- Rainbow
	["Huge Lucky Cat"] = {"10", "Golden"}, -- Rainbow
	["Huge Cupcake"] = {"10", "Golden"}, -- Rainbow
	["Huge Pony"] = {"10", "Golden"}, -- Rainbow
	["Huge Storm Agony"] = {"10", "Golden"}, -- Rainbow
	["Huge Pixel Cat"] = {"10", "Golden"}, -- Rainbow
	["Huge Easter Cat"] = {"10", "Golden"}, -- Rainbow
	["Huge Super Corgi"] = {"10", "Golden"}, -- Rainbow
	["Huge Rainbow Unicorn"] = {"10", "Golden"}, -- Rainbow
	["Huge Floppa"] = {"10", "Golden"}, -- Rainbow
	["Huge Sleipnir"] = {"10", "Golden"}, -- Rainbow
	["Huge Hell Rock"] = {"10", "Golden"}, -- gold
	["Huge Cyborg Capybara"] = {"10", "Golden"}, -- gold
	["Huge Capybara"] = {"10", "Golden"}, -- gold
	["Huge Party Cat"] = {"10", "Golden"}, -- gold
	["Huge Scary Corgi"] = {"10", "Golden"}, -- gold
	["Huge Scary Cat"] = {"10", "Golden"}, -- gold
	["Huge Grim Reaper"] = {"10", "Golden"}, -- gold
	["Huge Pumpkin Cat"] = {"10", ""}, -- normal
	["Huge Santa Paws"] = {"10", ""}, -- Golden
	["Huge Festive Cat"] = {"10", ""}, -- Golden
	["Huge Forest Wyvern"] = {"10", ""}, -- Golden
	["Huge Hacked Cat"] = {"10", ""}, -- Golden
	["Huge Gargoyle Dragon"] = {"10", ""}, -- Golden
	["Huge Dog"] = {"10", ""}, -- Golden
	["Huge Dragon"] = {"10", ""}, -- Golden
	["Huge Lucky Cat"] = {"10", ""}, -- Golden
	["Huge Cupcake"] = {"10", ""}, -- Golden
	["Huge Pony"] = {"10", ""}, -- Golden
	["Huge Storm Agony"] = {"10", ""}, -- Golden
	["Huge Pixel Cat"] = {"10", ""}, -- Golden
	["Huge Easter Cat"] = {"10", ""}, -- Golden
	["Huge Super Corgi"] = {"10", ""}, -- normal
	["Huge Rainbow Unicorn"] = {"10", ""}, -- normal
	["Huge Floppa"] = {"10", ""}, -- normal
	["Huge Sleipnir"] = {"10", ""}, -- normal
	["Huge Hell Rock"] = {"10", ""}, -- normal
	["Huge Cyborg Capybara"] = {"10", ""}, -- normal
	["Huge Capybara"] = {"10", ""}, -- normal
	["Huge Party Cat"] = {"10", ""}, -- normal
	["Huge Scary Cat"] = {"10", ""}, -- normal
	["Huge Scary Corgi"] = {"10", ""}, -- normal
	["Huge Grim Reaper"] = {"10", ""} -- normal
}
while wait() do
for i = 1, #infoover:GetChildren() do
    orgname = infoover:GetChildren()[i].Name
    naem = infoover:GetChildren()[i].Frame.Blocks.Title.title.Text
    for ii,v in pairs(values) do
        if v[2] == "" then
        if ii == naem and infoover:GetChildren()[i].Frame.Blocks:FindFirstChild("Rare") then
            if infoover:FindFirstChild(orgname) then
                infoover:GetChildren()[i].Frame.Blocks.Rare.title.TextScaled = true
                infoover:GetChildren()[i].Frame.Blocks.Rare.title.Text = "Value: ".. v[1]
            end
        end
        else
        if ii == naem then
            if infoover:FindFirstChild(orgname) and infoover:GetChildren()[i].Frame.Blocks:FindFirstChild("Block") and infoover:GetChildren()[i].Frame.Blocks.Block.title.Text == v[2] and infoover:GetChildren()[i].Frame.Blocks:FindFirstChild("Rare") then
                infoover:GetChildren()[i].Frame.Blocks.Rare.title.TextScaled = true
                infoover:GetChildren()[i].Frame.Blocks.Rare.title.Text = "Value: ".. v[1]
            end
        end
        end
        end
end
end
