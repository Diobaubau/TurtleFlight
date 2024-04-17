TargetFrame.StatusTexts = CreateFrame("Frame", nil, TargetFrame)
TargetFrame.StatusTexts:SetAllPoints(TargetFrame)

TargetFrameHealthBar.TextString = TargetFrame.StatusTexts:CreateFontString("TargetFrameHealthBarText", "OVERLAY")
TargetFrameHealthBar.TextString:SetPoint("CENTER", TargetFrameHealthBar , 2, 1)

TargetFrameManaBar.TextString = TargetFrame.StatusTexts:CreateFontString("TargetFrameManaBarText", "OVERLAY")
TargetFrameManaBar.TextString:SetPoint("CENTER", TargetFrameManaBar , 0, 0)

PetFrameHealthBar.TextString:SetPoint("CENTER", PetFrameHealthBar, "CENTER", -2, 0)
PetFrameManaBar.TextString:SetPoint("CENTER", PetFrameManaBar, "CENTER", -2, -2)

for _, frame in pairs( { TargetFrameHealthBar, TargetFrameManaBar, PlayerFrameManaBar, PetFrameHealthBar }) do
    frame.TextString:SetFontObject("GameFontWhite")
    frame.TextString:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
    frame.TextString:SetHeight(32)
end

for _, frame in pairs( { PetFrameHealthBar, PetFrameManaBar }) do
    frame.TextString:SetFontObject("GameFontWhite") 
    frame.TextString:SetFont(STANDARD_TEXT_FONT, 9, "OUTLINE")
    frame.TextString:SetHeight(32)
    frame.TextString:SetJustifyH("LEFT")
end

local HookTextStatusBar_UpdateTextString = TextStatusBar_UpdateTextString
function TextStatusBar_UpdateTextString(sb)
    if not sb then sb = this end

    HookTextStatusBar_UpdateTextString(sb)
    local string = sb.TextString

    if string and sb.unit then

      sb.lockShow = 42
      sb:Show()

      local min, max = sb:GetMinMaxValues()
      local cur = sb:GetValue()
      local percent = max > 0 and floor(cur/max*100) or 0

      if cur == percent and strfind(sb:GetName(), "Health") then
        string:SetText(percent .. "%")
      elseif sb:GetName() == "TargetFrameHealthBar" and cur < max then
        string:SetText((cur) .. " - " .. percent .. "%")
      else
        string:SetText((cur))
      end

      if max == 0 then
        string:Hide()
        string:SetText("")
      elseif sb.unit == "target" and UnitIsDead("target") then
        string:Hide()
        string:SetText("")
      elseif sb.unit == "target" and UnitIsGhost("target") then
        string:Hide()
        string:SetText("")
      else
        string:Show()
      end
    end
end