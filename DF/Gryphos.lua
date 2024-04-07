
-- Hide the original gryphons
MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()

-- Create new frames
local leftGryphonFrame = CreateFrame("Frame", nil, MainMenuBar)
local rightGryphonFrame = CreateFrame("Frame", nil, MainMenuBar)

-- Set the new frames to a higher strata
leftGryphonFrame:SetFrameStrata("MEDIUM")
rightGryphonFrame:SetFrameStrata("MEDIUM")

-- Create new textures
local leftGryphon = leftGryphonFrame:CreateTexture(nil, "OVERLAY")
local rightGryphon = rightGryphonFrame:CreateTexture(nil, "OVERLAY")

--Checking Horde vs. Alliance wouldn't work, so using races
local race = UnitRace("player")
--DEFAULT_CHAT_FRAME:AddMessage("Your race is " .. race .. ".")

if race == "Night Elf" then
    leftGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 71.5, 8.5)
elseif race == "Human" then
    leftGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 71.5, 8.5)
elseif race == "Gnome" then
    leftGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 71.5, 8.5)
elseif race == "Dwarf" then
    leftGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 71.5, 8.5)
elseif race == "High Elf" then
    leftGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DF\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 71.5, 8.5)
else
    leftGryphon:SetTexture("Interface\\Addons\\DF\\img\\Wyvern")
    rightGryphon:SetTexture("Interface\\Addons\\DF\\img\\Wyvern")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70.5, 2)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 71.5, 2.5)
end

--Size the endcaps
leftGryphon:SetWidth(84)
leftGryphon:SetHeight(84)
rightGryphon:SetWidth(84)
rightGryphon:SetHeight(84)

-- Position the new textures

-- Flip the right texture
rightGryphon:SetTexCoord(1, 0, 0, 1)

SetCVar("Useuiscale", "1")
SetCVar("UiScale", "0.9")




