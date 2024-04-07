--CastingBarFrame
--CastingBarBorder
--CastingBarSpark
--CastingBarFlash
--CastingBarText

local castbar = CastingBarFrame
castbar:SetStatusBarTexture("Interface\\AddOns\\DF\\img\\Castbar\\CastingBarStandard2")
castbar:SetHeight(16)

local castbartext = CastingBarText
--castbartext:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
castbartext:ClearAllPoints()
castbartext:SetPoint("CENTER", castbar, "CENTER", 0, -15)
castbartext:SetTextColor(1,1,1)

local border = CastingBarBorder
border:SetTexture("Interface\\AddOns\\DF\\img\\Castbar\\CastingBarFrame2")
-- Set the border size to match the castbar
border:SetWidth(castbar:GetWidth() + 5)
border:SetHeight(castbar:GetHeight()+ 5)
border:ClearAllPoints()
border:SetPoint("CENTER", castbar, "CENTER", 0, 0)

local spark = CastingBarSpark
spark:SetTexture("Interface\\AddOns\\DF\\img\\Castbar\\CastingBarSpark")
spark:ClearAllPoints()
spark:SetPoint("CENTER", castbar, "CENTER", 0,0)
spark:SetWidth(10)
spark:SetHeight(22)

local flash = CastingBarFlash
flash:ClearAllPoints()
flash:SetPoint("CENTER", UIParent, 5000, 0)
