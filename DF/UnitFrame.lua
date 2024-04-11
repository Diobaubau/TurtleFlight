
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

PlayerPortrait:SetHeight(62)
PlayerPortrait:SetWidth(62)
PlayerPortrait:SetTexture("")
PlayerFrameBackground:ClearAllPoints()
PlayerFrameBackground:SetPoint("CENTER", 48, 2)
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

--PartyMembersFrame
PartyMemberFrame1Texture:SetTexture([[Interface\Addons\DF\img\UI-PartyFrame]])
PartyMemberFrame1Texture:SetWidth(160)
PartyMemberFrame1Texture:SetHeight(80)
PartyMemberFrame1HealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
PartyMemberFrame1ManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Mana-Status.tga]])
PartyMemberFrame1HealthBar:ClearAllPoints()
PartyMemberFrame1HealthBar:SetPoint("CENTER", 35, -3)
PartyMemberFrame1HealthBar:SetWidth(92)
PartyMemberFrame1HealthBar:SetHeight(13)
PartyMemberFrame1ManaBar:ClearAllPoints()
PartyMemberFrame1ManaBar:SetPoint("CENTER", 35, -15)
PartyMemberFrame1ManaBar:SetWidth(95)
PartyMemberFrame1ManaBar:SetHeight(7)

--partyportrait
PartyMemberFrame1Portrait:ClearAllPoints()
PartyMemberFrame1Portrait:SetPoint("CENTER", -33, -5)
PartyMemberFrame1Portrait:SetWidth(43)
PartyMemberFrame1Portrait:SetHeight(43)
PartyMemberFrame1Name:ClearAllPoints()
PartyMemberFrame1Name:SetPoint("CENTER", 5, 15)

--PartyMembersFrame2
PartyMemberFrame2Texture:SetTexture([[Interface\Addons\DF\img\UI-PartyFrame]])
PartyMemberFrame2Texture:SetWidth(160)
PartyMemberFrame2Texture:SetHeight(80)
PartyMemberFrame2HealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
PartyMemberFrame2ManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Mana-Status.tga]])
PartyMemberFrame2HealthBar:ClearAllPoints()
PartyMemberFrame2HealthBar:SetPoint("CENTER", 35, -3)
PartyMemberFrame2HealthBar:SetWidth(92)
PartyMemberFrame2HealthBar:SetHeight(13)
PartyMemberFrame2ManaBar:ClearAllPoints()
PartyMemberFrame2ManaBar:SetPoint("CENTER", 35, -15)
PartyMemberFrame2ManaBar:SetWidth(95)
PartyMemberFrame2ManaBar:SetHeight(7)

--partyportrait
PartyMemberFrame2Portrait:ClearAllPoints()
PartyMemberFrame2Portrait:SetPoint("CENTER", -33, -5)
PartyMemberFrame2Portrait:SetWidth(43)
PartyMemberFrame2Portrait:SetHeight(43)
PartyMemberFrame2Name:ClearAllPoints()
PartyMemberFrame2Name:SetPoint("CENTER", 5, 15)

--PartyMembersFrame
PartyMemberFrame3Texture:SetTexture([[Interface\Addons\DF\img\UI-PartyFrame]])
PartyMemberFrame3Texture:SetWidth(160)
PartyMemberFrame3Texture:SetHeight(80)
PartyMemberFrame3HealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
PartyMemberFrame3ManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Mana-Status.tga]])
PartyMemberFrame3HealthBar:ClearAllPoints()
PartyMemberFrame3HealthBar:SetPoint("CENTER", 35, -3)
PartyMemberFrame3HealthBar:SetWidth(92)
PartyMemberFrame3HealthBar:SetHeight(13)
PartyMemberFrame3ManaBar:ClearAllPoints()
PartyMemberFrame3ManaBar:SetPoint("CENTER", 35, -15)
PartyMemberFrame3ManaBar:SetWidth(95)
PartyMemberFrame3ManaBar:SetHeight(7)

--partyportrait
PartyMemberFrame3Portrait:ClearAllPoints()
PartyMemberFrame3Portrait:SetPoint("CENTER", -33, -5)
PartyMemberFrame3Portrait:SetWidth(43)
PartyMemberFrame3Portrait:SetHeight(43)
PartyMemberFrame3Name:ClearAllPoints()
PartyMemberFrame3Name:SetPoint("CENTER", 5, 15)

--PartyMembersFrame
PartyMemberFrame4Texture:SetTexture([[Interface\Addons\DF\img\UI-PartyFrame]])
PartyMemberFrame4Texture:SetWidth(160)
PartyMemberFrame4Texture:SetHeight(80)
PartyMemberFrame4HealthBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Health-Status.tga]])
PartyMemberFrame4ManaBar:SetStatusBarTexture([[Interface\Addons\DF\img\Unitframe\UI-HUD-UnitFrame-Player-PortraitOn-Bar-Mana-Status.tga]])
PartyMemberFrame4HealthBar:ClearAllPoints()
PartyMemberFrame4HealthBar:SetPoint("CENTER", 35, -3)
PartyMemberFrame4HealthBar:SetWidth(92)
PartyMemberFrame4HealthBar:SetHeight(13)
PartyMemberFrame4ManaBar:ClearAllPoints()
PartyMemberFrame4ManaBar:SetPoint("CENTER", 35, -15)
PartyMemberFrame4ManaBar:SetWidth(95)
PartyMemberFrame4ManaBar:SetHeight(7)

--partyportrait
PartyMemberFrame4Portrait:ClearAllPoints()
PartyMemberFrame4Portrait:SetPoint("CENTER", -33, -5)
PartyMemberFrame4Portrait:SetWidth(43)
PartyMemberFrame4Portrait:SetHeight(43)
PartyMemberFrame4Name:ClearAllPoints()
PartyMemberFrame4Name:SetPoint("CENTER", 5, 15)


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
TargetofTargetBackground:ClearAllPoints()
TargetofTargetBackground:SetPoint("CENTER", 20, 0)
TargetofTargetBackground:SetWidth(50)
TargetofTargetBackground:SetHeight(20)
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
      TargetFrameTexture:SetTexture[[Interface\Addons\DF\img\UI-TargetingFrame-Elite-Rare]]
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