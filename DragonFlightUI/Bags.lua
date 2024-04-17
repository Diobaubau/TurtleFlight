
-- Hide

MainMenuBarBackpackButton:Hide()

-- MainBag

local Mainb = CreateFrame("Button", "MyBagButton", UIParent, "UIPanelButtonTemplate")
Mainb:SetWidth(40)
Mainb:SetHeight(40)
Mainb:SetPoint("BOTTOMRIGHT", UIParent, -10, 40)
Mainb:SetNormalTexture("Interface\\AddOns\\DragonFlightUI\\img\\bagslots2x1.tga")
local MainbNormalTexture = Mainb:GetNormalTexture()
MainbNormalTexture:SetTexCoord(4/512, 90/512, 2/128, 94/128)
Mainb:SetPushedTexture("Interface\\AddOns\\DragonFlightUI\\img\\bagslots2x1.tga")
local MainbPushedTexture = Mainb:GetPushedTexture()
MainbPushedTexture:SetTexCoord(4/512, 90/512, 2/128, 94/128)
Mainb:SetHighlightTexture("Interface\\AddOns\\DragonFlightUI\\img\\bagslots2x1.tga")
local MainbHighlightTexture = Mainb:GetHighlightTexture()
MainbHighlightTexture:SetTexCoord(104/512, 185/512, 4/128, 90/128)

Mainb:SetScript("OnClick" , function(self, button, down)
    ToggleBag(0)
end)

-- Bag1

CharacterBag0Slot:Hide()

-- Bag2

CharacterBag1Slot:Hide()

-- Bag3

CharacterBag2Slot:Hide()

-- Bag4

CharacterBag3Slot:Hide()

-- KeyRing

KeyRingButton:ClearAllPoints()
KeyRingButton:Hide()

local kr = CreateFrame("Button", "kr", UIParent, "UIPanelButtonTemplate")
kr:SetWidth(25)
kr:SetHeight(25)
kr:SetPoint("CENTER", Mainb, -35, 0)
kr:SetNormalTexture("Interface\\AddOns\\DragonFlightUI\\img\\bagslots2key.tga")
local krNormalTexture = kr:GetNormalTexture()
krNormalTexture:SetTexCoord(4/128, 62/128, 63/128, 124/128)
kr:SetPushedTexture("Interface\\AddOns\\DragonFlightUI\\img\\bagslots2key.tga")
local krPushedTexture = kr:GetPushedTexture()
krPushedTexture:SetTexCoord(68/128, 122/128, 63/128, 124/128)
kr:SetHighlightTexture("Interface\\AddOns\\DragonFlightUI\\img\\bagslots2key.tga")
local krHighlightTexture = kr:GetHighlightTexture()
krHighlightTexture:SetTexCoord(4/128, 62/128, 1/128, 56/128)

kr:SetScript("OnClick", function(self, button, down)
   ToggleKeyRing() 
end)