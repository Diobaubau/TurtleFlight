
-- function

local function hide(frame, texture)
    if not frame then return end

    if texture and texture == 1 and frame.SetTexture then 
        frame:SetTexture("")
    elseif texture and texture == 2 and frame.SetNormalTexture then
        frame:SetNormalTexture("")
    else
        frame:ClearAllPoints()
        frame.Show = function() return end
        frame:Hide()
    end
end

-- Frames and Texture

local frames = {
    MainMenuBarTexture2, MainMenuBarTexture3,
    MainMenuXPBarTexture2, MainMenuXPBarTexture3,
    ReputationWatchBarTexture2, ReputationWatchBarTexture3,
    MainMenuMaxLevelBar0, MainMenuMaxLevelBar1,
    MainMenuMaxLevelBar2, MainMenuMaxLevelBar3,
    ShapeshiftBarLeft, ShapeshiftBarMiddle, ShapeshiftBarRight,
}

local texture = {
    ReputationWatchBarTexture2, ReputationWatchBarTexture3,
    ReputationXPBarTexture2, ReputationXPBarTexture3,
    SlidingActionBarTexture0, SlidingActionBarTexture1,    
}

local normtexture = {
    ShapeshiftButton1, ShapeshiftButton2,
    ShapeshiftButton3, ShapeshiftButton4,
    ShapeshiftButton5, ShapeshiftButton6,    
}

local resizes = {
    MainMenuBar, MainMenuExpBar,
    ReputationWatchBar, ReputationWatchStatusBar,
}

-- Hide

for id, frame in pairs(frames) do hide(frame) end

-- Clear

for id, frame in pairs(texture) do hide(frame, 1) end
for id, frame in pairs(normtexture) do hide(frame, 2) end

-- Resize

for id, frame in pairs(resizes) do frame:SetWidth(511) end

-- Performance Hide

MainMenuBarPerformanceBar:ClearAllPoints()
MainMenuBarPerformanceBar:Hide()

-- SetTexture MainMenuBar

for _, g in pairs({MainMenuBarTexture0, MainMenuBarTexture1, BonusActionBarTexture0, BonusActionBarTexture1}) do
    if g then
        g:SetTexture("Interface\\Addons\\DragonFlightUI\\img\\UI-MainMenuBar-Dwarf")
    end
end

-- SetTexture Up and Down Button

local up = ActionBarUpButton
up:SetNormalTexture("Interface\\Addons\\DragonFlightUI\\img\\UpNormal")
up:SetPushedTexture("Interface\\Addons\\DragonFlightUI\\img\\UpPushed")
up:SetHighlightTexture("Interface\\Addons\\DragonFlightUI\\img\\UpHighlight")
up:SetWidth(20)
up:SetHeight(20)
up:ClearAllPoints()
up:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -40, 0)

local down = ActionBarDownButton
down:SetNormalTexture("Interface\\Addons\\DragonFlightUI\\img\\DownNormal")
down:SetPushedTexture("Interface\\Addons\\DragonFlightUI\\img\\DownPushed")
down:SetHighlightTexture("Interface\\Addons\\DragonFlightUI\\img\\DownHighlight")
down:SetWidth(20)
down:SetHeight(20)
down:ClearAllPoints()
down:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -40, -15)

MainMenuBarPageNumber:ClearAllPoints()
MainMenuBarPageNumber:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
MainMenuBarPageNumber:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT", -23, -6)

-- Positions

MainMenuMaxLevelBar0:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT")
MainMenuMaxLevelBar1:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT")
MainMenuBarTexture0:SetPoint("LEFT", MainMenuBarArtFrame, "LEFT")
MainMenuBarTexture1:SetPoint("RIGHT", MainMenuBarArtFrame, "RIGHT")

-- move MultiBarBottomRight ontop of MultiBarBottomLeft

MultiBarBottomRight:ClearAllPoints()
MultiBarBottomRight:SetPoint("BOTTOM", MultiBarBottomLeft, "TOP", 0, 5)
MultiBarBottomLeft:SetFrameStrata("LOW")

-- reload custom frame positions after original frame manage runs

