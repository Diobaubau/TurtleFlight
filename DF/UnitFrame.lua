
--PlayerFrame
PlayerFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame]]
PlayerStatusTexture:SetTexture[[Interface\Addons\DF\img\UI-Player-Status]]

--HealbarPlayer
PlayerFrameHealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
PlayerFrameHealthBar:SetWidth(126)
PlayerFrameHealthBar:SetHeight(20)
PlayerFrameHealthBar:SetPoint("TOPLEFT", 102, -34)

--ManaBarPlayer
PlayerFrameManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Mana-Status.tga]])
PlayerFrameManaBar:SetWidth(125)
PlayerFrameManaBar:SetPoint("TOPLEFT", 102, -55)

--BackGroundPlayerandPortrait
--PlayerPortrait:ClearAllPoints()
--PlayerPortrait:SetPoint("CENTER", 0, 0)
PlayerPortrait:SetHeight(62)
PlayerPortrait:SetWidth(62)
PlayerPortrait:SetTexture("")
PlayerFrameBackground:ClearAllPoints()
PlayerFrameBackground:SetPoint("CENTER", 49, 2)
PlayerFrameBackground:SetHeight(30)
PlayerFrameBackground:SetWidth(125)

--PlayerTextString
local playerFrame = PlayerFrame
local playerNameText = PlayerFrame.healthbar.TextString
PlayerName:SetPoint("TOP", PlayerFrameHealthBar , -5, 15)
PlayerLevelText:SetPoint("CENTER", PlayerName, 55, 0)
playerNameText:SetPoint("CENTER", PlayerFrameHealthBar , 0, 1)
playerNameText:SetHeight(25)
playerFrame.healthbar.TextString:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
playerFrame.healthbar.TextString:SetTextColor(1, 1, 1)
playerFrame.manabar.TextString:SetFont(STANDARD_TEXT_FONT, 10,"OUTLINE")
playerFrame.manabar.TextString:SetTextColor(1, 1, 1)


--TargetFrame
TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame2]]

--TargetofTarget
TargetofTargetFrame:ClearAllPoints()
TargetofTargetFrame:SetPoint("BOTTOM", TargetFrame, 38, -15)
TargetofTargetTexture:SetTexture[[Interface\Addons\DF\img\TargetofTargetFrame]]
TargetofTargetHealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
TargetofTargetManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Target-PortraitOn-Bar-Health-Status.tga]])
TargetofTargetManaBar:ClearAllPoints()
TargetofTargetHealthBar:SetWidth(53)
TargetofTargetManaBar:SetWidth(53)
TargetofTargetManaBar:SetPoint("CENTER", 20, -5)

--HealbarTarget
TargetFrameHealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
TargetFrameHealthBar:SetPoint("TOPRIGHT", -102, -34)
TargetFrameHealthBar:SetHeight(20)
TargetFrameHealthBar:SetWidth(125)

--ManabarTarget
TargetFrameManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Target-PortraitOn-Bar-Mana-Status.tga]])
TargetFrameManaBar:SetPoint("TOPRIGHT", -96, -52)
TargetFrameManaBar:SetWidth(132)

--BackGroundTargetandPortrait
TargetPortrait:ClearAllPoints()
TargetPortrait:SetPoint("CENTER", 42, 9)
TargetPortrait:SetHeight(57)
TargetPortrait:SetWidth(57)
TargetFrameNameBackground:Hide()
TargetFrameBackground:ClearAllPoints()
TargetFrameBackground:SetPoint("CENTER", -46, 2)
TargetFrameBackground:SetWidth(130)
TargetFrameBackground:SetHeight(30)

--TargetTextString
TargetName:ClearAllPoints()
TargetName:SetPoint("CENTER", TargetFrameHealthBar, 5, 20)
TargetLevelText:ClearAllPoints()
TargetLevelText:SetPoint("CENTER", TargetName, -60, 0)
TargetDeadText:ClearAllPoints()
TargetDeadText:SetPoint("CENTER",TargetFrameHealthBar , 0, 3)

--Classification
local original = TargetFrame_CheckClassification
function TargetFrame_CheckClassification()
  local classification = UnitClassification("target")
  if ( classification == "worldboss" ) then
      TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame-Elite]]
    elseif ( classification == "rareelite"  ) then
      TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame-Elite]]
    elseif ( classification == "elite"  ) then
      TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame-Elite]]
    elseif ( classification == "rare"  ) then
      TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame-Elite_Rare]]
    else
      TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame2]]  
  end
