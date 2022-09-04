local name,ZGV = ...
local GearFinder = ZGV.ItemScore.GearFinder

GearFinder.PAST_DUNGEONS_LIMIT = 30 -- how many levels can user be above previous expansion cap before we start ignoring its dungeon
GearFinder.FUTURE_DUNGEONS_LIMIT = 5 -- how many levels to look ahead for future upgrades

function GearFinder:Initialise()
	GearFinder:CreateMainFrame()

	GearFinder.MainFrame:SetScript("OnHide",function() 
		CharacterNameText:Show()
		CharacterFramePortrait:Show()
		CharacterFrameCloseButton:Show()
	end)
end

local L = ZGV.L
local G = _G
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local CHAIN = ZGV.ChainCall
local ui = ZGV.UI
local SkinData = ui.SkinData

local tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop=tinsert,tremove,print,ipairs,pairs,wipe,debugprofilestop
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted

local ItemScore = ZGV.ItemScore

local PAST_DUNGEONS_LIMIT = 30 -- how many levels can user be above min level before we start ignoring its dungeon
local FUTURE_DUNGEONS_LIMIT = 5 -- how many levels to look ahead for future upgrades

-- support function for character frame system tab creation
local function OnNonZygorClick()
	if GearFinder.MainFrame:IsVisible() then
		CharacterNameText:Show()
		CharacterFramePortrait:Show()
		CharacterFrameCloseButton:Show()
		GearFinder.MainFrame:Hide()
	end
end

function GearFinder:AttachFrame()
	self.PaperDollButtonFrame = ZGV.ChainCall(ZGV.CreateFrameWithBG("FRAME",nil,PaperDollFrame))
		:SetPoint("TOPRIGHT", PaperDollFrame, "TOPRIGHT", -25, -42)
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:Show()
	.__END

	self.PaperDollButton = ZGV.ChainCall(ZGV.CreateFrameWithBG("Button", nil , self.PaperDollButtonFrame))
		:SetSize(20,20)
		:SetPoint("TOPLEFT", self.PaperDollButtonFrame, "TOPLEFT", 5, -5)
		:SetBackdrop({bgFile=ZGV.DIR.."\\Skins\\zglogo-back"})
		:SetNormalTexture(ZGV.DIR.."\\Skins\\zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() 
			GearFinder:ShowFinder()	
		end)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_TOP") 
			:SetText("Toggle Zygor Gear Finder") 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:Show()
	.__END
	self.PaperDollButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)

end

function GearFinder:UpdateSystemTab()
	if ZGV.db.profile.autogear then
		GearFinder.PaperDollButtonFrame:Show()
	else
		GearFinder.PaperDollButtonFrame:Hide()
		GearFinder.MainFrame:Hide()
	end
end

function GearFinder:ShowFinder()
	if ZygorGearFinder:IsVisible() then GearFinder.MainFrame:Hide() return end
	if not GearFinder.HookedChar then
		ItemScore:Hook("CharacterFrameTab_OnClick", OnNonZygorClick, true)
		GearFinder.HookedChar = true
	end

	CharacterNameText:Hide()
	CharacterFramePortrait:Hide()
	CharacterFrameCloseButton:Hide()
	PaperDollFrame:Hide()

	for i=1,CharacterFrame.numTabs do
		PanelTemplates_DeselectTab(_G["CharacterFrameTab"..i])
	end

	ZygorGearFinder:Show()
	GearFinder:ScoreDungeonItems()
end