local hookUIParent_ManageFramePositions = UIParent_ManageFramePositions
UIParent_ManageFramePositions = function(a1, a2, a3)
    -- run original function
    hookUIParent_ManageFramePositions(a1, a2, a3)

    -- move bars above xp bar if xp or reputation is tracked

	MainMenuBarLeftEndCap:ClearAllPoints()
	MainMenuBarRightEndCap:ClearAllPoints()
    if MainMenuExpBar:IsVisible() or ReputationWatchBar:IsVisible() then
	    local anchor = GetWatchedFactionInfo() and ReputationWatchBar or MainMenuExpBar
	
	    MainMenuBar:SetPoint("BOTTOM", WorldFrame, "BOTTOM", 0, 28)
	    MainMenuBarLeftEndCap:SetPoint("RIGHT", MainMenuBarArtFrame, "LEFT", 26, 10)
	    MainMenuBarRightEndCap:SetPoint("LEFT", MainMenuBarArtFrame, "RIGHT", -26, 10)
    else
        MainMenuBar:SetPoint("BOTTOM", WorldFrame, "BOTTOM", 0, 13)
	    MainMenuBarLeftEndCap:SetPoint("RIGHT", MainMenuBarArtFrame, "LEFT", 26, 25)
	    MainMenuBarRightEndCap:SetPoint("LEFT", MainMenuBarArtFrame, "RIGHT", -26, 25)
	    MainMenuBarMaxLevelBar:SetAlpha(0)
    end

	MainMenuExpBar:ClearAllPoints()
	MainMenuExpBar:SetPoint("BOTTOM", WorldFrame, "BOTTOM", 0, 2)

	MultiBarBottomLeft:ClearAllPoints()
	MultiBarBottomLeft:SetPoint("BOTTOM", MainMenuBar, "TOP", 3, -5)
	ReputationWatchStatusBar:ClearAllPoints()
	ReputationWatchStatusBar:SetPoint("BOTTOM", WorldFrame, "BOTTOM", 0, 2)
	
    -- move pet actionbar above other actionbars

    PetActionBarFrame:ClearAllPoints()
    local anchor = MainMenuBarArtFrame

    -- Create a function to update the anchor and position of PetActionBarFrame

    local function updatePetActionBarPosition()
        if MultiBarBottomRight:IsVisible() then
            anchor = MultiBarBottomRight
        elseif MultiBarBottomLeft:IsVisible() then
            anchor = MultiBarBottomLeft
        end
        PetActionBarFrame:SetPoint("BOTTOM", anchor, "TOP", 0, 3)
    end

    -- Call the function initially to set the position
    updatePetActionBarPosition()

    -- Set scripts to update the position when action bars show/hide
    MultiBarBottomRight:SetScript("OnShow", updatePetActionBarPosition)
    MultiBarBottomRight:SetScript("OnHide", updatePetActionBarPosition)
    MultiBarBottomLeft:SetScript("OnShow", updatePetActionBarPosition)
    MultiBarBottomLeft:SetScript("OnHide", updatePetActionBarPosition)

    -- ShapeshiftBarFrame
    ShapeshiftBarFrame:ClearAllPoints()
    local offset = 0
    local anchor = MultiBarBottomLeftButton1
    anchor = MultiBarBottomLeft:IsVisible() and MultiBarBottomLeft or anchor
    anchor = MultiBarBottomRight:IsVisible() and MultiBarBottomRight or anchor

    offset = anchor == ActionButton1 and ( MainMenuExpBar:IsVisible() or ReputationWatchBar:IsVisible() ) and 6 or 0
    offset = anchor == ActionButton1 and offset + 6 or offset
    ShapeshiftBarFrame:SetPoint("BOTTOMLEFT", anchor, "TOPLEFT", -10, 2 + offset)

    -- move castbar ontop of other bars
    local anchor = MainMenuBarArtFrame
    anchor = MultiBarBottomLeft:IsVisible() and MultiBarBottomLeft or anchor
    anchor = MultiBarBottomRight:IsVisible() and MultiBarBottomRight or anchor
    local pet_offset = PetActionBarFrame:IsVisible() and 40 or 0
    CastingBarFrame:SetPoint("BOTTOM", anchor, "TOP", 0, 50 + pet_offset)

end

MainMenuBar:SetScale(.85)
MultiBarBottomLeft:SetScale(.85)
MultiBarBottomRight:SetScale(.85)
MultiBarLeft:SetScale(.85)
MultiBarRight:SetScale(.85)
MainMenuBar.ignoreFramePositionManager = true
MultiBarBottomLeft.ignoreFramePositionManager = true
MultiBarBottomRight.ignoreFramePositionManager = true
MultiBarLeft.ignoreFramePositionManager = true
MultiBarRight.ignoreFramePositionManager = true

MainMenuExpBar:SetAlpha(0) --Required for tXPbar.lua to work