end

--PetFrameString
local petFrame = PetFrame
petFrame.healthbar.TextString:SetFont(STANDARD_TEXT_FONT, 8, "OUTLINE")
petFrame.healthbar.TextString:SetTextColor(1, 1, 1)
petFrame.manabar.TextString:SetFont(STANDARD_TEXT_FONT, 8, "OUTLINE")
petFrame.manabar.TextString:SetTextColor(1, 1, 1)
 -- Center the text over the Heal and Mana bars
petFrame.healthbar.TextString:SetPoint("CENTER", petFrame.healthbar, "CENTER", 0, 0)
petFrame.healthbar.TextString:SetJustifyH("CENTER")
petFrame.manabar.TextString:SetPoint("CENTER", petFrame.manabar, "CENTER", 0, 0)
petFrame.manabar.TextString:SetJustifyH("CENTER")

--HookPetFrame
local new_PetFrame_Update = PetFrame_Update
local new_PetFrame = PetFrame
PetFrame_Update = function()
  -- Call the original function
  new_PetFrame_Update()
  PetFrameTexture:SetTexture("Interface\\Addons\\DF\\img\\pet")
  PetFrameTexture:SetDrawLayer("BACKGROUND") -- Set the draw layer of the texture
  PetFrame:ClearAllPoints()
  PetFrame:SetPoint("BOTTOM", PlayerFrame, -10, -30)
  -- Change the frame strata of the HealthBar and ManaBar
  
  --PetFrameHealthBar:SetFrameStrata("MEDIUM")
  PetFrameHealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-TargetofTarget-PortraitOn-Bar-Health]])
  -- Adjust the position of the PetFrameHealthBar
  PetFrameHealthBar:SetHeight(13)
  PetFrameHealthBar:ClearAllPoints()
  PetFrameHealthBar:SetPoint("CENTER", PetFrame, "CENTER", 15, 3)
  --PetFrameManaBar:SetFrameStrata("MEDIUM")
    local class = UnitClass("player")
    if class == "Hunter" then
      PetFrameManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-TargetofTarget-PortraitOn-Bar-Focus]])
    else
      PetFrameManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-TargetofTarget-PortraitOn-Bar-Mana]])
    end
  -- Adjust the position of the PetFrameManaBar
  PetFrameManaBar:ClearAllPoints()
  PetFrameManaBar:SetPoint("CENTER", PetFrame, "CENTER", 15, -7)
  -- Adjust the position of the PetName
  PetName:ClearAllPoints()
  PetName:SetPoint("CENTER", PetFrame, "CENTER", 5, 16)
end

--wait
  local wait = CreateFrame("Frame")
  wait:RegisterEvent("PLAYER_ENTERING_WORLD")
  wait:SetScript("OnEvent", function()
    
    -- adjust healthbar colors to frame colors
    local original = TargetFrame_CheckFaction
    function TargetFrame_CheckFaction(self)
      original(self)

      if TargetFrameHealthBar._SetStatusBarColor then
        local r, g, b, a = TargetFrameNameBackground:GetVertexColor()
        TargetName:SetVertexColor(r, g, b, a)
      end
    end
  end)

  -- delay to first draw
  wait:SetScript("OnUpdate", function()
    
    PlayerFrameHealthBar:SetStatusBarColor(0.6, 1, 0.1)
    
    -- use frame color for target frame
    if TargetFrameNameBackground then
      -- disable vanilla ui color restore functions
      TargetFrameHealthBar._SetStatusBarColor = TargetFrameHealthBar.SetStatusBarColor
      TargetFrameHealthBar.SetStatusBarColor = function() return end
    end
    if PlayerFrameBackground then
      PlayerFrameHealthBar._SetStatusBarColor = PlayerFrameHealthBar.SetStatusBarColor
      PlayerFrameHealthBar.SetStatusBarColor = function() return end
    end

    TargetFrame_CheckFaction(PlayerFrame)
    wait:UnregisterAllEvents()
    wait:Hide()
  end)


  TargetFrameHealthBar:SetStatusBarColor(0.6, 1, 0.1)
  TargetofTargetHealthBar:SetStatusBarColor(0.6, 1, 0.1)