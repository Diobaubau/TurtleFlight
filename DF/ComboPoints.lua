----------------------------------------------------------------------------------------------------
-- Rogue Focus: Core
----------------------------------------------------------------------------------------------------

ComboFrame:ClearAllPoints()
ComboFrame:Hide()


local _G = getfenv(0)

RogueFocus = {
	Class = "",
	Registered = false
}

local RogueFocusFrames = {}
local RogueFocusStealth = {
	["Interface\\Icons\\Ability_Stealth"] = true,
	["Interface\\Icons\\Ability_Ambush"] = true,
	["Interface\\Icons\\ability_druid_prowl"] = true
}


----------------------------------------------------------------------------------------------------
-- Widgets Handlers
----------------------------------------------------------------------------------------------------
function RogueFocus:OnLoad()
	localizedClass, RogueFocus.Class = UnitClass("player")
	RogueFocus.Registered = RogueFocus:RegisterEvents()
	RogueFocus:Toggle()
end

function RogueFocus:OnEvent(eventArg)
	if(not RogueFocus.Registered) then return end
	if(eventArg == "VARIABLES_LOADED") then

		if(RogueFocus.Registered) then
			-- Combo
			local Frame
			for i = 1, 5, 1 do
				Frame = _G["RogueFocusCombo"..i]
				Frame:SetStatusBarColor(1, 0, 0)
				Frame:SetMinMaxValues(0, 1)
				Frame:SetValue(0)
			end
		end

	elseif (eventArg == "PLAYER_COMBO_POINTS") then
		RogueFocus:UpdateComboBar()
	end

	COMBOFRAME_FADE_IN = 0.4;
	COMBO_FRAME_LAST_NUM_POINTS = 0;

	-- FadeInFrame
	local comboPoints = GetComboPoints();

	if ( comboPoints > 0 ) then
		if ( not RogueFocusFrame:IsVisible() ) then
			RogueFocusFrame:Show()
			UIFrameFadeIn(RogueFocusFrame, COMBOFRAME_FADE_IN)
		end
		return
	else
		RogueFocusFrame:Hide()
	end

	COMBO_FRAME_LAST_NUM_POINTS = comboPoints
end

----------------------------------------------------------------------------------------------------
-- Events Handlers
----------------------------------------------------------------------------------------------------
function RogueFocus:UpdateComboBar()
	local c = GetComboPoints()
	local comboBar = {0, 0, 0, 0, 0}
	local barColor = {[0] = {0.7, 0, 0}, {0.7, 0, 0}, {0.7, 0, 0}, {0.7, 0, 0}, {0.7, 0, 0}, {0.7, 0, 0}}
	local Frame
	for i = 1, c, 1 do
		comboBar[i] = 1
	end
	for i = 1, 5, 1 do
		Frame = _G["RogueFocusCombo"..i]
		Frame:SetStatusBarColor(barColor[c][1], barColor[c][2], barColor[c][3])
		Frame:SetValue(comboBar[i])
	end
end

function RogueFocus:Toggle()
	-- first of all: is he a rogue or a druid cat? No? HIDE!
	if (not(RogueFocus:IsSupported())) then
		RogueFocusFrame:Hide()
	end
end

----------------------------------------------------------------------------------------------------
-- Main
----------------------------------------------------------------------------------------------------
function RogueFocus:RegisterEvents()
	if(RogueFocus.Class ~= "ROGUE" and RogueFocus.Class ~= "DRUID") then
		this:UnregisterEvent("PLAYER_COMBO_POINTS")
		this:UnregisterEvent("PLAYER_AURAS_CHANGED")
		this:UnregisterEvent("PLAYER_ENTERING_WORLD")
		this:UnregisterEvent("PLAYER_LEAVE_COMBAT")
		this:UnregisterEvent("PLAYER_TARGET_CHANGED")
		this:UnregisterEvent("PLAYER_DEAD")
		this:UnregisterEvent("UNIT_AURA")
		this:UnregisterEvent("UPDATE_SHAPESHIFT_FORMS")
		this:UnregisterEvent("UPDATE_BONUS_ACTIONBAR")
		this:UnregisterEvent("VARIABLES_LOADED")
		return false
	else
		this:RegisterEvent("PLAYER_COMBO_POINTS")
		this:RegisterEvent("PLAYER_AURAS_CHANGED")
		this:RegisterEvent("PLAYER_ENTERING_WORLD")
		this:RegisterEvent("PLAYER_LEAVE_COMBAT")
		this:RegisterEvent("PLAYER_TARGET_CHANGED")
		this:RegisterEvent("PLAYER_DEAD")
		this:RegisterEvent("UNIT_AURA")
		this:RegisterEvent("UPDATE_SHAPESHIFT_FORMS")
		this:RegisterEvent("UPDATE_BONUS_ACTIONBAR")
		this:RegisterEvent("VARIABLES_LOADED")
		return true
	end
end

function RogueFocus:IsSupported()
 	if ( UnitPowerType("player") == 3 ) then
   	return true
	else
		return false
	end
end

function RogueFocus:inStealth()
	local i = 0
	while GetPlayerBuffTexture(i) ~= nil do
		if RogueFocusStealth[(GetPlayerBuffTexture(i))] == true then
			return true
		else
			i = i + 1
		end
	end
	return false
end

local function points()
    local media = "Interface\\Addons\\DF\\media\\"
    local points = GetComboPoints("player", "target")
    PlaySoundFile(media..points..".mp3")
end

local events = CreateFrame("Frame", nil, UIParent)
events:RegisterEvent("PLAYER_COMBO_POINTS")

events:SetScript("OnEvent", function()
    points()
end)