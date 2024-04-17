--CastingBarFrame
--CastingBarBorder
--CastingBarSpark
--CastingBarFlash
--CastingBarText

local castbar = CastingBarFrame
castbar:SetStatusBarTexture("Interface\\AddOns\\DragonFlightUI\\img\\Castbar\\CastingBarStandard2")
castbar:SetHeight(16)

local castbartext = CastingBarText
--castbartext:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
castbartext:ClearAllPoints()
castbartext:SetPoint("CENTER", castbar, "CENTER", 0, -15)
castbartext:SetTextColor(1,1,1)

local border = CastingBarBorder
border:SetTexture("Interface\\AddOns\\DragonFlightUI\\img\\Castbar\\CastingBarFrame2")
-- Set the border size to match the castbar
border:SetWidth(castbar:GetWidth() + 5)
border:SetHeight(castbar:GetHeight()+ 5)
border:ClearAllPoints()
border:SetPoint("CENTER", castbar, "CENTER", 0, 0)

local spark = CastingBarSpark
spark:SetTexture("Interface\\AddOns\\DragonFlightUI\\img\\Castbar\\CastingBarSpark")
spark:ClearAllPoints()
spark:SetPoint("CENTER", castbar, "CENTER", 0,0)
spark:SetWidth(10)
spark:SetHeight(22)

local flash = CastingBarFlash
flash:ClearAllPoints()
flash:Hide()

function CastingBarFrame_OnEvent()
	if ( event == "SPELLCAST_START" ) then
		CastingBarFrameStatusBar:SetStatusBarColor(1.0, 1.0, 0.0);
		CastingBarSpark:Show();
		this.startTime = GetTime();
		this.maxValue = this.startTime + (arg2 / 1000);
		CastingBarFrameStatusBar:SetMinMaxValues(this.startTime, this.maxValue);
		CastingBarFrameStatusBar:SetValue(this.startTime);
		CastingBarText:SetText(arg1);
		this:SetAlpha(1.0);
		this.holdTime = 0;
		this.casting = 1;
		this.fadeOut = nil;
		this:Show();

		this.mode = "casting";
	elseif ( event == "SPELLCAST_STOP" ) then
		if ( not this:IsVisible() ) then
			this:Hide();
		end
		if ( this:IsShown() ) then
			CastingBarFrameStatusBar:SetValue(this.maxValue);
			CastingBarFrameStatusBar:SetStatusBarColor(0.0, 1.0, 0.0);
			CastingBarSpark:Hide();
			CastingBarFlash:SetAlpha(0.0);
			CastingBarFlash:Show();
			this.casting = nil;
			this.flash = 1;
			this.fadeOut = 1;

			this.mode = "flash";
		end
	elseif ( event == "SPELLCAST_FAILED" or event == "SPELLCAST_INTERRUPTED" ) then
		if ( this:IsShown() ) then
			CastingBarFrameStatusBar:SetValue(this.maxValue);
			CastingBarFrameStatusBar:SetStatusBarColor(1.0, 0.0, 0.0);
			CastingBarSpark:Hide();
			if ( event == "SPELLCAST_FAILED" ) then
				CastingBarText:SetText(FAILED);
			else
				CastingBarText:SetText(INTERRUPTED);
			end
			this.casting = nil;
			this.fadeOut = 1;
			this.holdTime = GetTime() + CASTING_BAR_HOLD_TIME;
		end
	elseif ( event == "SPELLCAST_DELAYED" ) then
		if( this:IsShown() ) then
			this.startTime = this.startTime + (arg1 / 1000);
			this.maxValue = this.maxValue + (arg1 / 1000);
			CastingBarFrameStatusBar:SetMinMaxValues(this.startTime, this.maxValue);
		end
	elseif ( event == "SPELLCAST_CHANNEL_START" ) then
		CastingBarFrameStatusBar:SetStatusBarColor(1.0, 0.7, 0.0);
		CastingBarSpark:Show();
		this.maxValue = 1;
		this.startTime = GetTime();
		this.endTime = this.startTime + (arg1 / 1000);
		this.duration = arg1 / 1000;
		CastingBarFrameStatusBar:SetMinMaxValues(this.startTime, this.endTime);
		CastingBarFrameStatusBar:SetValue(this.endTime);
		CastingBarText:SetText(arg2);
		this:SetAlpha(1.0);
		this.holdTime = 0;
		this.casting = nil;
		this.channeling = 1;
		this.fadeOut = nil;
		this:Show();
	elseif ( event == "SPELLCAST_CHANNEL_UPDATE" ) then
		if ( arg1 == 0 ) then
			this.channeling = nil;
		elseif ( this:IsShown() ) then
			local origDuration = this.endTime - this.startTime
			this.endTime = GetTime() + (arg1 / 1000)
			this.startTime = this.endTime - origDuration
			--this.endTime = this.startTime + (arg1 / 1000);
			CastingBarFrameStatusBar:SetMinMaxValues(this.startTime, this.endTime);
		end
	end
end