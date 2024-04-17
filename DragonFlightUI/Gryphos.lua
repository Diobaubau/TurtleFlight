
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

-- Comand Hide Gryphos
SLASH_GRYPHOS1 = "/ghide"
SLASH_LOL1 = "/gshow"
SlashCmdList["GRYPHOS"] = function()
    if leftGryphon:IsShown() and rightGryphon:IsShown() then
        leftGryphon:Hide()
        rightGryphon:Hide()
    end
end
SlashCmdList["LOL"] = function()
        leftGryphon:Show()
        rightGryphon:Show()
end


-- Checking Horde vs. Alliance wouldn't work, so using races
local race = UnitRace("player")
-- DEFAULT_CHAT_FRAME:AddMessage("Your race is " .. race .. ".")

if race == "Night Elf" then
    leftGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 74, 8)
elseif race == "Human" then
    leftGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 74, 8)
elseif race == "Gnome" then
    leftGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 74, 8)
elseif race == "Dwarf" then
    leftGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 74, 8)
elseif race == "High Elf" then
    leftGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    rightGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Gryphon")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70, 8)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 74, 8)
else
    leftGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Wyvern")
    rightGryphon:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\Wyvern")
    leftGryphon:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -70.5, 2)
    rightGryphon:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT", 74, 3)
end

--Size the endcaps
leftGryphon:SetWidth(84)
leftGryphon:SetHeight(84)
rightGryphon:SetWidth(84)
rightGryphon:SetHeight(84)

-- Flip the right texture
rightGryphon:SetTexCoord(1, 0, 0, 1)



