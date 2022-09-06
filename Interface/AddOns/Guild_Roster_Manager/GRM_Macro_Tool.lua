-- Tool to use GRM data to build pre-made macros based on certain filters to handle promotions/demotions/kicking of players. This is due to the fact that the API to do these actions was restricted in patch 7.3, effectively breaking many guild leadership and management addons. This is an attempt to help officers and Guild Leaders' lives out a little bit through creating quick rebuilding macros.

-- CREATING FRAMES -- 
-- Core Frame
GRM_UI.GRM_ToolCoreFrame = CreateFrame( "Frame" , "GRM_ToolCoreFrame" , UIParent , "TranslucentFrameTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame = CreateFrame( "Frame" , "GRM_ToolIgnoreListFrame" , UIParent , "TranslucentFrameTemplate" );

-- Core Frame Close Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameCloseButton = CreateFrame( "Button" , "GRM_ToolCoreFrameCloseButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelCloseButton" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameCloseButton:SetPoint( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame , 3 , 3 );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreListFrameCloseButton = CreateFrame( "Button" , "GRM_ToolIgnoreListFrameCloseButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelCloseButton" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreListFrameCloseButton:SetPoint( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , 3 , 3 );

-- Core Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton = CreateFrame( "Button" , "GRM_ToolBuildMacroButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:CreateFontString ( "GRM_ToolBuildMacroButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton = CreateFrame( "Button" , "GRM_ToolViewSafeListButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:CreateFontString ( "GRM_ToolViewSafeListButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Macro Control Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton = CreateFrame( "Button" , "GRM_ToolClearSelectedMacrodNamesButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:CreateFontString ( "GRM_ToolClearSelectedMacrodNamesButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton = CreateFrame( "Button" , "GRM_ToolResetSelectedMacroNamesButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:CreateFontString ( "GRM_ToolResetSelectedMacroNamesButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Reset Settings
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton = CreateFrame( "Button" , "GRM_ToolResetSettingsButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:CreateFontString ( "GRM_ToolResetSettingsButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Core Ignore List Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton = CreateFrame( "Button" , "GRM_ToolIgnoreClearSelectionButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:CreateFontString ( "GRM_ToolIgnoreClearSelectionButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton = CreateFrame( "Button" , "GRM_ToolIgnoreResetSelectedNamesButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:CreateFontString ( "GRM_ToolIgnoreResetSelectedNamesButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton = CreateFrame( "Button" , "GRM_ToiolIgnoreRemoveAllButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:CreateFontString ( "GRM_ToolIgnoreRemoveAllButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Text
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText1" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText3" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText4" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText5" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText6" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText7" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText8" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameText9" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions1" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions3" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions1_K" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions2_P" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTextPermissions3_D" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameKickRulesText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalQueText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalQueText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalIgnoredText" , "OVERLAY" , "GameFontNormalTiny" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2 = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameTotalIgnoredText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameRankRestrictionText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameDestinationRankHeaderText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickQueText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameKickQueText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFramePromoteQueText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFramePromoteQueText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDemoteQueText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_ToolCoreFrameDemoteQueText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText = GRM_UI.GRM_ToolCoreFrame:CreateFontString ( "GRM_TooCoreFrameLimitationText" , "OVERLAY" , "GameFontNormalTiny" );

-- Optional spam control
GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton = CreateFrame ( "CheckButton" , "GRM_MacroToolDisableLogSpamCheckbutton" , GRM_UI.GRM_ToolCoreFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbuttonText = GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton:CreateFontString ( "GRM_MacroToolDisableLogSpamCheckbuttonText" , "OVERLAY" , "GameFontNormalSmall" );

-- Safe Details
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText1" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText2" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText3" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_ToolCoreIgnoreFrameText4" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolCoreIgnoreCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:CreateFontString ( "GRM_ToolCoreIgnoreCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_IgnoreListRuleTypeText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:CreateFontString ( "GRM_IgnoreListRuleTypeText" , "OVERLAY" , "GameFontNormalSmall" );

-- Tabs
GRM_UI.GRM_ToolCoreFrame.GRM_KickTab = CreateFrame ( "Button" , "GRM_KickTab" , GRM_UI.GRM_ToolCoreFrame , "TabButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText = GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:CreateFontString ( "GRM_KickTabText" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab = CreateFrame ( "Button" , "GRM_PromoTab" , GRM_UI.GRM_ToolCoreFrame , "TabButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText = GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:CreateFontString ( "GRM_PromoTabText" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab = CreateFrame ( "Button" , "GRM_DemoteTab" , GRM_UI.GRM_ToolCoreFrame , "TabButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText = GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:CreateFontString ( "GRM_DemoteTabText" , "OVERLAY" , "GameFontNormal" );

-- Macro'd Scroll Frame
-- SCROLL FRAME
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolMacrodScrollFrame" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolMacrodScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolMacrodScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolMacrodScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , "UIPanelScrollBarTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:Hide();

-- Queued Scroll Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolQueuedScrollFrame" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolQueuedScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolQueuedScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolQueuedScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , "UIPanelScrollBarTemplate" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:Hide();

-- Ignored Scroll Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolIgnoredScrollFrame" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolIgnoredScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolIgnoredScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolIgnoredScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , "UIPanelScrollBarTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:Hide();

-- Rules Scroll Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame = CreateFrame ( "ScrollFrame" , "GRM_ToolRulesScrollFrame" , GRM_UI.GRM_ToolCoreFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame = CreateFrame ( "Frame" , "GRM_ToolRulesScrollBorderFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
-- CONTENT FRAME (Child Frame)
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame = CreateFrame ( "Frame" , "GRM_ToolRulesScrollChildFrame" );
-- SLIDER
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder = CreateFrame ( "Slider" , "GRM_ToolRulesScrollFrameSilder" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , "UIPanelScrollBarTemplate" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:Hide();

----------------------
-- Custom Rules ------
----------------------

GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton = CreateFrame( "Button" , "GRM_CustomRuleAddButton" , GRM_UI.GRM_ToolCoreFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:CreateFontString ( "GRM_CustomRuleAddButtonText" , "OVERLAY" , "GameFontNormalTiny" );

-- Custom Rules Popup Frame
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame = CreateFrame ( "Frame" , "GRM_ToolCustomRulesFrame" , GRM_UI.GRM_ToolCoreFrame , "TranslucentFrameTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();

-- Rank Custom Rules
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 = CreateFrame ( "CheckButton" , "GRM_ToolRulesRankRadialButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:CreateFontString ( "GRM_ToolRulesRankRadialButton1Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 = CreateFrame ( "CheckButton" , "GRM_ToolRulesRankRadialButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:CreateFontString ( "GRM_ToolRulesRankRadialButton2Text" , "OVERLAY" , "GameFontNormalSmall" );

-- Level Custom Rules
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolCustomRulesLevelRangeText" , "OVERLAY" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "GameFontNormalSmall" );

GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesLevelRadialButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:CreateFontString ( "GRM_ToolCustomRulesLevelRadialButton1Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2 = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesLevelRadialButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:CreateFontString ( "GRM_ToolCustomRulesLevelRadialButton2Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolCustomRulesLevelText" , "OVERLAY" , "GameFontNormalSmall" )
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox = CreateFrame( "EditBox" , "GRM_CustomRuleLevelStartEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:ClearFocus();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox = CreateFrame( "EditBox" , "GRM_CustomRuleLevelStopEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:ClearFocus();

-- Class Custom Rules
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesClassCheckBox = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesClassCheckBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesClassCheckBoxText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesClassCheckBox:CreateFontString ( "GRM_ToolCustomRulesClassCheckBoxText" , "OVERLAY" , "GameFontNormalSmall" );

-- Custom Rules General Fontstrings
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolRuleNumberText" , "OVERLAY" , "GameFontNormal" );

GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox = CreateFrame( "EditBox" , "GRM_CustomRuleNameEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:ClearFocus();

-- Confirm and Cancel Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton = CreateFrame( "Button" , "GRM_ToolCustomRulesConfirmButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:CreateFontString ( "GRM_ToolCustomRulesConfirmButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton = CreateFrame( "Button" , "GRM_ToolCustomRulesCancelButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIPanelButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:CreateFontString ( "GRM_ToolCustomRulesCancelButtonText" , "OVERLAY" , "GameFontNormalTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesFrameCloseButton = CreateFrame( "Button" , "GRM_ToolCustomRulesFrameCloseButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIPanelCloseButton" );
-- Custom Rule Filters
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolRecommendKickCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:CreateFontString ( "GRM_ToolRecommendKickCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox = CreateFrame( "EditBox" , "GRM_RosterKickRecommendEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:ClearFocus();
-- Day or Month selection
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected = CreateFrame ( "Frame" , "GRM_TimeScaleSelected" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:CreateFontString ( "GRM_TimeScaleSelectedText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu = CreateFrame ( "Frame" , "GRM_TimeScaleDropDownMenu" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
-- Alts control filter
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed = CreateFrame ( "CheckButton" , "GRM_ToolAltsOfflineTimed" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:CreateFontString ( "GRM_ToolAltsOfflineTimedText" , "OVERLAY" , "GameFontNormalSmall" );

-- Apply Rules to Control
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ApplyRulesText" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1 = CreateFrame ( "CheckButton" , "GRM_ApplyRulesRadioButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:CreateFontString ( "GRM_ApplyRulesRadioButton1Text" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2 = CreateFrame ( "CheckButton" , "GRM_ApplyRulesRadioButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:CreateFontString ( "GRM_ApplyRulesRadioButton2Text" , "OVERLAY" , "GameFontNormal" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3 = CreateFrame ( "CheckButton" , "GRM_ApplyRulesRadioButton3" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:CreateFontString ( "GRM_ApplyRulesRadioButton3Text" , "OVERLAY" , "GameFontNormal" );

-- Kick even if active filter
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton = CreateFrame ( "CheckButton" , "GRM_KickEvenIfActiveButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_KickEvenIfActiveButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox = CreateFrame( "EditBox" , "GRM_KickEvenIfActiveEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:ClearFocus();
-- Day or Month selection even if active
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected = CreateFrame ( "Frame" , "GRM_KickEvenIfActiveTimeSelected" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:CreateFontString ( "GRM_KickEvenIfActiveTimeSelectedText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu = CreateFrame ( "Frame" , "GRM_KickEvenIfActiveTimeMenu" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();

-- General use Right click button
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu = CreateFrame ( "Frame" , "GRM_ToolContextMenu" , GRM_UI.GRM_ToolCoreFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:CreateFontString ( "GRM_ToolContextMenuText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:CreateFontString ( "GRM_ToolContextMenuDividerText" , "OVERLAY" , "GameFontWhiteTiny" );
-- Context Dropdown Buttons
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1 = CreateFrame ( "Button" , "GRM_ContextButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:CreateFontString ( "GRM_ContextButton1Text" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2 = CreateFrame ( "Button" , "GRM_ContextButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:CreateFontString ( "GRM_ContextButton2Text" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton = CreateFrame ( "Button" , "GRM_ToolContextMenuCancelButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:CreateFontString ( "GRM_ToolContextMenuCancelButtonText" , "OVERLAY" , "GameFontWhiteTiny" );

-- Custom Note pattern match
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolCompareStringCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:CreateFontString ( "GRM_ToolCompareStringCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolEmptyCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:CreateFontString ( "GRM_ToolEmptyCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolPublicNoteCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:CreateFontString ( "GRM_ToolPublicNoteCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolOfficerCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:CreateFontString ( "GRM_ToolOfficerCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton = CreateFrame ( "CheckButton" , "GRM_ToolCustomCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:CreateFontString ( "GRM_ToolCustomCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox = CreateFrame( "EditBox" , "GRM_NoteSearchEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "InputBoxTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:ClearFocus();

-- Guild Reputation RULES
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton = CreateFrame ( "CheckButton" , "GRM_GuildRepRuleCheckButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:CreateFontString ( "GRM_GuildRepRuleCheckButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:CreateFontString ( "GRM_GuildRepRuleCheckButtonTextRetailOnlyText" , "OVERLAY" , "GameFontNormalSmall" );
-- Operator Selection
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected = CreateFrame ( "Frame" , "GRM_GuildRepSymbolSelected" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:CreateFontString ( "GRM_GuildRepSymbolSelectedText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu = CreateFrame ( "Frame" , "GRM_GuildRepSymbolDropDownMenu" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
-- Reputation Selection
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected = CreateFrame ( "Frame" , "GRM_GuildRepRanksSelected" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:CreateFontString ( "GRM_GuildRepRanksSelectedText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu = CreateFrame ( "Frame" , "GRM_GuildRepRanksDropDownMenu" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();

-- Log Custom Message
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton = CreateFrame ( "CheckButton" , "GRM_CustomLogMessageButton" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame = CreateFrame ( "Frame" , "GRM_CustomLogMessageEditBoxFrame" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:CreateFontString ( "GRM_CustomLogMessageButtonText" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_CustomLogMessageEditBoxCount" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_CustomLogMessageEditBoxTip" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox = CreateFrame( "EditBox" , "GRM_CustomLogMessageEditBox" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:ClearFocus();

-- PROMOTION/DEMOTION Specific
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1 = CreateFrame ( "CheckButton" , "GRM_ApplyRegardlessActivityRadialButton1" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:CreateFontString ( "GRM_ApplyRegardlessActivityRadialButton1Text" , "OVERLAY" , "GameFontNormalSmall" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2 = CreateFrame ( "CheckButton" , "GRM_ApplyRegardlessActivityRadialButton2" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "UIRadioButtonTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:CreateFontString ( "GRM_ApplyRegardlessActivityRadialButton2Text" , "OVERLAY" , "GameFontNormalSmall" );
-- Dropdown Rank Selection with line
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected = CreateFrame ( "Frame" , "GRM_DestinationRankSelected" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:CreateFontString ( "GRM_DestinationRankSelectedText" , "OVERLAY" , "GameFontWhiteTiny" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu = CreateFrame ( "Frame" , "GRM_DestinationRankDropdownMenu" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected , BackdropTemplateMixin and "BackdropTemplate" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:Hide();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_RankDestinationText" , "OVERLAY" , "GameFontNormalSmall" );



-- Suggestion String
GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:CreateFontString ( "GRM_ToolSuggestIdeasText" , "OVERLAY" , "GameFontNormalSmall" );

-----------------------------
--- END OF FRAME CREATION ---
-----------------------------

-- Global Locals
local repOperators = { "<" , "=" , ">" };

GRM_G.countAction = { 0 , 0 , 0 };  -- time of kick, promote , demote last counts
GRM_G.counts = { 0 , 0 , 0 };       -- count values of each

-- INITIALIZING FRAME VALUES
GRM_UI.GRM_ToolCoreFrame:ClearAllPoints();
GRM_UI.GRM_ToolCoreFrame:SetPoint ( "CENTER" , UIParent );
GRM_UI.GRM_ToolCoreFrame:SetFrameStrata ( "MEDIUM" );
GRM_UI.GRM_ToolCoreFrame:SetSize ( 1200 , 485 );
GRM_UI.GRM_ToolCoreFrame:EnableMouse ( true );
GRM_UI.GRM_ToolCoreFrame:SetMovable ( true );
GRM_UI.GRM_ToolCoreFrame:SetToplevel ( true );
GRM_UI.GRM_ToolCoreFrame:RegisterForDrag ( "LeftButton" );
GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnDragStart" , GRM_UI.GRM_ToolCoreFrame.StartMoving );
GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnDragStop" , function()
    GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
    GRM_UI.SaveToolPosition();
end);

GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:ClearAllPoints();
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetPoint ( "CENTER" , UIParent );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetFrameStrata ( "MEDIUM" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetSize ( 475 , 435 );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:EnableMouse ( true );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetMovable ( true );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetToplevel ( true );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:RegisterForDrag ( "LeftButton" );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnDragStart" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.StartMoving );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnDragStop" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.StopMovingOrSizing );
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries = {};
GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Hide();

-- Global Variables for the frames
GRM_UI.GRM_ToolCoreFrame.IsInitialized = false;
GRM_UI.GRM_ToolCoreFrame.MacroEntries = {};
GRM_UI.GRM_ToolCoreFrame.QueuedEntries = {};
GRM_UI.GRM_ToolCoreFrame.ValidatedNames = {};
GRM_UI.GRM_ToolCoreFrame.TabPosition = 1;           -- 1 = kick , 2 = promote , 3 = demote
GRM_UI.GRM_ToolCoreFrame.Timer = 0;
GRM_UI.GRM_ToolCoreFrame.Safe = {};                 -- List of safe people for whatever the reason.
GRM_UI.GRM_ToolCoreFrame.MacroSuccess = true;       -- For manually scanning roster when validating macro success

-- Mass Kick, Promote, and Demote tool
GRM_UI.ruleTypeEnum = { [1] = "kickRules" , [2] = "promoteRules" , [3] = "demoteRules" };
GRM_UI.ruleTypeEnum2 = { [1] = "kick" , [2] = "promote" , [3] = "demote" };
GRM_UI.ruleTypeEnum3 = { [1] = GRM.L ( "Kick" ) , [2] = GRM.L ( "Promote" ) , [3] = GRM.L ( "Demote" ) };

GRM_UI.GRM_ToolCoreFrame:Hide();                    -- Default load position is hidden

-- Method:          GRM_UI.LoadToolFrames ( boolean )
-- What it Does:    Holds the load of all frames unless "OnShow" of the GRM_ToolCoreFrame for compartmentalized rebuilding.
-- Purpose:         More efficient resource use, also, a need to recall and reload the frames if on a language or font/font size change.
GRM_UI.LoadToolFrames = function ( isManual )

    GRM_UI.GRM_ToolCoreFrame.IsInitialized = true;

    -- Only load this once...
    if not isManual then 
        -- Use ESC key to exit window.
        GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then

                    if GRM.IsRuleHighlighted() then
                        GRM_UI.RestoreTooltipScale();
                        GameTooltip:Hide();
                        GRM.ClearRuleHighlights();

                    elseif GRM.IsAnyMacroHighlighted() then
                        GRM_UI.RestoreTooltipScale();
                        GameTooltip:Hide();
                        GRM.ResetToolMacrodHighlights();
                        GRM.SetMacroButtonText();

                    else
                        self:SetPropagateKeyboardInput ( false );
                        self:Hide();
                    end
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                if GRM.IsAnyIgnoredHighlighted() then
                    GRM.ResetIgnoredHighlights();
                    GRM.SetIgnoredButtonText();
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                else
                    self:SetPropagateKeyboardInput ( false );
                    self:Hide();
                end
            end
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:SetScript ( "OnShow" , function()
            GRM.TriggerIgnoredQueuedWindowRefresh();
        end);

        GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnUpdate" , function ( self , elapsed )
            self.Timer = self.Timer + elapsed;
            if self.Timer >= 0.025 then
                if GRM_G.HK then
                    if MacroFrame:IsVisible() then          -- this needs to be hidden or the script won't update the macros.a
                        MacroFrameCloseButton:Click();
                    end
                    GRM_G.HK = false;
                    GRM.PurgeMacrodNames();

                    -- Need to validate the names are update now...
                    if GRM.IsMacroActionComplete() then
                        C_Timer.After ( 1 , GRM.ValidateMacroRecordingSuccess );
                    end
                    
                    GRM.BuildQueuedScrollFrame ( true , false , false );
                    GRM.BuildMacrodScrollFrame ( true , true );
                    GRM_G.timeDelayValue = time(); -- resetting delay
                    GRM.GuildRoster();

                    if not GRM_G.AuditWindowRefresh and GRM_UI.GRM_RosterChangeLogFrame.GRM_AuditFrame:IsVisible() then
                        GRM_G.AuditWindowRefresh = true;

                        -- Delay action
                        C_Timer.After ( 2 , function()
                            GRM.RefreshAuditFrames ( true , true );
                            GRM_G.AuditWindowRefresh = false;
                        end);
                    end
                end
                self.Timer = 0;
            end
        end);

        GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnHide" , function()
            -- Clear the macro!
            GRM.CreateMacro ( "" , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , GRM_G.MacroHotKey );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
            GRM.ScanRecommendationsList();
        end);

        -- Text
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "TOPLEFT" , 17 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetWidth ( 146 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1 , "RIGHT" , 6 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetWidth ( 85 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:SetPoint ( "BOTTOMRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "TOPRIGHT" , -10 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:SetJustifyH ( "RIGHT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:SetWidth ( 110 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOMRIGHT" , -10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:Hide();

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "TOPLEFT" , 17 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetWidth ( 146 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4 , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetWidth ( 101 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOMLEFT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetTextColor ( 0.0 , 0.8 , 1.0 , 1.0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOM" , 0 , -20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetWidth ( 320 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetSpacing ( 1 )

        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "TOPRIGHT" , 2 , -19 );
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetWidth ( 160 );
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetSpacing ( 1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetTextColor ( 1 , 0 , 0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "TOP" , 0 , 17 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetJustifyH ( "CENTER" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "TOP" , 0 , 17 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOMLEFT" , -20 , -35 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOMRIGHT" , 18 , -35 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText , "BOTTOMLEFT" , 0 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOMRIGHT" , 18 , -49 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickQueText:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , "TOP" , 0 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFramePromoteQueText:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , "TOP" , 0 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDemoteQueText:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab , "TOP" , 0 , 2 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton , "BOTTOM" , 0 , -12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetTextColor ( 0.0 , 0.8 , 1.0 , 1.0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame , "TOPLEFT" , 110 , -35 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetWidth ( 150 );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetTextColor ( 0 , 0.77 , 0.063 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1 , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetTextColor ( 0 , 0.77 , 0.063 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2 , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetTextColor ( 0 , 0.77 , 0.063 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1 , "BOTTOM" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetTextColor ( 0.64 , 0.102 , 0.102 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetText ( "____________" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2 , "BOTTOM" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetTextColor ( 0.64 , 0.102 , 0.102 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetText ( "____________" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3 , "BOTTOM" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetWidth ( 150 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetTextColor ( 0.64 , 0.102 , 0.102 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetText ( "____________" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        -- Safe List Text
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "TOPLEFT" , 17 , -2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetWidth ( 135 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1 , "RIGHT" , 6 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetWidth ( 101 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetWordWrap ( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TOP" , 0 , -15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetJustifyH ( "CENTER" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_IgnoreListRuleTypeText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TOPLEFT" , 15 , -15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_IgnoreListRuleTypeText:SetTextColor ( 1 , 0 , 0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "BOTTOMLEFT" , 13 , 13 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:SetScript ( "OnClick", function()
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:GetChecked() then
                GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter = true;
                GRM.TriggerIgnoredQueuedWindowRefresh();
            else
                GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter = false;
                GRM.TriggerIgnoredQueuedWindowRefresh();
            end
            GRM.SyncSettings();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton:SetPoint ( "RIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbuttonText , "LEFT" , - 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbuttonText:SetPoint ( "BOTTOMRIGHT" , GRM_UI.GRM_ToolCoreFrame , "BOTTOMRIGHT" , -12 , 14 );
        GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton:SetScript ( "OnClick", function( self , button )
            if button == "LeftButton" then
                if self:GetChecked() then
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].disableMacroToolLogSpam = true;                 
                else
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].disableMacroToolLogSpam = false;
                end
                GRM.SyncSettings();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton , "TOP" , 0 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                
                local result , count = GRM.IsAnyIgnoredHighlighted();
                local msg = "";

                if result then
                    -- The action...
                    local confirmFunction = function()
                        GRM.RemoveHighlightedPlayersFromIgnoredList();  -- use popup confirm window!!!
                        if count > 1 then
                            msg = GRM.L ( "{num} players removed from the Ignored List" , nil , nil , count );
                        else
                            msg = GRM.L ( "{num} player was removed from Ignore List" , nil , nil , count );
                        end
                    end

                    if count == 1 then
                        GRM.SetConfirmationWindow ( confirmFunction , GRM.L ( "Really remove selected player from the ignore list?" ) );
                    else
                        GRM.SetConfirmationWindow ( confirmFunction , GRM.L ( "Really remove the {num} selected players from the ignore list?" , nil , nil , count ) );
                    end
                    
                else
                    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries == 0 then
                        local c = #( select ( 2 , GRM.GetSafePlayers ( true ) ) );
                        if c > 0 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
                            if c > 1 then
                                msg = GRM.L ( "There are no names to select. {num} players are filtered" , nil , nil , c );
                            else
                                msg = GRM.L ( "There are no names to select. 1 player is filtered" );
                            end
                        else
                            msg = GRM.L ( "There are no names currently selected to be removed from the Ignore List." );
                        end
                        
                    else
                        msg = GRM.L ( "There are currently no names to remove" );
                    end
                end

                if #msg > 0 then
                    GRM.Report ( msg );
                end

            end
        end);


        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "RIGHT" , 20 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local result = GRM.IsAnyIgnoredHighlighted();

                if result then
                    GRM.ResetIgnoredHighlights();
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                else
                    GRM.Report ( "Nothing to clear" );
                end

                GRM.SetIgnoredButtonText();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetScript ( "OnEnter" , function( self )
            if GRM.IsAnyIgnoredHighlighted() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Pressing the ESC key will also clear all lines" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton , "BOTTOM" , 0 , -20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                if GRM.IsAnyIgnored() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    GRM.SetConfirmationWindow ( GRM.ClearAllPlayersFromIgnoreList , GRM.L ( "Do you really wish to clear all players from the Ignore List?" ) );
                else
                    GRM.Report ( GRM.L ( "There are currently no players on the Ignore List" ) );
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetScript ( "OnEnter" , function( self )
            if not GRM.IsAnyIgnored() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "There are currently no players on the Ignore List" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);
        
        -- RULES
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:SetSize ( 175 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local validToOpen = true;

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
                    GRM_UI.ConfigureCustomRuleKickFrame ( false , nil );  -- Creating a new rule
                    if not CanGuildRemove() then
                        validToOpen = false;
                        GRM.Report ( GRM.L ( "Unable to remove players from the guild at current rank." ) .. " " .. GRM.L ( "Feature disabled." ) );
                    end

                elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    GRM_UI.ConfigureCustomRulePromoteFrame ( false , nil );  -- Creating a new rule
                    if not CanGuildPromote() then
                        validToOpen = false;
                        GRM.Report ( GRM.L ( "Unable to promote players within the guild at current rank." ) .. " " .. GRM.L ( "Feature disabled." ) );
                    end
                    
                elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                    GRM_UI.ConfigureCustomRulePromoteFrame ( false , nil );  -- Creating a new rule
                    if not CanGuildDemote() then
                        validToOpen = false;
                        GRM.Report ( GRM.L ( "Unable to demote players within the guild at current rank." ) .. " " .. GRM.L ( "Feature disabled." ) );
                    end

                end

                if validToOpen then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Show();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                    GRM.ClearRuleHighlights();
                end
            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetSpacing ( 1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetWidth ( 275 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetScript ( "OnClick", function()
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick = true;
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick = false;
            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3 , "BOTTOM" , -85 , -12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetWidth ( 150 );

        -- Buttons
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "BOTTOM" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:SetSize ( 200 , 30 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetWidth ( 195 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetWordWrap ( true );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton , "BOTTOM" , 0 , -4 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetSize ( 130 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetWordWrap ( true );
        GRM_UI.ScaleFontStringToObjectSize ( true , 130 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetScript ( "OnClick" , function( _ , button )
            if button == "LeftButton" then

                local resetSettings = function()
                    GRM.ResetDefaultSettings( 10 );
                end

                if IsShiftKeyDown() and IsControlKeyDown() then
                    resetSettings();
                else
                    GRM.SetConfirmationWindow ( resetSettings , GRM.L ( "Are you sure you want to reset all Macro Tool Rules and Settings?" ) .. "\n" .. GRM.L ( "This will also clear all of your saved rules." ) );
                end
            end
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetScript ( "OnEnter" , function ( self )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine ( GRM.L ( "Resets all Macro Tool Rules and Settings" ) );
            GameTooltip:AddLine( "|CFFE6CC7F" .. GRM.L ( "Ctrl-Shift-Click" ) .. "|r - " .. GRM.L ( "Resets ALL settings, not just the ones on this page" ) );
            GameTooltip:Show();
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButton:SetScript ( "OnLeave" , function ()
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "RIGHT" , 25 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local result , count = GRM.IsAnyMacroHighlighted();
                local msg = "";

                if result then
                    -- The action...
                    GRM.RemoveNamesFromMacroEntries();
                    if count > 1 then
                        msg = GRM.L ( "{num} players removed from the macro" , nil , nil , count );
                    else
                        msg = GRM.L ( "{num} player was removed from the macro" , nil , nil , count );
                    end
                else
                    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 0 then
                        msg = GRM.L ( "There are no names currently selected to be removed from the macro." );
                    else
                        if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
                            msg = GRM.L ( "The macro is not yet built. Please click the button to create the macro." );
                        else
                            msg = GRM.L ( "There are currently no names to add" );
                        end
                    end
                end

                if #msg > 0 then
                    GRM.Report ( msg );
                end
            end
        end);

        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetWidth ( 105 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetSpacing ( 0.5 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetScript ( "OnClick" , function( _ , button )
            if button == "LeftButton" then
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:Show();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            local countIgnored = GRM.GetSafePlayers();
            local result = "";

            if countIgnored > 0 then
                if countIgnored == 1 then
                    result = GRM.L ( "1 player is on the safe list." );
                else
                    result = GRM.L ( "{num} players are on the safe list." , nil , nil , countIgnored );
                end

                if #GRM_UI.GRM_ToolCoreFrame.Safe > 0 then
                    if #GRM_UI.GRM_ToolCoreFrame.Safe == 1 then
                        result = result .. " " .. GRM.L ( "1 action is being ignored." );
                    else
                        result = result .. " " .. GRM.L ( "{num} actions are being ignored." , nil , nil , #GRM_UI.GRM_ToolCoreFrame.Safe );
                    end
                else
                    result = result .. " " .. GRM.L ( "No current actions are being ignored" );
                end
            else
                result = GRM.L ( "No players are currently safe from recommendations" );
            end
            
            GameTooltip:AddLine ( result );
            GameTooltip:Show();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton , "BOTTOM" , 0 , -20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetSize ( 110 , 75 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetWidth ( 95 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetWordWrap ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetSpacing ( 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                local result = GRM.IsAnyMacroHighlighted();

                if result then
                    GRM.ResetToolMacrodHighlights();
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                else
                    GRM.Report ( "Nothing to clear" );
                end

                GRM.SetMacroButtonText();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetScript ( "OnEnter" , function( self )
            if GRM.IsAnyMacroHighlighted() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Pressing the ESC key will also clear all lines" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText , "BOTTOMLEFT" , 0 , -42 );
        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetSize ( 80 , 25 );
        PanelTemplates_TabResize ( GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , nil , 80 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetScript ( "OnClick" , function ( self , button )
            if button == "LeftButton" and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() then
                local needsFullRefresh = false;
                if GRM_UI.GRM_ToolCoreFrame.TabPosition ~= 1 then
                    needsFullRefresh = true;
                end
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 1;                   -- Set Position
                self:LockHighlight();                                       -- Lock Highlight
                GRM_UI.ConfigureToolTab();
                -- Load Lock window
                if needsFullRefresh then
                    GRM_UI.FullMacroToolRefresh();
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
                    GRM.TriggerIgnoredQueuedWindowRefresh();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetScript ( "OnEnter" , function( self )
            if not CanGuildRemove() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Player's rank does not have permission to remove others from the guild" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:SetScript ( "OnLeave" , function()
            if GameTooltip:IsVisible() then
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , "RIGHT" , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetSize ( 80 , 25 );
        PanelTemplates_TabResize ( GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , nil , 80 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() then
                local needsFullRefresh = false;
                if GRM_UI.GRM_ToolCoreFrame.TabPosition ~= 2 then
                    needsFullRefresh = true;
                end
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 2;                   -- Set Position
                GRM_UI.ConfigureToolTab();
                -- Load Lock window
                if needsFullRefresh then
                    GRM_UI.FullMacroToolRefresh();
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
                    GRM.TriggerIgnoredQueuedWindowRefresh();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetScript ( "OnEnter" , function( self )
            if not CanGuildPromote() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Player's rank does not have permission to promote others in the guild" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:SetScript ( "OnLeave" , function()
            if GameTooltip:IsVisible() then
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab , "RIGHT" , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetSize ( 80 , 25 );
        PanelTemplates_TabResize ( GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab , nil , 80 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetScript ( "OnClick" , function ( self , button )
            if button == "LeftButton" and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() then
                local needsFullRefresh = false;
                if GRM_UI.GRM_ToolCoreFrame.TabPosition ~= 3 then
                    needsFullRefresh = true;
                end
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 3;                   -- Set Position
                self:LockHighlight();                                       -- Lock Highlight
                GRM_UI.ConfigureToolTab();
                -- Load Lock window
                if needsFullRefresh then
                    GRM_UI.FullMacroToolRefresh();
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
                    GRM.TriggerIgnoredQueuedWindowRefresh();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetScript ( "OnEnter" , function( self )
            if not CanGuildDemote() then
                GRM_UI.SetTooltipScale();
                GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                GameTooltip:AddLine ( GRM.L ( "Player's rank does not have permission to demote others in the guild" ) );
                GameTooltip:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:SetScript ( "OnLeave" , function()
            if GameTooltip:IsVisible() then
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);

        -- method:          GRM_UI.ConfigureToolTab()
        -- What it Does:    Locks the selected tab highlighted
        -- Purpose:         UX feature
        GRM_UI.ConfigureToolTab = function()
            if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
                -- Highlights
                GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:LockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:Hide();

            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:LockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:Show();

            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:LockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_KickTab:UnlockHighlight();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:Show();
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
        end
        
        -- Macro'd ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame:SetSize ( 370 , 350 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "BOTTOMRIGHT" , 25 , 0 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetSize ( 352 , 326 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames = {};
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetSize ( 20 , 305 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetStepsPerPage ( 13 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , 
                13 , 25 , GRM.BuildMacrodScrollFrame , GRM_UI.GRM_ToolCoreFrame.MacroEntries
            );
        end);
        
        -- Queued ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame:SetSize ( 280 , 350 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame , "BOTTOMRIGHT" , 20 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame:SetHitRectInsets ( 1 , 50 , 1 , 1 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetSize ( 262 , 326 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetSize ( 20 , 305 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetStepsPerPage ( 13 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , 
                13 , 25 , GRM.BuildQueuedScrollFrame , GRM_UI.GRM_ToolCoreFrame.QueuedEntries
            );
        end);

        -- Ignored ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame:SetSize ( 290 , 325 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame , "TOPLEFT" , 30 , -60 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetSize ( 272 , 301 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetSize ( 20 , 280 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetStepsPerPage ( 12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , 
                12 , 25 , GRM.BuildIgnoredScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries
            );
        end);
        
        -- Rules Scroll Frame
        -- Ignored ScrollFrame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame:SetSize ( 305 , 200 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_KickTab , "BOTTOMLEFT" , 0 , -8 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetSize ( 287 , 176 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollBorderFrame , "BOTTOMLEFT" , 5 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetScrollChild ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:SetHitRectInsets ( 0 , -30 , 0 , 0 );
        -- Slider Parameters
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetOrientation ( "VERTICAL" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetSize ( 20 , 155 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , "TOPRIGHT" , 8.5 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetValue ( 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetValueStep ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetStepsPerPage ( 12 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder.currentV = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:SetScript ( "OnValueChanged" , function ( self , value )
            GRM.HybridScrollOnValueChangedConfig (
                self , value , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , 
                8 , 22 , GRM.BuildRulesScrollFrame , GRM_UI.GRM_ToolCoreFrame.RuleEntries
            );
        end);


        if not MacroFrame then
            ShowMacroFrame();
            MacroFrameCloseButton:Click();
        end

        MacroFrame:HookScript ( "OnHide" , function()
            if not GRM_G.HK then        -- Don't want to wipe the macro yet.
                if GRM_UI.GRM_ToolCoreFrame:IsVisible() and #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 0 then
                    -- To ensure no overlap of default frame logic actions.
                    C_Timer.After ( 0.5 , function()
                        GRM.BuildMacrodScrollFrame ( true , true );
                    end);
                end
            end
        end);

        -- Context Menu Initializations
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetSize( 80 , 105 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetFrameStrata ( "FULLSCREEN_DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu , 7 , -10 );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu , 7 , -25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetSize ( 65 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetWidth ( 65 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1 , "BOTTOMLEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetSize ( 65 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetWidth ( 65 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetJustifyH ( "LEFT" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton , "TOPLEFT" , 0 , 4 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText:SetText ("__");
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu , "BOTTOMLEFT" , 7 , 5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetSize ( 65 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetWidth ( 65 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetJustifyH ( "LEFT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                GRM.ClearRuleHighlights();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                GRM.ClearRuleHighlights();
                self:Hide();
            end
        end);


    end

    -- End of one-time load only, now need to be reloaded on any change of font, size, or language.
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:SetScript ( "OnClick" , function ( _ , button )
        if button == "LeftButton" then
            if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
                if MacroFrame:IsVisible() then          -- this needs to be hidden or the script won't update the macros.a
                    MacroFrameCloseButton:Click();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames = {};
                GRM.BuildMacrodScrollFrame ( true , true );
            else
                GRM.Report ( GRM.L ( "No Names to Add to the Macro" ) );
            end
        end
    end);

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetText( GRM.L ( "Name:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetText( GRM.L ( "Macro:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:SetText( GRM.L ( "# Moves:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDestinationRankHeaderText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetText( GRM.L ( "Name:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText4:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetText( GRM.L ( "Action" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText5:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetText( GRM.L ( "Hot Key: {name}" , GRM_G.MacroHotKey ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText6:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText8:SetText( GRM.L ( "Queued Actions" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText9:SetText( GRM.L ( "Current Actions" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameRankRestrictionText:SetText( GRM.L ( "Players the same rank or higher will not be shown" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:SetText ( GRM.L ( "Due to limitations with macros a player can only move 1 rank at a time." ))

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetText ( GRM.L ( "Permissions" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetText ( GRM.L ( "Kick" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetText ( GRM.L ( "Promote" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetText ( GRM.L ( "Demote" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Safe List Tool
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText1:SetText ( GRM.L ( "Name:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText2:SetText ( GRM.L ( "Ignored Action:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 18 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText3:SetText ( GRM.L ( "Ignored Players Safe From Action" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_IgnoreListRuleTypeText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButtonText:SetText ( GRM.L ( "Only show players with ignored action" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetText ( GRM.L ( "Clear Selection" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreResetSelectedNamesButton.GRM_ToolIgnoreResetSelectedNamesButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToiolIgnoreRemoveAllButton.GRM_ToolIgnoreRemoveAllButtonText:SetText ( GRM.L ( "Remove all players from Ignore List" ) );

    -- Button Text
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetText( GRM.L ( "Click to Build Macro" ) );
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetText( GRM.L ( "No Current Names to Add" ) );
    end
    GRM.SetMacroButtonText();

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetText ( GRM.L ( "Clear Selection" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton.GRM_ToolResetSelectedMacroNamesButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton.GRM_ToolViewSafeListButtonText:SetText ( GRM.L ( "View Ignore List" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText:SetText ( GRM.L ( "Total Queued:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText:SetText ( GRM.L ( "Actions Ignored:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickQueText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFramePromoteQueText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDemoteQueText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Rules
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetText ( GRM.L ( "Rules" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickRulesText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText );
    GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetText ( GRM.L ( "Add Custom Rule" ) );

    -- Tabs
    GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_KickTabText:SetText ( GRM.L ( "Kick" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText:SetText ( GRM.L ( "Promote" ) );
    GRM_UI.ScaleFontStringToObjectSize ( true , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTab:GetWidth() , GRM_UI.GRM_ToolCoreFrame.GRM_PromoTabText , 3 );
    GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText:SetText ( GRM.L ( "Demote" ) );
    GRM_UI.ScaleFontStringToObjectSize ( true , GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTab:GetWidth() , GRM_UI.GRM_ToolCoreFrame.GRM_DemoteTabText , 3 );

    -- Settings Reset
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSettingsButtonText:SetText ( GRM.L ( "Restore Defaults" ) );

    -- Context Menu
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuDividerText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuCancelButton.GRM_ToolContextMenuCancelButtonText:SetText ( GRM.L ( "Cancel" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ToolContextMenuText:SetText ( GRM.L ( "Options" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    
    ----------------------
    --- CUSTOM FILTERS ---
    ----------------------

    if not isManual then

        --------------- RULES FRAME -----------------

        
        -- Core Frame
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:ClearAllPoints();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetPoint ( "CENTER" , UIParent );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetSize ( 450 , 700 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetMovable ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetToplevel ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetFrameStrata ( "HIGH" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:RegisterForDrag ( "LeftButton" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnDragStart" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.StartMoving );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnDragStop" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.StopMovingOrSizing );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = {};
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = false;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = "";
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
            end
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetScript ( "OnHide" , function()
            -- reset the rules
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = {};
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = false;
            GRM_UI.GRM_ToolCoreFrame.GRM_CustomRuleAddButton.GRM_CustomRuleAddButtonText:SetText ( GRM.L ( "Add Custom Rule" ) );
            GRM.ClearRuleHighlights();
        end);

        -- Close Button
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesFrameCloseButton:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPRIGHT" , 0 , 0 );

        -- Title
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPLEFT" , 15 , -15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetTextColor ( 1 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOP" , 0 , -18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetSize ( 250 , 30 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetTextInsets( 2 , 3 , 3 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetMaxLetters ( 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:EnableMouse( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetAutoFocus( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetTextColor ( 1 , 0.82 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetNumeric ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = "";

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change the Rule Name" ) );
            GameTooltip:Show();
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);        

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            self:SetText ( GRM.Trim ( self:GetText() ) );

            if self:GetText() == "" then
                GRM.Report ( GRM.L ( "Please Set a Name for this Rule. It can be 1 to 25 characters in length." ) );
            end

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = self:GetText();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name = self:GetText();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
            GRM.RestoreTooltip();
        end);
        
        -- LEVEL RANGE
        -- Radial buttons
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetHitRectInsets ( 0 , -115 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetHitRectInsets ( 0 , -150 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 , "BOTTOMLEFT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2 , "RIGHT" , 2 , 0 );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 ); 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter = false;
            GRM_UI.DisableLevelSelectionEditBoxes();            
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter = true;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0 , 0 ); 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.EnableLevelSelectionEditBoxes();            
        end);
        
        -- Edit Boxes
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text , "BOTTOMLEFT" , 0 , -10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetTextColor ( 1 , 0.82 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetSize ( 50 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText , "RIGHT" , 10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetNumeric ( true );
        if GRM_G.BuildVersion < 60000 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetMaxLetters ( 2 ); -- 60000+ is Warlords of Draenor on, where level cap could be > 100
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetMaxLetters ( 3 );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetAutoFocus( false )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetTextInsets( 2 , 3 , 3 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:EnableMouse( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = "";
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetJustifyH ( "CENTER" );

        -- Divider
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox , "RIGHT" , 10 , 0 );
        -- Divider
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetSize ( 50 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText , "RIGHT" , 10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetNumeric ( true );
        if GRM_G.BuildVersion < 60000 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetMaxLetters ( 2 ); -- 60000+ is Warlords of Draenor on, where level cap could be > 100
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetMaxLetters ( 3 );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetAutoFocus( false )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetTextInsets( 2 , 3 , 3 , 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:EnableMouse( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = "";
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetJustifyH ( "CENTER" );
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            local number = tonumber ( GRM.Trim ( self:GetText() ) );
            if number == 0 then
                number = 1;
            end

            if number >= GRM_G.LvlCap then
                number = GRM_G.LvlCap;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = tostring ( GRM_G.LvlCap );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = tostring ( number );
            end
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1] = number;

            -- need to Adjust the 2nd if necessary as well.
            local number2 = tonumber ( GRM.Trim ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:GetText() ) );

            if ( number == GRM_G.LvlCap and GRM_G.LvlCap > number2 ) or ( number2 ~= GRM_G.LvlCap and number > number2 ) then
                number2 = number;
                if number2 == GRM_G.LvlCap then
                    number2 = 999;
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( number2 );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2] = number2;
            end
            
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnTabPressed" , function ( self )
            self:ClearFocus();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText );
            self:ClearFocus();
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            local number = tonumber ( GRM.Trim ( self:GetText() ) );
            if number == 0 then
                number = 1;
            end
        
            if number >= GRM_G.LvlCap then
                number = 999;           -- 999 is default for level cap so when expansion changes and level cap goes up, it auto floats the new filters to level cap again.
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( number );
            end
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2] = number;
        
            -- need to Adjust the 2nd if necessary as well.
            local number2 = tonumber ( GRM.Trim ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:GetText() ) );
        
            if number < number2 then
                number2 = number;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = tostring ( number2 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1] = number2;
            end
            
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnTabPressed" , function ( self )
            self:ClearFocus();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetFocus();
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
        end);



        -- Confirm Button
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:SetSize ( 145 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:SetPoint ( "BOTTOMRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "BOTTOM" , -20 , 15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                if GRM.IsRuleReady() then
                    -- Add or edit the new rule
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM_UI.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name] = GRM.DeepCopyArray ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule );
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal ~= GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name then
                        GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM_UI.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal] = nil;
                    end
                    
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
                    GRM.RefreshNumberOfHoursTilRecommend();
                    GRM_UI.FullMacroToolRefresh();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:SetSize ( 145 , 25 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "BOTTOM" , 20 , 15 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton:SetScript ( "OnClick" , function ( _ , button )
            if button == "LeftButton" then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
            end
        end);


        -- Method:          SetRankNamesToCustomRuleCheckButtons()
        -- What it Does:    Sets all the custom rules checkbox to the rank names
        -- Purpose:         Keep rank names set properly.
        local SetRankNamesToCustomRuleCheckButtons = function()
            local numRanks = GuildControlGetNumRanks(); -- minus 1 because we are not including the guild leader
            local button , buttontext;

            for i = 1 , ( numRanks - 1 ) do
                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1];
                buttontext = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2];

                if i <= ( numRanks - 1 ) then
                    buttontext:SetText ( GuildControlGetRankName ( numRanks + 1 - i ) );
                    buttontext:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
                    button:Show();
                else
                    button:Hide();
                end

            end
        end

        -- Initializes all checkboxes
        local BuildRankCheckBoxes = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes or {};
            local numRanks = GuildControlGetNumRanks() - 1;

            for i = 1 , numRanks do
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i] then
                    local button = CreateFrame ( "CheckButton" , "GRM_ToolCustomRulesRank" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "OptionsSmallCheckButtonTemplate" );
                    local buttontext = button:CreateFontString ( "GRM_ToolCustomRulesRank" .. i .. "Text" , "OVERLAY" , "GameFontNormalSmall" );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i] = { button , buttontext };

                    if i == 1 then
                        button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 , "BOTTOMRIGHT" , 0 , -5 );
                    else
                        if i % 3 == 1 then
                            button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i - 3][1] , "BOTTOMLEFT" , 0 , -5 );
                        else
                            button:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i - 1][1] , "RIGHT" , 100 , 0 );
                        end
                    end
                    buttontext:SetPoint ( "LEFT" , button , "RIGHT" , 2 , 0 );
                    buttontext:SetWidth ( 95 );
                    buttontext:SetJustifyH ( "LEFT" )

                    button:SetScript ( "OnClick" , function ( self , button )
                        if button == "LeftButton" then
                            if self:GetChecked() then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = true;
                            else
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = false;
                            end
                        end
                    end);

                end
            end

            -- Need to set the following button in the correct position
            if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes > 6 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[7][1] , "BOTTOMLEFT" , 0 , -5 );
            elseif #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes > 3 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[4][1] , "BOTTOMLEFT" , 0 , -5 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[1][1] , "BOTTOMLEFT" , 0 , -5 );
            end

            SetRankNamesToCustomRuleCheckButtons();
        end

        -- Method:          GRM_UI.SetRankCustomRuleFilters()
        -- What it Does:    Applies the custom rules selected ranks
        -- Purpose:         Set the rules properly as they are used.
        GRM_UI.SetRankCustomRuleFilters = function()
            local numRanks = GuildControlGetNumRanks() - 1;
            if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes ~= numRanks then       -- If window was open at same time rank was removed, we can rebuild the frames
                BuildRankCheckBoxes();
            end

            for i = 1 , numRanks do
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] ~= nil then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( true );
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( false );
                    end
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = false;
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( false );
                end
            end
        end

        -- Method:          GRM_UI.SetDefaultRankFilters()
        -- What it Does:    Sets all the default rules to true and puts all the buttons as checked, even though they are disabled
        -- Purpose          Purely aesthetics and ease to manipulate if enabling buttons
        GRM_UI.SetDefaultRankFilters = function()
            local numRanks = GuildControlGetNumRanks() - 1;
            local playerIndex = GRM_UI.GetRankIndexDescendingOrder();
            if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes ~= numRanks then       -- If window was open at same time rank was removed, we can rebuild the frames
                BuildRankCheckBoxes();
            end

            -- Want to disable all ranks in promotion or demotion as in most cases you don't want it to apply to all players.
            local setRankEnabled = true;
            if GRM_UI.GRM_ToolCoreFrame.TabPosition > 1 then
                setRankEnabled = false;
            end

            for i = 1 , numRanks do
                
                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 and i >= playerIndex then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = false;
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( false );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks[i] = setRankEnabled;
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( setRankEnabled );
                end
            end
        end

        GRM_UI.EnableEvenIfActiveButton = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 1 , 0 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:EnableMouse ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 1 , 1 , 1 );
        end

        GRM_UI.DisableEvenIfActiveButton = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:EnableMouse ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyEvenIfActiive = false;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetChecked ( false );
        end

        -- Method:              GRM_UI.EnableCustomSelectionOfRanks()
        -- What it Does:        Activates the checkboxes so individual ranks can be selected.
        -- Purpose:             Allow custom rank filtering.
        GRM_UI.EnableCustomSelectionOfRanks = function()
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter = true;
            end
            GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote();
            if not GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter then
                GRM_UI.EnableEvenIfActiveButton();
            end
        end

        -- What it Does:            Enables all Custom Rule Rank Checkboxes and greys them out.
        GRM_UI.DisableCustomSelectionRanks = function()
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter = false;
            end
            GRM_UI.DisableEvenIfActiveButton();
        end

        
        -- Method:          GRM_UI.DisableLevelSelectionEditBoxes()
        -- What it Does:    Disables editing of this feature in the controls
        -- Purpose:         Easier UX controls
        GRM_UI.DisableLevelSelectionEditBoxes = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetTextColor ( 0.5 , 0.5 , 0.5 );
        end

        -- Method:          GRM_UI.EnableLevelSelectionEditBoxes()
        -- What it Does:    Enables editing of this feature in the controls
        -- Purpose:         Easier UX controls
        GRM_UI.EnableLevelSelectionEditBoxes = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetTextColor ( 1 , 0.82 , 0 );
        end

        -- Method:              GRM_UI.EnableRankActivityFrames()
        -- What it Does:        Activates the rule frames as needed
        -- Purpose:             UI quality of life
        GRM_UI.EnableRankActivityFrames = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 1 , 0 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:EnableMouse ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );

        end

        -- Method:              GRM_UI.DisableRankActivityFrames()
        -- What it Does:        Disabled certain rule frame UI features as needed
        -- Purpose:             UI quality of life
        GRM_UI.DisableRankActivityFrames = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:EnableMouse ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
        end

        -- Method:          GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote()
        -- What it Does:    Configures the checkboxes UX experience to adapt over for promotions/demotions
        -- Purpose:         UX
        GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote = function()
            local playerIndex = GRM_UI.GetRankIndexDescendingOrder();
            local rankCap
            if GRM_UI.GRM_ToolCoreFrame.TabPosition > 1 then
                rankCap = ( GuildControlGetNumRanks() - GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank );
            end

            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes do

                if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 2  and i <= rankCap ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and i > rankCap + 1 ) then

                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:Enable();

                    if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 and i >= playerIndex ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 and i >= playerIndex - 1 ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and i >= playerIndex ) then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 1 , 0 , 0 );

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetScript ( "OnEnter" , function ( self )
                            GRM_UI.SetTooltipScale()
                            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                            if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
                                GameTooltip:AddLine( GRM.L ( "Unable to kick players at this rank" ) );
                            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                                GameTooltip:AddLine( GRM.L ( "Unable to promote players at this rank." ) );
                            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                                GameTooltip:AddLine( GRM.L ( "Unable to demote players from this rank." ) );
                            end
                            GameTooltip:Show();
                        end);
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetScript ( "OnLeave" , function()
                            GRM.RestoreTooltip();
                        end);
                        
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 1 , 0.82 , 0 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetScript ( "OnEnter" , nil );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetScript ( "OnLeave" , nil );
                    end
                else 
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][2]:SetTextColor ( 0.5 , 0.5 , 0.5 );

                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetScript ( "OnEnter" , function ( self )
                        GRM_UI.SetTooltipScale()
                        GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
                        if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                            GameTooltip:AddLine( GRM.L ( "Unable to promote players at this rank to \"{name}\"" , GuildControlGetRankName ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank ) ) );
                        elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                            GameTooltip:AddLine( GRM.L ( "Unable to demote players at this rank to \"{name}\"" , GuildControlGetRankName ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank ) ) );
                        end
                        GameTooltip:Show();
                    end);
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.customRankCheckBoxes[i][1]:SetScript ( "OnLeave" , function()
                        GRM.RestoreTooltip();
                    end);

                end
            end
        end

        -- Method:          GRM_UI.ConfigureCustomRuleKickFrame ( bool , string )
        -- What it Does:    Configures the values of all the buttons on the custom rules creation window
        -- Purpose:         Keep rules settings displayed properly.
        GRM_UI.ConfigureCustomRuleKickFrame = function ( isEdit , ruleName )

            local matchString = GRM.L ( "Click to Set" );

            -- Build Rank Filter
            BuildRankCheckBoxes();
            GRM_UI.ModifyRuleUI();

            if isEdit then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.GetKickRule ( ruleName );

                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 1 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );
                elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 2 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                end

                -- Build header text
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetText ( ruleName );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = ruleName;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = ruleName;

                -- Inactivity filter
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 1 , 1 , 1 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1 , 0 , 0 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Months") );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Days") );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( false );
                end

                -- Rank Filter
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI:EnableCustomSelectionOfRanks(); 
                else
                    
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.DisableCustomSelectionRanks();
                end
                GRM_UI.SetRankCustomRuleFilters();
                GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote();

                -- Activity Filter, Regardless if Active
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyEvenIfActiive then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetChecked ( false );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialNumDaysOrMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialNumDaysOrMonths );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( GRM.L ( "Months") );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( GRM.L ( "Days") );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();

                -- Level Range
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0.82 , 0  );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.EnableLevelSelectionEditBoxes();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.DisableLevelSelectionEditBoxes();
                end
                local levelRange = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1];
                if levelRange == 999 then
                    levelRange = GetMaxPlayerLevel();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( levelRange );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:GetText();
                levelRange = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2];
                if levelRange == 999 then
                    levelRange = GetMaxPlayerLevel();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( levelRange );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:GetText();

                -- Guild Rep 
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetText ( repOperators[GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repOperator] );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep , true ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:Show();

                if GRM_G.BuildVersion >= 40000 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 1 , 1 , 1 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep , false ) );
                end
                
                
                -- Note Matching
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked( true );
                    GRM_UI.EnableNoteMatch();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked ( false );
                    GRM_UI.DisableNoteMatch();
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetChecked( true );
                    GRM_UI.DisableNoteEditBox();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetChecked ( false );
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
                        GRM_UI.EnableNoteEditBox();
                    end
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( false );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( false );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( false );
                end

                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty then
                    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString > 0 then
                        matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString;
                    end
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = matchString;

                -- Ok let's reset
                matchString = GRM.L ( "Click to Set" );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLog then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 1 , 1 , 1 );
                    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg > 0 then
                        matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg;
                    end
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetChecked ( false );
                end 
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = matchString;


            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.BuildNewKickRuleTemplate();

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name;

                -- Inactivity filter
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = 12;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( "12" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Months") );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 1 , 1 , 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1 , 0 , 0 );

                -- Rank Filter
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( false );
                                
                GRM_UI.SetDefaultRankFilters();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:EnableMouse ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 1 , 1 , 1 );
                
                GRM_UI.DisableCustomSelectionRanks();

                -- Activity Filter Regardless if Active
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = 12;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetText ( "12" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( GRM.L ( "Months") );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();

                -- Level Range
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( GRM_G.LvlCap );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = "1";
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
                GRM_UI.DisableLevelSelectionEditBoxes();

                -- Guild Rep
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetText ( repOperators[2] );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( 4 , false ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                
                -- Custom Note
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = "";
                GRM_UI.DisableNoteMatch();

                -- Custom Log Entry
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = matchString;
                
                

            end

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = isEdit;            

        end

        -- Method:          GRM_UI.ConfigureCustomRulePromoteAndDemoteFrame ( bool , string )
        -- What it Does:    Configures the values of all the buttons on the custom rules creation window
        -- Purpose:         Keep rules settings displayed properly.
        GRM_UI.ConfigureCustomRulePromoteAndDemoteFrame = function ( isEdit , ruleName )

            local matchString = GRM.L ( "Click to Set" );

            -- Build Rank Filter
            BuildRankCheckBoxes();
            GRM_UI.ModifyRuleUI();

            if isEdit then

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.GetPromoteRule ( ruleName );
                elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.GetDemoteRule ( ruleName );
                end

                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 1 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );
                elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 2 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                end

                -- Build header text
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:Show();    -- "(Edit)"
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetText ( ruleName );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = ruleName;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = ruleName;

                -- Inactivity filter
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 1 , 1 , 1 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1 , 0 , 0 );

                    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.regardlessOfActivity then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                            GRM_UI.DisableRankActivityFrames();
                        else
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                            GRM_UI.EnableRankActivityFrames();
                        end
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:Enable();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:Enable();
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );

                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                            GRM_UI.DisableEvenIfActiveButton();
                        end
                    end
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
    
                    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                        GRM_UI.DisableRankActivityFrames();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 0.5 , 0.5 , 0.5 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 0.5 , 0.5 , 0.5 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:Disable();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:Disable();
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Disable();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
    
                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                            GRM_UI.EnableEvenIfActiveButton();
                        end
                    end
                end

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.regardlesOsfActivity then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetChecked ( true );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetChecked ( false );
                        
                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                        end
                        
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetChecked ( false );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetChecked ( true );
                        
                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0 , 0 ); 
                        end
                    end
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Months") );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Days") );
                end


                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetTextColor ( 1 , 1 , 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetText ( GuildControlGetRankName ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank ) );
                local playerIndex = GRM_UI.GetRankIndexDescendingOrder();
                local rankCap = ( GuildControlGetNumRanks() - GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank );

                if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 and rankCap >= playerIndex ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and rankCap >= playerIndex - 1 ) then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetTextColor ( 1 , 0 , 0 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetTextColor ( 1 , 1 , 1 );
                end


                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.allAltsApplyToKick then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( false );
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialNumDaysOrMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialNumDaysOrMonths );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( GRM.L ( "Months") );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( GRM.L ( "Days") );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();

                -- Rank Filter
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI:EnableCustomSelectionOfRanks(); 
                else
                    
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.DisableCustomSelectionRanks();
                end
                GRM_UI.SetRankCustomRuleFilters();
                GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote();

                -- Level Range
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0.82 , 0  );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.EnableLevelSelectionEditBoxes();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.DisableLevelSelectionEditBoxes();
                end
                local levelRange = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1];
                
                if levelRange == 999 then
                    levelRange = GetMaxPlayerLevel();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( levelRange );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:GetText();
                levelRange = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2];
                if levelRange == 999 then
                    levelRange = GetMaxPlayerLevel();
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( levelRange );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:GetText();

                -- Guild Rep 
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetText ( repOperators[GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repOperator] );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep , true ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:Show();

                if GRM_G.BuildVersion >= 40000 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repFilter then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 1 , 1 , 1 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep , false ) );
                end
                
                
                -- Note Matching
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked( true );
                    GRM_UI.EnableNoteMatch();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked ( false );
                    GRM_UI.DisableNoteMatch();
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetChecked( true );
                    GRM_UI.DisableNoteEditBox();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetChecked ( false );
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
                        GRM_UI.EnableNoteEditBox();
                    end
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( false );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( false );
                end
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( true );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( false );
                end

                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty then
                    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString > 0 then
                        matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString;
                    end
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = matchString;

                -- Ok let's reset
                matchString = GRM.L ( "Click to Set" );
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLog then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 1 , 1 , 1 );
                    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg > 0 then
                        matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg;
                    end
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetChecked ( false );
                end 
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = matchString;


            else
                -- NOT AN EDIT

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule = GRM.BuildNewPromoteOrDemoteRuleTemplate();

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:Hide(); -- (Edit)
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox.ruleNameText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.ruleNameOriginal = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name;

                -- Inactivity filter
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = 12;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( "12" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( GRM.L ( "Months") );
                
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 1 , 1 , 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1 , 0 , 0 );

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetChecked ( false );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetChecked ( true );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetTextColor ( 1 , 1 , 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetText ( GuildControlGetRankName ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank ) );

                -- Rank Filter
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked( true );
                                
                GRM_UI.SetDefaultRankFilters();
                GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote();
                
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:EnableMouse ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetTextColor ( 1 , 1 , 1 );
                
                -- Activity Filter Regardless if Active
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = 3;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetText ( "3" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( GRM.L ( "Months") );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();

                -- Level Range
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetText ( 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetText ( GRM_G.LvlCap );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox.levelNameText = "1";
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox.levelNameText = tostring ( GRM_G.LvlCap );
                GRM_UI.DisableLevelSelectionEditBoxes();

                -- Guild Rep
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetText ( repOperators[2] );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( 4 , false ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                
                -- Custom Note
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetChecked ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = "";
                GRM_UI.DisableNoteMatch();

                -- Custom Log Entry
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = matchString;
                
            end

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.isEdit = isEdit;            

        end
 
        -- Method:          GRM_UI.ConfigureCustomRulePromoteFrame ( bool , string )
        -- What it Does:    Configures the values of all the buttons on the custom rules creation window
        -- Purpose:         Keep rules settings displayed properly.
        GRM_UI.ConfigureCustomRulePromoteFrame = function ( isEdit , ruleName )
            GRM_UI.ConfigureCustomRulePromoteAndDemoteFrame ( isEdit , ruleName );
        end

        -- INACTIVITY CUSTOM RULES
        --------------------------

        -- Apply Rules To: 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetScript ( "OnClick", function ( self )
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 1 then
                self:SetChecked ( true );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo = 1;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0 , 0 );

                -- Disable the rest
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text , "RIGHT" , 10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetScript ( "OnClick", function ( self )
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 2 then
                self:SetChecked ( true );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo = 2;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0 , 0 );

                -- Disable the rest
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0.82 , 0 );
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine ( GRM.L ( "This only applies to KNOWN alts. Unconfigured will be excluded." ) );
            GameTooltip:Show();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text , "RIGHT" , 10 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3:SetScript ( "OnClick", function ( self )
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo == 3 then
                self:SetChecked ( true );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyRulesTo = 3;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetTextColor ( 1 , 0 , 0 );

                -- Disable the rest
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2:SetChecked ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetTextColor ( 1 , 0.82 , 0 );
            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText , "BOTTOMLEFT" , -5 , -11 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton:SetScript ( "OnClick", function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter = true;

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( true );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 1 , 1 , 1 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1 , 0 , 0 );

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.regardlessOfActivity then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0 , 0 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
                        GRM_UI.DisableRankActivityFrames();
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0 , 0 );
                        GRM_UI.EnableRankActivityFrames();
                    end
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:Enable();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Enable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 1 , 0.82 , 0 );

                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                        GRM_UI.DisableEvenIfActiveButton();
                    end
                end

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.activityFilter = false;

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:EnableMouse ( false );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    GRM_UI.DisableRankActivityFrames();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 0.5 , 0.5 , 0.5 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:Disable();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:Disable();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetTextColor ( 0.5 , 0.5 , 0.5 );

                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
                        GRM_UI.EnableEvenIfActiveButton();
                    end
                end

            end
        end);
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetSize ( 25 , 22 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetMaxLetters ( 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetNumeric ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetTextColor ( 1.0 , 0 , 0 , 1.0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetAutoFocus( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetScript ( "OnEscapePressed" , function( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetScript ( "OnEnterPressed" , function( self )
            self:ClearFocus();   
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetScript ( "OnEditFocusLost" , function( self ) 
            self:HighlightText ( 0 , 0 );

            local numMonths = tonumber ( self:GetText() );
            if numMonths > 0 and numMonths < 100 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths = numMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = numMonths;
            else
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM.Report ( GRM.L ( "Please choose a month between 1 and 99" ) );
                elseif not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                    GRM.Report ( GRM.L ( "Please choose a day between 1 and 99" ) );
                end
            end   
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox , "RIGHT" , 3 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetSize (  60 , 18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetFrameStrata ( "DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetWidth ( 50 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetWordWrap ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetWidth ( 60 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetFrameStrata ( "DIALOG" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnShow" , function() 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnMouseDown" , function( _ , button )
            if button == "LeftButton" then
                if  GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Show();
                    GRM_UI.PopulateScaleSelectionDropDown();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change" ) );
            GameTooltip:Show();
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end)

        -- Method:          GRM_UI.PopulateScaleSelectionDropDown()
        -- What it Does:    Creates a dropdown window for the GRM tool to allow player to select whether to choose months or days in terms of time passed.
        -- Purpose:         Greater flexibility and control to the player
        GRM_UI.PopulateScaleSelectionDropDown = function()
            local buffer = 3;
            local height = 0;
            local width = 60;
            local names = { GRM.L ( "Months" ) , GRM.L ( "Days" ) };

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons or {};

            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i][1]:Hide();
            end

            for i = 1 , 2 do
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i] then
                    local tempButton = CreateFrame ( "Button" , "GRM_ToolTimeScaleButton" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i] = { tempButton , tempButton:CreateFontString ( "GRM_ToolTimeScaleButtonText" .. i , "OVERLAY" , "GameFontWhiteTiny" ) }
                end

                local FontButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i][1];
                local FontButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i][2];

                FontButton:SetWidth ( width );
                FontButton:SetHeight ( 11 );
                FontButton:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                FontButtonText:SetText ( names[i] );
                FontButtonText:SetWidth ( width - 5 );
                FontButtonText:SetWordWrap ( false );
                FontButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
                FontButtonText:SetPoint ( "CENTER" , FontButton );
                FontButtonText:SetJustifyH ( "CENTER" );

                if i == 1 then
                    FontButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu , 0 , -7 );
                    height = height + FontButton:GetHeight();
                else
                    FontButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu.Buttons[i - 1][1] , "BOTTOM" , 0 , -buffer );
                    height = height + FontButton:GetHeight() + buffer;
                end

                FontButton:SetScript ( "OnClick" , function( self , button ) 
                    if button == "LeftButton" then
                        local number = tonumber ( string.match ( self:GetName() , ("%d+" ) ) );

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected.GRM_TimeScaleSelectedText:SetText ( FontButtonText:GetText() );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:Hide();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleSelected:Show();

                        -- Days to months.
                        if number == 1 and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths = true;
                                                        
                        -- Going from months to days
                        elseif number == 2 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.isMonths = false;

                        end

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.numDaysOrMonths;
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox.value );
                    end
                end);
                FontButton:Show();
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_TimeScaleDropDownMenu:SetHeight ( height + 15 );
        end

        -- RANK FILTER REGARDLESS OF ACTIVITY
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText , "BOTTOMLEFT" , -5 , -11 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetScript ( "OnClick", function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyEvenIfActiive = true;
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.applyEvenIfActiive = false;
            end
            if GameTooltip:IsVisible() then
                GRM.RestoreTooltip()
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine(  "|CFFFF0000" .. GRM.L ( "WARNING!" ) .. "|r " .. GRM.L ( "Use Cautiously. Applies to all at rank, regardless of being active or inactive." ) );
            GameTooltip:AddLine ( GRM.L ( "This will only apply to players with verified promotion dates." ) );
            GameTooltip:Show();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText , "RIGHT" , 7 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetSize ( 25 , 22 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetMaxLetters ( 2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetNumeric ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetTextColor ( 1.0 , 0 , 0 , 1.0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = 0;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetAutoFocus( false );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetScript ( "OnEscapePressed" , function( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetScript ( "OnEnterPressed" , function( self )
            self:ClearFocus();   
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetScript ( "OnEditFocusLost" , function( self ) 
            self:HighlightText ( 0 , 0 );

            local numMonths = tonumber ( self:GetText() );
            if numMonths > 0 and numMonths < 100 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialNumDaysOrMonths = numMonths;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = numMonths;
            else
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths then
                    GRM.Report ( GRM.L ( "Please choose a month between 1 and 99" ) );
                elseif not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths then
                    GRM.Report ( GRM.L ( "Please choose a day between 1 and 99" ) );
                end
            end   
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox , "RIGHT" , 3 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetSize (  60 , 18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetFrameStrata ( "DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetWidth ( 50 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetWordWrap ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:SetWidth ( 60 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:SetFrameStrata ( "DIALOG" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:Show();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetScript ( "OnShow" , function() 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetScript ( "OnMouseDown" , function( _ , button )
            if button == "LeftButton" then
                if  GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Show();
                    GRM_UI.PopulateActivityScaleSelectionDropDown();
                end
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change" ) );
            GameTooltip:Show();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        -- Method:          GRM_UI.PopulateActivityScaleSelectionDropDown()
        -- What it Does:    Creates a dropdown window for the GRM tool to allow player to select whether to choose months or days in terms of time passed.
        -- Purpose:         Greater flexibility and control to the player filter rules
        GRM_UI.PopulateActivityScaleSelectionDropDown = function()
            local buffer = 3;
            local height = 0;
            local width = 60;
            local names = { GRM.L ( "Months" ) , GRM.L ( "Days" ) };

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons or {};

            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons[i][1]:Hide();
            end

            for i = 1 , 2 do
                if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons[i] then
                    local tempButton = CreateFrame ( "Button" , "GRM_ToolTimeScaleButton" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons[i] = { tempButton , tempButton:CreateFontString ( "GRM_ActivityTimeScaleButton" .. i , "OVERLAY" , "GameFontWhiteTiny" ) }
                end

                local FontButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons[i][1];
                local FontButtonText = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons[i][2];

                FontButton:SetWidth ( width );
                FontButton:SetHeight ( 11 );
                FontButton:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                FontButtonText:SetText ( names[i] );
                FontButtonText:SetWidth ( width - 5 );
                FontButtonText:SetWordWrap ( false );
                FontButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
                FontButtonText:SetPoint ( "CENTER" , FontButton );
                FontButtonText:SetJustifyH ( "CENTER" );

                if i == 1 then
                    FontButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu , 0 , -7 );
                    height = height + FontButton:GetHeight();
                else
                    FontButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu.Buttons[i - 1][1] , "BOTTOM" , 0 , -buffer );
                    height = height + FontButton:GetHeight() + buffer;
                end

                FontButton:SetScript ( "OnClick" , function( self , button ) 
                    if button == "LeftButton" then
                        local number = tonumber ( string.match ( self:GetName() , ("%d+" ) ) );

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected.GRM_KickEvenIfActiveTimeSelectedText:SetText ( FontButtonText:GetText() );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:Hide();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeSelected:Show();

                        -- Days to months.
                        if number == 1 and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths = true;
                            
                        -- Going from months to days
                        elseif number == 2 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths then
                            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialIsMonths = false;

                        end

                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankSpecialNumDaysOrMonths;
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveEditBox.value );
                    end
                end);
                FontButton:Show();
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveTimeMenu:SetHeight ( height + 15 );
        end

        -- REPUTATION RULE
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text , "BOTTOMLEFT" , -20 , -40 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton , "RIGHT" , 2 , 0 );
        

        if GRM_G.BuildVersion >= 40000 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetScript ( "OnClick" , function ( self , button )
                if button == "LeftButton" then
                    if self:GetChecked() then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repFilter = true;
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( true );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 1 , 1 , 1 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( true );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep , true ) );
                    else
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repFilter = false;
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:EnableMouse ( false );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:EnableMouse ( false );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( GRM.GetReputationTextLevel ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep , false ) );
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                    end
                end
            end);
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText:SetPoint ( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected , "TOP" , 0 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText:SetTextColor ( 1 , 0 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText:Show();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5 );
        end

        -- Method:          GRM.ConfigureDropDownSymbols()
        -- What it Does:    Configures the dropdown menu to accomadate some operators that don't make sense at the edges
        -- Purpose:         Quality of Life settings control
        GRM.ConfigureDropDownSymbols = function()

            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep == 4 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[1][1]:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[1][2]:SetTextColor ( 1 , 0 , 0 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[1][1]:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[1][2]:SetTextColor ( 1 , 1 , 1 );
            end

            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep == 8 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[3][1]:Disable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[3][2]:SetTextColor ( 1 , 0 , 0 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[3][1]:Enable();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu.Buttons[3][2]:SetTextColor ( 1 , 1 , 1 );
            end

        end

        GRM.SetRepSymbolSelection = function ( _ , buttonNumber )
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repOperator = buttonNumber;  -- + 3 is to deal with reputation at neutral is index 4
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetText ( repOperators[buttonNumber] );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:Show();
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText , "RIGHT" , 3 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetSize (  55 , 18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetFrameStrata ( "DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetWidth ( 52 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetWordWrap ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:SetWidth ( 55 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:SetFrameStrata ( "DIALOG" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetScript ( "OnShow" , function() 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetScript ( "OnMouseDown" , function( self , button )
            if button == "LeftButton" then
                if  GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Show();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                    GRM.CreateDropDownMenu ( self , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu , 14 , 11 , "THICKOUTLINE" , repOperators ,  GRM.SetRepSymbolSelection );
                    GRM.ConfigureDropDownSymbols();
                end
                GRM.RestoreTooltip();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change" ) );
            GameTooltip:Show();
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM.ConfigureSymbolSelected = function()
            if ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep == 4 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repOperator == 1 ) or ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep == 8 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repOperator == 3 )then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.repOperator = 2;
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetText ( repOperators[2] );
            end
        end

        GRM.SetGuildRepSelection = function ( _ , buttonNumber , buttonText )
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rep = buttonNumber + 3;  -- + 3 is to deal with reputation at neutral is index 4
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetText ( buttonText:GetText() );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:Show();
            GRM.ConfigureSymbolSelected();
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetSize (  120 , 18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetFrameStrata ( "DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetWidth ( 115 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetWordWrap ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:SetWidth ( 120 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:SetFrameStrata ( "DIALOG" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetScript ( "OnShow" , function() 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetScript ( "OnMouseDown" , function( self , button )
            if button == "LeftButton" then
                local repList = { GRM.GetReputationTextLevel ( 4 , true ) , GRM.GetReputationTextLevel ( 5 , true ) , GRM.GetReputationTextLevel ( 6 , true ) , GRM.GetReputationTextLevel ( 7 , true ) , GRM.GetReputationTextLevel ( 8 , true ) };
                if  GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Show();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolDropDownMenu:Hide();
                    GRM.CreateDropDownMenu ( self , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu , 11 , 11 , "THICKOUTLINE" , repList ,  GRM.SetGuildRepSelection );
                end
                GRM.RestoreTooltip();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change Rep" ) );
            GameTooltip:Show();
        end);
    
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end)

        
        -- CUSTOM RANK RULE Button Controls
        --------------------
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 , "BOTTOMLEFT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetScript ( "OnClick", function()
            GRM_UI.EnableCustomSelectionOfRanks();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0 , 0 ); 
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetChecked ( true );
            GRM_UI.DisableCustomSelectionRanks();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetTextColor ( 1 , 0 , 0 ); 
        end);
        
        -- String matching Custom Rules
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton , "BOTTOMLEFT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch = true;
                GRM_UI.EnableNoteMatch();
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch = false;
                GRM_UI.DisableNoteMatch();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText , "RIGHT" , 15 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetMaxLetters ( 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetAutoFocus( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetSize ( 175 , 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetNumeric ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = "";

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton , "BOTTOMRIGHT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty = true;
                GRM_UI.DisableNoteEditBox();
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty = false;
                GRM_UI.EnableNoteEditBox();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton , "BOTTOM" , 0 , -6 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] = true;

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[1] = false;

            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText , "RIGHT" , 8 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] = true;

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[2] = false;

            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] = true;

            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.notesToCheck[3] = false;

            end
        end);

        GRM_UI.EnableNoteMatch = function()
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:Enable();
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetTextColor ( 1 , 0.82 , 0 );
        end

        GRM_UI.DisableNoteMatch = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetTextColor ( 0.5 , 0.5 , 0.5  );
        end

        GRM_UI.EnableNoteEditBox = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:Enable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetTextColor ( 1 , 1 , 1 );
            local matchString = GRM.L ( "Click to Set" );
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString == "" then
                    matchString = GRM.L ( "Click to Set" );
                else
                    matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString;
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( matchString );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = matchString;
            end
        end

        GRM_UI.DisableNoteEditBox = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:Disable();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetText ( "" );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetTextColor ( 0.5 , 0.5 , 0.5  );
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            self:SetText ( GRM.Trim ( self:GetText() ) );
            local textResult = self:GetText();

            if textResult == "" then
                textResult = GRM.L ( "Click to Set" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString = "";
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString = textResult;
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox.stringPattern = textResult;
            self:SetText ( textResult );
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_NoteSearchEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            if self:GetText() == GRM.L ( "Click to Set" ) then
                self:SetText ( "" );
            end
            self:HighlightText ( 0 );
            self:SetCursorPosition ( 0 );
        end);

        -- CUSTOM REP
        
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetScript ( "OnClick" , function( self )
            if self:GetChecked() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLog = true;
                GRM_UI.EnableCustomLogEntry();
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLog = false;
                GRM_UI.DisableCustomLogEntry();
            end
            GRM.RestoreTooltip();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine ( GRM.L ( "This note will appear with the log notification when a player meets this rule's conditions." ) );
            GameTooltip:Show();
        end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        GRM_UI.EnableCustomLogEntry = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 1 , 1 , 1 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Enable();
        end

        GRM_UI.DisableCustomLogEntry = function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextColor ( 0.5 , 0.5 , 0.5 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:Disable();

            local matchString = GRM.L ( "Click to Set" );

            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLog and #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg > 0 then
                matchString = GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg;
            end 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetText ( matchString );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = matchString;
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton , "BOTTOMRIGHT" , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:SetSize ( 335 , 45 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:SetScript ( "OnMouseDown" , function ( _ , button )
            if button == "LeftButton" and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLog and not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:HasFocus() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetFocus();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame , "TOPRIGHT" , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetMaxLetters ( 20 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:EnableMouse ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetAutoFocus( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetSize ( 332 , 45 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetMultiLine ( true );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetSpacing ( 1 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetMaxLetters ( 80 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetTextInsets ( 8 , 9 , 5 , 8 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetNumeric ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = "";

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:SetPoint ( "BOTTOMRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox , "TOPRIGHT" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:Hide();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:SetTextColor ( 1 , 0 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:Hide();

        -- end);
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetScript ( "OnTextChanged" , function( self )
            if self:HasFocus() then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:SetText ( self:GetNumLetters() .. "/" .. GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:GetMaxLetters() );
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetScript ( "OnEscapePressed" , function ( self )
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetScript ( "OnEnterPressed" , function ( self )
            self:SetText ( GRM.Trim ( self:GetText() ) );
            
            local textResult = self:GetText();
            if textResult == "" then
                textResult = GRM.L ( "Click to Set" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg = "";
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.customLogMsg = textResult;
            end
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern = textResult;
            self:SetText ( textResult );
            self:ClearFocus();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetScript ( "OnEditFocusLost" , function ( self )
            self:HighlightText ( 0 , 0 );
            self:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox.stringPattern );
            
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:EnableMouse ( true );
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetScript ( "OnEditFocusGained" , function ( self )
            if self:GetText() == GRM.L ( "Click to Set" ) then
                self:SetText ( "" );
            end
            self:SetCursorPosition ( self:GetUTF8CursorPosition() );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:SetText ( self:GetNumLetters() .. "/" .. GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:GetMaxLetters() );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:Show();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:Show();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxFrame:EnableMouse ( false );
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetPoint( "BOTTOM" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "BOTTOM" , 0 , 45 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetJustifyH ( "CENTER" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetWidth ( 290 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetSpacing ( 1 );
    
        -----------------------
        ------------ PROMOTION DEMOTION Unique BUTTONS
        -----------------------

        -- Activity Check
        -- Radial buttons
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "BOTTOMRIGHT" , 0 , -5 )
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1 , "RIGHT" , 2 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1 , "BOTTOMLEFT" , 0 , -5 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetPoint ( "Left" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2 , "RIGHT" , 2 , 0 );
        
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0 , 0 ); 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.regardlessOfActivity = true;
            GRM_UI.DisableRankActivityFrames();            
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetScript ( "OnClick", function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:SetChecked ( true );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetTextColor ( 1 , 0 , 0 ); 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:SetChecked ( false );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetTextColor ( 1 , 0.82 , 0 );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.regardlessOfActivity = false;
            GRM_UI.EnableRankActivityFrames();
        end);

        -- Compares ranks in order in numerically descending fasion than ascending.
        GRM_UI.GetRankIndexDescendingOrder = function()
            return ( GuildControlGetNumRanks() - GRM_G.playerRankID );
        end

        GRM_UI.SetDiestinationSelection = function ( _ , buttonNumber , buttonText )
            local playerIndex = GRM_UI.GetRankIndexDescendingOrder();

            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:Hide();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.destinationRank = ( GuildControlGetNumRanks() - buttonNumber + 1 );  -- + 3 is to deal with reputation at neutral is index 4
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetText ( buttonText:GetText() );

            if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 and buttonNumber >= playerIndex ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and buttonNumber >= playerIndex - 1 ) then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetTextColor ( 1 , 0 , 0 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetTextColor ( 1 , 1 , 1 );
            end

            -- Re-configure the checkboxes.
            GRM_UI.ConfigureRankCheckBoxesPromoteAndDemote();
        end

        GRM_UI.AdjustColoringOfDestinationRanks = function()
            local playerIndex = GRM_UI.GetRankIndexDescendingOrder();
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons do

                if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 and i >= playerIndex ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and i >= playerIndex - 1 ) then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons[i][2]:SetTextColor ( 1 , 0 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons[i][1]:SetScript ( "OnEnter" , function ( self )
                        GRM_UI.SetTooltipScale()
                        GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );

                        if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                            GameTooltip:AddLine( GRM.L ( "Unable to promote players to this rank" ) );
                        elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                            GameTooltip:AddLine( GRM.L ( "Unable to demote players to this rank" ) );
                        end
                        GameTooltip:Show();
                    end);
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons[i][1]:SetScript ( "OnLeave" , function()
                        GRM.RestoreTooltip();
                    end);
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons[i][2]:SetTextColor ( 1 , 0.82 , 0 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons[i][1]:SetScript ( "OnEnter" , nil );      -- No tooltip necessary if rank is ok
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu.Buttons[i][1]:SetScript ( "OnLeave" , nil );
                end

            end
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:SetPoint ( "BOTTOMLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText , "TOPLEFT" , 0 , 10 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText , "RIGHT" , 5 , 0 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetSize (  160 , 18 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetFrameStrata ( "DIALOG" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetPoint ( "CENTER" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetWidth ( 155 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetWordWrap ( false );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected , "BOTTOM" );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:SetWidth ( 160 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:SetBackdrop ( GRM_UI.noteBackdrop2 );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:SetFrameStrata ( "DIALOG" );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:SetScript ( "OnKeyDown" , function ( self , key )
            self:SetPropagateKeyboardInput ( true );
            if key == "ESCAPE" then
                self:SetPropagateKeyboardInput ( false );
                self:Hide();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetScript ( "OnShow" , function() 
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:Hide();
        end)

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetScript ( "OnMouseDown" , function( self , button )
            if button == "LeftButton" then
                if  GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:IsVisible() then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:Hide();
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu:Show();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksDropDownMenu:Hide();
                    GRM.CreateDropDownMenu ( self , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankDropdownMenu , 12 , 12 , "THICKOUTLINE" , GRM.GetListOfGuildRanks() ,  GRM_UI.SetDiestinationSelection );
                    GRM_UI.AdjustColoringOfDestinationRanks();
                end
                GRM.RestoreTooltip();
            end
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetScript ( "OnEnter" , function( self )
            GRM_UI.SetTooltipScale()
            GameTooltip:SetOwner ( self , "ANCHOR_CURSOR" );
            GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FClick|r to Change" ) );
            GameTooltip:Show();
        end);

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end)

        -----------------------
        ---- UI MODIFICATIONS DEPENDING ON Macro Action
        -----------------------

        -- Method:          GRM_UI.ModifyRuleUI()
        -- What it Does:    Adjusts the positioning of the main rules selection filters window and various frames to adjust for kick, promote, and demote filters
        -- PurposeL         Rather than rebuild whole new frames for each, this just builds one reusable frame for all 3 rule types.
        GRM_UI.ModifyRuleUI = function()

            -- Unpinning for all as needed
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:ClearAllPoints();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:ClearAllPoints();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:ClearAllPoints();
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText:ClearAllPoints();

            -- Kick
            if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 or GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                
                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetText ( GRM.L ( "Kick Inactive Player Reminder at" ) .. " " );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetText ( GRM.L ( "Kick Players at Selected Rank(s) after" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetText ( GRM.L ( "Only recommend to kick if all player linked alts exceed max time" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetText ( GRM.L ( "Suggestions on kick filters? Submit to Discord" ) );

                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPLEFT" , 38 , -60 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:Hide();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:Hide()

                elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetText ( GRM.L ( "Demote Player if Inactive for" ) .. " " );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:SetText ( GRM.L ( "Demote to Rank:" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetText ( GRM.L ( "Suggestions on demote filters? Submit to Discord" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetText ( GRM.L ( "Only recommend to Demote if all player linked alts exceed max time" ) );

                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPLEFT" , 38 , -80 );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:Show();
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:Show()
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton , "RIGHT" , 2 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed , "BOTTOMLEFT" , -8 , -15 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton , "BOTTOMLEFT" , 0 , -15 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , "BOTTOMRIGHT" , 0 , -10 );
                
                if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].selectedLang == 5 then -- Russian
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetSize ( 450 , 700 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetSize ( 450 , 720 );
                end

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:Hide();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:Show();

            -- Promote and Demote
            elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetText ( GRM.L ( "Promote Player if at Rank for" ) .. " " );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetText ( GRM.L ( "Apply Promotions Regardless of Activity" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetText ( GRM.L ( "Apply Only to Active Players" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:SetText ( GRM.L ( "Promote to Rank:" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetText ( GRM.L ( "Suggestions on promote filters? Submit to Discord" ) );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetText ( GRM.L ( "Player is considered inactive if offline for" ) .. " " );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimedText:SetText ( GRM.L ( "Ignore inactivity if at least one player linked alt is active" ) );
                
                end

                GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text );
                GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text );
                
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2 , "BOTTOMRIGHT" , 2 , -7 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2 , "BOTTOMLEFT" , -8 , -65 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton , "BOTTOMLEFT" , 0 , 25 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolAltsOfflineTimed:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText , "BOTTOMLEFT" , -5 , -10 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame , "TOPLEFT" , 38 , -80 );

                if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].selectedLang == 5 then -- Russian
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetSize ( 450 , 725 );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:SetSize ( 450 , 735 );
                end
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:Show();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton:Hide();

            end

            GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText );
            GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText );

        end



        GRM_UI.LocalizationMModifications = function()
                    -- Localization adjustments
            if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].selectedLang == 5 then -- Russian
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:ClearAllPoints();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton , "BOTTOMLEFT" , 0 , -6 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:ClearAllPoints();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton , "BOTTOMLEFT" , 0 , -5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:ClearAllPoints();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOM" , 0 , -65 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetSize ( 110 , 65 );
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:ClearAllPoints();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton:SetPoint ( "LEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText , "RIGHT" , 8 , 0 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:ClearAllPoints();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton:SetPoint ( "TOPRIGHT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton , "BOTTOMLEFT" , 0 , -5 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:ClearAllPoints();
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolResetSelectedMacroNamesButton , "BOTTOM" , 0 , -95 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolViewSafeListButton:SetSize ( 110 , 25 );
            end
        end

    end

    -- Custom Rules Fontstrings
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRuleNumberText:SetText ( "(" .. GRM.L ( "Edit" ) .. ")" );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleNameEditBox:SetFont( GRM_G.FontChoice , GRM_G.FontModifier + 16 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRecommendKickCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesConfirmButton.GRM_ToolCustomRulesConfirmButtonText:SetText( GRM.L ( "Confirm" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesCancelButton.GRM_ToolCustomRulesCancelButtonText:SetText ( GRM.L ( "Cancel" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RosterKickRecommendEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text:SetText ( GRM.L ( "Apply Only to Selected Ranks" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton1Text );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text:SetText ( GRM.L ( "Apply to All Ranks" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolRulesRankRadialButton2Text );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText:SetText ( GRM.L ( "Kick Players at Selected Rank(s) after" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_KickEvenIfActiveButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text:SetText ( GRM.L ( "Apply to All Levels" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton1Text );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text:SetText ( GRM.L ( "Apply Only to Level Range" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRadialButton2Text );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStartEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomRuleLevelStopEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelText:SetText ( GRM.L ( "To" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomRulesLevelRangeText:SetText ( GRM.L ( "Level Range:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText:SetText ( GRM.L ( "Require Text Match" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCompareStringCheckButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText:SetText ( GRM.L ( "Player Guild Rep is" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepSymbolSelected.GRM_GuildRepSymbolSelectedText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRanksSelected.GRM_GuildRepRanksSelectedText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText:SetText ( GRM.L ( "Only Match Empty Notes" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolEmptyCheckButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText:SetText ( GRM.L ( "Public Note" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolPublicNoteCheckButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText:SetText ( GRM.L ( "Officer Note" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolOfficerCheckButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText:SetText ( GRM.L ( "Custom Note" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolCustomCheckButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ToolSuggestIdeasText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_GuildRepRuleCheckButtonTextRetailOnlyText:SetText ( GRM.L ( "(Disabled in Classic)" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbuttonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbuttonText:SetText ( GRM.L ( "Disable chat log spam while using the Macro Tool" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton , GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbuttonText );

    -- Updated Rules
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesText:SetText ( GRM.L ( "Apply Rules to:" ) );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text:SetText ( GRM.L ( "All" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton1.GRM_ApplyRulesRadioButton1Text );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text:SetText ( GRM.L ( "Alts Only" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton2.GRM_ApplyRulesRadioButton2Text );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text:SetText ( GRM.L ( "Mains Only" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRulesRadioButton3.GRM_ApplyRulesRadioButton3Text );

    -- Custom Log msg
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButtonText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButtonText:SetText ( GRM.L ( "Custom Log Entry Message" ) );
    GRM.NormalizeHitRects ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButton , GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageButtonText );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBox:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxCount:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 10 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_CustomLogMessageEditBoxTip:SetText ( GRM.L ( "Press ENTER to Save" ) );

    -- Promotions and Demotions
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton1Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_ApplyRegardlessActivityRadialButton2Text:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_RankDestinationText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.GRM_DestinationRankSelected.GRM_DestinationRankSelectedText:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 12 );

    
    -- UI modications as needed for localization purposes as well as different pinning and additional options depening on macro type.
    GRM_UI.LocalizationMModifications();
    GRM_UI.ModifyRuleUI();

end

-----------------------------
--- UI Control Functions ----
-----------------------------

-- Method:          GRM_UI.RefreshToolPermissionReport()
-- What it Does:    Rebuilds the permissions text
-- Purpose:         UX
GRM_UI.RefreshToolPermissionReport = function()
    if GRM_UI.GRM_ToolCoreFrame.IsInitialized and GRM_UI.GRM_ToolCoreFrame:IsVisible() then
        if CanGuildRemove() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:Hide();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions1_K:Show();
        end

        if CanGuildPromote() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:Hide();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions2_P:Show();
        end

        if CanGuildDemote() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:Hide();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTextPermissions3_D:Show();
        end
    end
end


-----------------------------
----- QUED SCROLL FRAME -----
-----------------------------

-- Method:          GRM.GetQueuedEntries ( bool )
-- What it Does:    Determines which grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the mass kick tool
GRM.GetQueuedEntries = function ()
    local result = {};

    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
        if CanGuildRemove() then
            result = GRM.GetKickNamesByFilterRules();
        end
    elseif ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 and CanGuildPromote() ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and CanGuildDemote() ) then
        result = GRM.GetNamesByFilterRules ( GRM_UI.GRM_ToolCoreFrame.TabPosition );
    end

    return result;
end

-- Method:          GRM.SetKickQueuedValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetKickQueuedValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind];

    -- Player Name
    line[2]:SetText ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].name );
    line[2]:SetTextColor ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].class[1] , GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].class[2] , GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].class[3] , 1 );
    line[3]:SetText ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action );

    if GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action == GRM.L ( "Kick" )then
        line[3]:SetTextColor ( 1 , 0 , 0 , 1 );
    elseif GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action == GRM.L ( "Promote" ) then
        line[3]:SetTextColor ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[4][1] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[4][2] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[4][3] , 1 );
    elseif GRM_UI.GRM_ToolCoreFrame.QueuedEntries[ind2].action ==  GRM.L ( "Demote" ) then
        line[3]:SetTextColor ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[5][1] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[5][2] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[5][3] , 1 );
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateQueuedTooltip ( ind );
    end
end

-- Method:          GRM.KickQueuedHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickQueuedHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        -- Shift them down...
        for i = 1 , #buttons - 1 do

            -- Header Line
            buttons[i][2]:SetText( buttons[i+1][2]:GetText() );
            buttons[i][2]:SetTextColor ( buttons[i+1][2]:GetTextColor ( buttons[i+1][3]:GetText() ) );
            buttons[i][3]:SetText( buttons[i+1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i+1][3]:GetTextColor ( buttons[i+1][3]:GetText() ) );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickQueuedSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateQueuedTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickQueuedHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickQueuedHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        for i = #buttons , 2 , -1 do

            buttons[i][2]:SetText( buttons[i-1][2]:GetText() );
            buttons[i][2]:SetTextColor ( buttons[i-1][2]:GetTextColor ( buttons[i-1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i-1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i-1][3]:GetTextColor ( buttons[i-1][3]:GetText() ) );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickQueuedSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateQueuedTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickQueuedSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe backups at position 16
-- Purpose:         Clean scrolling
GRM.KickQueuedSetLastValue = function()
    GRM.SetKickQueuedValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset );
end

-- Method:          GRM.KickQueuedSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe backups at position 1
-- Purpose:         Clean scrolling
GRM.KickQueuedSetFirstValue = function()
    GRM.SetKickQueuedValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.GetToolTipLine ( table )
-- What it Does:    Constructs a string based on the rule info, for a tooltip
-- Purpose:         UX
GRM.GetToolTipLine = function ( rulePart )
    local result = {};

    for i = 1 , #rulePart do
        if rulePart[i][1] == "Inactive" then
            table.insert ( result , " - " .. GRM.L ( "Last Online" ) .. ": " .. GRM.HoursReport ( rulePart[i][2] ) );
        elseif rulePart[i][1] == "Rank" then
            table.insert ( result , " - " .. GRM.L ( "Matching Rank" ) .. ": " .. rulePart[i][2] );
        elseif rulePart[i][1] == "Level" then
            table.insert ( result , " - " .. GRM.L ( "Within Level Range: {num} - {custom1}" , nil , nil , rulePart[i][2] , rulePart[i][3] ) );
        elseif rulePart[i][1] == "Note Match" then
            table.insert ( result , " - " .. GRM.L ( "Note match: {name}" , "\"" .. rulePart[i][2] .. "\"" ) );
        elseif rulePart[i][1] == "Empty Note Match" then
            table.insert ( result , " - " .. GRM.L ( "Empty Note match: {name}" , "\"" .. rulePart[i][2] .. "\"" ) );
        elseif rulePart[i][1] == "Main/Alt" then
            table.insert ( result , " - " .. GRM.L ( "Main/Alt: {name}" , "\"" .. rulePart[i][2] .. "\"" ) );
        elseif rulePart[i][1] == "RankTime" then
            table.insert ( result , " - " .. GRM.L ( "Time at Rank: {name}" , "\"" .. rulePart[i][2] .. "\"" ) );
        elseif rulePart[i][1] == "Rep" then
            table.insert ( result , " - " .. rulePart[i][2] );
        end
    end

    return result;
end

-- Method:          GRM.UpdateQueuedTooltip()
-- What it Does:    Sets the tooltip for the Queued scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateQueuedTooltip = function ( ind )

    local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2]:GetText();
    local details;

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( playerName , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2]:GetTextColor() );

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries do
        if GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i].name == playerName then
            for j = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i] , 1 , -1 do
                GameTooltip:AddLine ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i][j][1] )     -- Rule Name
                details = GRM.GetToolTipLine ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i][j][2] );     -- Rule Sub details

                for k = 1 , #details do
                    GameTooltip:AddLine ( details[k] , 1 , 1 , 1 );
                end
                GameTooltip:AddLine ( " " );    -- adds a small space between the lines

            end

            break;
        end
    end

    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FCtrl-Click|r to open Player Window" ) );
    GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FCtrl-Shift-Click|r to Search the Log for Player" ) );
    GameTooltip:Show();

end

-- Method:          GRM.TriggerKickQueuedWindowRefresh()
-- What it Does:    Refreshes the GRM Kick Tool's Queued window after hiding the tooltip
-- Purpose:         Prevent code bloat for something with repeated use.
GRM.TriggerKickQueuedWindowRefresh = function()
    GRM_UI.RestoreTooltipScale();
    GameTooltip:Hide();
    GRM.BuildQueuedScrollFrame ( true , true , false );
    GRM_UI.RefreshToolButtonsOnUpdate();
end

-- Method:          GRM.BuildQueuedScrollFrame( bool , bool , bool )
-- What it Does:    Updates the Queued scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildQueuedScrollFrame = function ( showAll , fullRefresh , isBanAltList , bannedInGuildList )
    local hybridScrollFrameButtonCount = 13;
    local buttonHeight = 25;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame:GetWidth() - 5;
    if showAll and fullRefresh then
        GRM_UI.GRM_ToolCoreFrame.ValidatedNames = {};
        if not isBanAltList and not bannedInGuildList then
            GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.GetQueuedEntries ( true );
        elseif isBanAltList then
            GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.DeepCopyArray ( GRM_G.KickAllAltsTable );
            GRM_G.KickAllAltsTable = {};
        elseif bannedInGuildList then
            GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.DeepCopyArray ( GRM_G.KickAllBannedTable );
            GRM_G.KickAllBannedTable = {};
        end
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.QueuedEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "QueuedButton1_" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "QueuedString1_" .. i , "OVERLAY" , "GameFontWhiteTiny" ),
                    button:CreateFontString ( "QueuedString2_" .. i , "OVERLAY" , "GameFontWhiteTiny" )
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                GRM.BuildKickQueuedScrollButtons ( i  , false );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset then
            GRM.SetKickQueuedValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons , 
        GRM.KickQueuedHybridShiftDown , GRM.KickQueuedHybridShiftUp , hybridScrollFrameButtonCount
    );

    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 13 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollFrameSilder:Hide();
    end

    if #GRM_UI.GRM_ToolCoreFrame.QueuedEntries > 0 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetText( GRM.L ( "Click to Build Macro" ) );
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton.GRM_ToolBuildMacroButtonText:SetText( GRM.L ( "No Current Names to Add" ) );
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalQueText2:SetText ( #GRM_UI.GRM_ToolCoreFrame.QueuedEntries );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameTotalIgnoredText2:SetText ( #GRM_UI.GRM_ToolCoreFrame.Safe );

end

-- Method:          GRM.BuildKickQueuedScrollButtons ( int , boolean )
-- What it Does:    Initiates the buttons and their values for each line of the Queued window of the GRM kick tool's hybridscrollframe
-- Purpose:         Create a smooth scrolling experience in the GRM kick window
GRM.BuildKickQueuedScrollButtons = function ( ind , isResizeAction )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2];
    local buttonText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][3];

    -- Name
    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        buttonText1:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( 146 )
        buttonText1:SetWordWrap ( false );

        buttonText2:SetPoint ( "LEFT" , buttonText1 , "RIGHT" , 5 , 0 );
        buttonText2:SetJustifyH ( "CENTER" );
        buttonText2:SetWidth ( 101 )
        buttonText2:SetWordWrap ( false );

        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
            GRM_UI.SaveToolPosition();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( _ , button )
            local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolQueuedScrollChildFrame.AllButtons[ind][2]:GetText();
            if button == "LeftButton" then
                if IsShiftKeyDown() and IsControlKeyDown() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    -- If Core GRM window is not open, let's open it!
                    if not GRM_UI.GRM_RosterChangeLogFrame:IsVisible() then
                        GRM_UI.GRM_RosterChangeLogFrame:Show();
                    end
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogTab:Click();
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame.GRM_LogEditBox:SetText( GRM.SlimName ( playerName ) );
                elseif IsControlKeyDown() then
                    GRM.OpenPlayerWindow( playerName );
                end
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateQueuedTooltip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);
    end
end

-- Method:          GRM.IsMouseStillOverAnyButton ( array )
-- What it Does:    Returns true if the mouse is still over anothe button in the hybridscrollframe
-- Purpose:         
GRM.IsMouseStillOverAnyButton = function ( buttons )
    local result = false;
        
    for i = 1 , #buttons do
        if buttons[i][1]:IsMouseOver() then
            result = true;
            break;
        end
    end

    return result;
end

---------------------------
--- MACROD Scroll Frame ---
---------------------------

-- Method:          GRM.IsAnyMacroHighlighted()
-- What it Does:    It scans t hrough the macros and reports true if any are selected and the number of selected
-- Purpose:         To adjust the text statement of the button.
GRM.IsAnyMacroHighlighted = function()
    local result = false;
    local count = 0;

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted then
            count = count + 1;
            result = true;
        end
    end

    return result , count;
end

-- Method:          GRM.SetMacroButtonText()
-- What it Does:    Determines which text messages needs to be set to the button text.
-- Purpose:         UX quality of life.
GRM.SetMacroButtonText = function()
    local result , count = GRM.IsAnyMacroHighlighted();
    if result then
        if count > 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "Click to remove selected names from the macro" ) );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "Click to remove selected name from the macro" ) );
        end
    else
        if #GRM_UI.GRM_ToolCoreFrame.MacroEntries == 0 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "Macro is currently empty" ) );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolClearSelectedMacrodNamesButton.GRM_ToolClearSelectedMacrodNamesButtonText:SetText ( GRM.L ( "No names selected to remove from macro" ) );
        end
    end
end

-- Method:          GRM.IsNameBlacklisted ( string )
-- What it Does:    Returns true if name is on the temp blacklisted list as it has been removed from the macro build.
-- Purpose:         Keep the purge macro names from being rebuilt into the macro, for this session of the window being open.
GRM.IsNameBlacklisted = function ( name )
    local result = false;

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames[i] == name then
            result = true;
            break;
        end
    end

    return result;
end

-- Method:          GRM.AdjustForDemoteMacroLimitation ( table )
-- What it Does:    Checks for duplicates in the list and purges all of them. This implies there are multiple players with the same name.
-- Purpose:         The /gdemote macro command has a limitation on merged realm guilds. You cannot get the macro to work (as of patch 9.0.2) if the server is appended
--                  This ultimately creates a point of flaw where in a merged realm you can have multiple characters with the same name, but from different realms. As such, for the addon to compensate,
--                  what happens is GRM decides to just purge the names of the players with the SAME name and instead gives a notification for the player to do those demotions manually, in the rare, edge case scenario
--                  this this might occur. Hopefully Blizzard revises this macro at some point in the future.
GRM.AdjustForDemoteMacroLimitation = function ( entries )
    local names = {};
    local count , num = 0 , 0;
    local name = {};
    local listOfMembers = GRM.GetListOfGuildies( true );

    for i = #entries , 1 , -1 do
        num = 0;
        name = GRM.SlimName ( entries[i].name );        -- Next name
        
        for j = 1 , #listOfMembers do                   -- Let's compare to existing guild. If this person on the list has 2 copies of a member in the guild with the same name we are in trouble.

            if name == listOfMembers[j] then
                -- name match!!!
                num = num + 1;

                if num > 1 then                         -- sign of 2 copies!!!
                    if not names[name] then             -- don't need to add more than once.
                        names[name] = entries[i].name;  -- Add the full name for report to chat
                        count = count + 1;
                    end
                    table.remove ( entries , i ); -- purge repeats
                end
                break;

            end
        end

    end

    -- Now, we remove the purged names
    for n in pairs ( names ) do
        for i = #entries , 1 , -1 do
            if GRM.SlimName ( entries[i].name ) == n then
                table.remove ( entries , i);
                break;
            end
        end
    end

    if count > 0 then
        for _ , fullName in pairs ( names ) do
            GRM.Report ( GRM.L ( "GRM:" ) .. " " .. GRM.L ( "Demotion Macro Limitation!!! Unable to demote {name} due to multiple players in the guild with the same name, though different realms. Please demote manually." , fullName ) );
        end
    end
    
    return entries;
end

-- Method:          GRM.GetMacroEntries ()
-- What it Does:    Determines which grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the mass kick tool
GRM.GetMacroEntries = function ()
    local result = {};
    local macroTxt = "";
    local tempText = "";
    local finalCount = 0;
    local count = 0;
    local count2 = 0;
    local i = 1;

    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
        GRM_UI.GRM_ToolCoreFrame.QueuedEntries = GRM.AdjustForDemoteMacroLimitation ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries );
    end

    local entries = GRM_UI.GRM_ToolCoreFrame.QueuedEntries;
    local macroSet = false;
    
    -- Create the macro
    while i <= #entries do
        if not GRM.IsNameBlacklisted ( entries[i].name ) then
            tempText = macroTxt;
            -- Save room on the macro if player is on the same server as you
            if count == 0 then
                tempText = "/run GRM.RMM()\n" .. entries[i].macro .. " " .. GRM.GetMacroFormattedName ( entries[i].name );
                count = 1;
            else
                tempText = tempText .. "\n" .. entries[i].macro .. " " .. GRM.GetMacroFormattedName ( entries[i].name );
            end

            -- Macro still not full and we are still on the first set
            if #tempText < 256 and count2 == 0 then
                macroTxt = tempText;
                table.insert ( result , entries[i] );
                i = i + 1;

            -- Macro Still not full and we are on the 2nd loop that is not being used to be built
            elseif #tempText < 256 and count2 > 0 then
                macroTxt = tempText;
                i = i + 1;

            -- Macro IS full, and we are still on the first set.
            elseif #tempText > 255 and count2 == 0 then
                finalCount = #macroTxt;
                GRM.CreateMacro ( macroTxt , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , "CTRL-SHIFT-K" );
                macroSet = true;
                count = 0;
                count2 = count2 + 1;
                macroTxt = "";
                tempText = "";

            -- Macro IS full, and we are on the subsequent sets.
            elseif #tempText > 255 and count2 > 0 then
                count = 0;
                count2 = count2 + 1;
                macroTxt = "";
            end

        else
            i = i + 1;      -- Name was blacklisted, moving on.
        end

        if i > #entries then
            if not macroSet and #tempText > 0 then
                finalCount = #macroTxt;
                GRM.CreateMacro ( macroTxt , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , "CTRL-SHIFT-K" );
            end
            count2 = count2 + 1;
            -- Finished!
        end
    end

    return result , count2 , finalCount;
end

-- Method:          GRM.GetMacroCountForPromoteAndDemote()
-- What it Does:    Returns the count of the number of times a macro needs to be hit
-- Purpose:         To inform the player how many times macro must be hit.
GRM.GetMacroCountForPromoteAndDemote = function()
    local macroTxt = "";
    local tempText = "";
    local count = 0;
    local count2 = 0;
    local i = 1;
    local entries = GRM.DeepCopyArray ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries );
    local listOfNames = {};
    
    -- Create the macro
    while i <= #entries do
        if not GRM.IsNameBlacklisted ( entries[i].name ) then
            tempText = macroTxt;
            -- Save room on the macro if player is on the same server as you
            if count == 0 then
                tempText = "/run GRM.RMM()\n" .. entries[i].macro .. " " .. GRM.GetMacroFormattedName ( entries[i].name );
                count = 1;
            else
                tempText = tempText .. "\n" .. entries[i].macro .. " " .. GRM.GetMacroFormattedName ( entries[i].name );
            end

            -- Macro still not full and we are still on the first set
            if #tempText < 256 and count2 == 0 then
                macroTxt = tempText;

                if entries[i].numRankJumps > 1 then
                    entries[i].numRankJumps = entries[i].numRankJumps - 1;
                    table.insert ( listOfNames , entries[i] );
                end
                i = i + 1;

            -- Macro Still not full and we are on the 2nd loop that is not being used to be built
            elseif #tempText < 256 and count2 > 0 then
                macroTxt = tempText;

                if entries[i].numRankJumps > 1 then
                    entries[i].numRankJumps = entries[i].numRankJumps - 1;
                    table.insert ( listOfNames , entries[i] );
                end
                i = i + 1;

            -- Macro IS full, and we are still on the first set.
            elseif count2 == 0 and ( #tempText > 255 or ( i == #entries and #listOfNames > 0 ) ) then
                count = 0;
                count2 = count2 + 1;
                macroTxt = "";
                tempText = "";
                if #listOfNames > 0 then
                    for j = 1 , #listOfNames do
                        table.insert ( entries , listOfNames[j] );
                    end
                    listOfNames = {};
                end

            -- Macro IS full, and we are on the subsequent sets.
            elseif count2 > 0 and ( #tempText > 255 or ( i == #entries and #listOfNames > 0 ) ) then
                count = 0;
                count2 = count2 + 1;
                macroTxt = "";
                if #listOfNames > 0 then
                    for j = 1 , #listOfNames do
                        table.insert ( entries , listOfNames[j] );
                    end
                    listOfNames = {};
                end
            end

        else
            i = i + 1;      -- Name was blacklisted, moving on.
        end

        if i > #entries then
            count2 = count2 + 1;
        
            if #listOfNames > 0 then
                count = 0;
                macroTxt = "";
                tempText = "";
                for j = 1 , #listOfNames do
                    table.insert ( entries , listOfNames[j] );
                end
                listOfNames = {};
            end
        end
    end

    return count2;
end

-- Method:          GRM.IsMacroActionComplete()
-- What it Does:    Checks if any names on the qued list are not blacklist and if so, they are still going to be built into the macro list, thus we know it is not complete
-- Purpose:         Useful to know when all macro actions have compelted to do a verification they reached destination ranks
GRM.IsMacroActionComplete = function()
    local result = true;
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.QueuedEntries do
        if not GRM.IsNameBlacklisted ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries[i].name ) then
            result = false;
        end
    end

    return result;
end

-- Method:          GRM.PurgeMacrodNames()
-- What it Does:    Removes the names just macro'd from the list
-- Purpose:         Rebuild the macros ASAP!
GRM.PurgeMacrodNames = function()
    local startCount = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries;

    for i = #GRM_UI.GRM_ToolCoreFrame.MacroEntries , 1 , -1 do
        for j = #GRM_UI.GRM_ToolCoreFrame.QueuedEntries , 1 , -1 do
            if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name == GRM_UI.GRM_ToolCoreFrame.QueuedEntries[j].name then

                if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
                    table.remove ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries , j );
                else
                    -- Don't purge from the quue yet if they need multiple jumps.
                    if GRM_UI.GRM_ToolCoreFrame.QueuedEntries[j].numRankJumps > 1 then
                        GRM_UI.GRM_ToolCoreFrame.QueuedEntries[j].numRankJumps = GRM_UI.GRM_ToolCoreFrame.QueuedEntries[j].numRankJumps - 1;
                    else
                        table.remove ( GRM_UI.GRM_ToolCoreFrame.QueuedEntries , j );
                    end
                end
                GRM_UI.GRM_ToolCoreFrame.ValidatedNames[GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name] = GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].rankIndex;
                table.remove ( GRM_UI.GRM_ToolCoreFrame.MacroEntries , i );
                break;
            end
        end
    end

    if startCount ~= #GRM_UI.GRM_ToolCoreFrame.QueuedEntries then
        C_Timer.After ( 0.5 , function()
            GRM.GetCountOfNamesBeingFiltered();
            GRM.RefreshSelectHybridFrames ( true , true , true , false );
        end);
    end

end

-- Method:          GRM.ValidateMacroRecordingSuccess ( bool )
-- What it Does:    Checks if all of the rank changes matched their destination rank, if not, rescans the roster for changes
-- Purpose:         To ensure integrity of the roster
GRM.ValidateMacroRecordingSuccess = function( isReScan )
    local ranksAllMatching = true;
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];

    for name , rankIndex in pairs ( GRM_UI.GRM_ToolCoreFrame.ValidatedNames ) do
        if guildData[name].rankIndex ~= rankIndex then
            ranksAllMatching = false;
            break;
        end
    end

    if not ranksAllMatching then
        if not isReScan then        -- Only going to scan 1 time...
            GRM.Report ( GRM.L ( "GRM:" ) .. " : " .. GRM.L ( "Not all macro changes validated. One moment..." ) );
            GRM_G.ManualScanEnabled = true;
            GRM_UI.GRM_ToolCoreFrame.MacroSuccess = false
            GRM_G.changeHappenedExitScan = false;
            C_Timer.After ( 1 , function()
                GRM.BuildNewRoster();
            end);
        else
            -- Not able to validate
            GRM_UI.GRM_ToolCoreFrame.MacroSuccess = true;
            GRM.Report ( GRM.L ( "Warning! Macro changes were not able to be validated. Please verify expected results before using the macro tool further." ) );
        end
    else
        GRM_UI.GRM_ToolCoreFrame.MacroSuccess = true;
        GRM_G.changeHappenedExitScan = false;       -- This doesn't need to be set when using macro tool
        GRM.Report ( GRM.L ( "Macro rank changes have been validated!" ) );
    end

end

-- Method:          GRM.SetMacroValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetMacroValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind];

    -- Player Name
    line[2]:SetText ( GRM.GetMacroFormattedName ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].name ) );
    line[2]:SetTextColor ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].class[1] , GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].class[2] , GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].class[3] , 1 );
    line[3]:SetText ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].macro );
    line[4]:SetText ( GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].numRankJumps );

    if GRM_UI.GRM_ToolCoreFrame.MacroEntries[ind2].isHighlighted then
        line[1]:LockHighlight();
    else
        line[1]:UnlockHighlight();
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateMacrodTooltip ( ind );
    end
end

-- Method:          GRM.KickMacrodHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickMacrodHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        -- Shift them down...
        for i = 1 , #buttons - 1 do
            name = buttons[i+1][2]:GetText();
            -- Header Line
            buttons[i][2]:SetText( name );
            buttons[i][2]:SetTextColor ( buttons[i+1][2]:GetTextColor ( buttons[i+1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i+1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i+1][3]:GetTextColor ( buttons[i+1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
                if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickMacrodSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateMacrodTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickMacrodHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickMacrodHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 13 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        for i = #buttons , 2 , -1 do
            name = buttons[i-1][2]:GetText();

            buttons[i][2]:SetText( name );
            buttons[i][2]:SetTextColor ( buttons[i-1][2]:GetTextColor ( buttons[i-1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i-1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i-1][3]:GetTextColor ( buttons[i-1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
                if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.MacroEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.KickMacrodSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateMacrodTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickMacrodSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe backups at position 16
-- Purpose:         Clean scrolling
GRM.KickMacrodSetLastValue = function()
    GRM.SetMacroValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset );
end

-- Method:          GRM.KickMacrodSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe backups at position 1
-- Purpose:         Clean scrolling
GRM.KickMacrodSetFirstValue = function()
    GRM.SetMacroValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.UpdateMacrodTooltip()
-- What it Does:    Sets the tooltip for the Macrod scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateMacrodTooltip = function ( ind )
    local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2]:GetText();

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( playerName , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2]:GetTextColor() );

    GameTooltip:AddLine ( " " );    -- adds a small space between the lines
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FClick|r to Select for Removal" ) );
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FCtrl-Click|r to open Player Window" ) );
    GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FCtrl-Shift-Click|r to Search the Log for Player" ) );
    GameTooltip:Show();
end

-- Method:          GRM.TriggerKickMacrodWindowRefresh()
-- What it Does:    Refreshes the GRM Kick Tool's Macrod window after hiding the tooltip
-- Purpose:         Prevent code bloat for something with repeated use.
GRM.TriggerKickMacrodWindowRefresh = function()
    GRM_UI.RestoreTooltipScale();
    GameTooltip:Hide();
    GRM.BuildMacrodScrollFrame ( true , true );
    GRM_UI.RefreshToolButtonsOnUpdate();
end

-- Method:          GRM.RemoveNamesFromMacroEntries()
-- what it Does:    Cleans up the macro as needed
-- Purpose:         UX features for easier use.
GRM.RemoveNamesFromMacroEntries = function ()
    for i = #GRM_UI.GRM_ToolCoreFrame.MacroEntries , 1 , - 1 do
        if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted then
            GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = false;
            table.insert ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames , GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name );        -- Add the name to the blacklist
            table.remove ( GRM_UI.GRM_ToolCoreFrame.MacroEntries , i );
        end
    end
    -- need to remove from qued as well.
    GRM.BuildMacrodScrollFrame ( false , false );
end

-- Method:          GRM.RMM()
-- What it Does:    Resets Macro
-- Purpose:         Clear the macro after each use so it can be rebuilt - prevents double use of macro by spam clicking.
GRM.RMM = function()
    GRM.CreateMacro ( "" , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , GRM_G.MacroHotKey );
    GRM_G.HK = true;
end

-- Method:          GRM.BuildMacrodScrollFrame( bool , bool )
-- What it Does:    Updates the Macrod scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildMacrodScrollFrame = function ( showAll , fullRefresh )
    local hybridScrollFrameButtonCount = 13;
    local buttonHeight = 25;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame:GetWidth() - 5;
    local count = 0;
    local size = 0;

    GRM.ResetToolMacrodHighlights();
    
    if ( showAll and fullRefresh ) or ( not showAll and not fullRefresh ) then

        GRM_UI.GRM_ToolCoreFrame.MacroEntries , count , size = GRM.GetMacroEntries();

        if GRM_UI.GRM_ToolCoreFrame.TabPosition > 1 then
            count = GRM.GetMacroCountForPromoteAndDemote();     -- Specialized count for multi-hit promotions/demotions
        end

    elseif not fullRefresh then
        GRM.CreateMacro ( "" , "GRM_Tool" , "INV_MISC_QUESTIONMARK" , GRM_G.MacroHotKey );    -- Clear the macro
    end


    GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.MacroEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.MacroEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "MacrodButton1_" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "MacrodString1_" .. i , "OVERLAY" , "GameFontWhiteTiny" ),
                    button:CreateFontString ( "MacrodString2_" .. i , "OVERLAY" , "GameFontNormalTiny" ),
                    button:CreateFontString ( "MacrodString3_" .. i , "OVERLAY" , "GameFontNormalTiny" )
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                -- button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                GRM.BuildKickMacrodScrollButtons ( i  , false );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset then
            GRM.SetMacroValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.MacroEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.MacroEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons , 
        GRM.KickMacrodHybridShiftDown , GRM.KickMacrodHybridShiftUp , hybridScrollFrameButtonCount
    );
    
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 13 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollFrameSilder:Hide();
    end

    -- Macro text
    if #GRM_UI.GRM_ToolCoreFrame.MacroEntries > 0 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:SetText ( GRM.L ( "Macro Size: {num}/255" , nil , nil , size ) );
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:Show();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:SetText ( GRM.GetHotKeyRecommendationScript ( count ) );

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:Show();

        if GRM_UI.GRM_ToolCoreFrame.TabPosition > 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:Show();
        end
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText3:Hide();
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameText7:Hide();
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:Hide();
    end

    -- Not relevant for kicks, only macros and demotions - kicks == 1
    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
        GRM_UI.GRM_ToolCoreFrame.GRM_TooCoreFrameLimitationText:Hide();
    end

    -- Permissions Text
    GRM_UI.RefreshToolPermissionReport();
    GRM.SetMacroButtonText();

end

-- Method:          GRM.GetHotKeyRecommendationScript ( int )
-- What it Does:    Gets the proper hotkey message to the player based on the type of macro action, and if plural or singular form
-- Purpose:         Quality of life and properly grammatic messaging.
GRM.GetHotKeyRecommendationScript = function ( count )
    count = "|CFFFF0000" .. count .. "|r";
    local singularEnum = { [1] = GRM.L ( "When you are ready to remove the players, press the Hot-Key {name} 1 time to complete all actions" , "|CFF00CCFF" .. GRM_G.MacroHotKey .. "|r" ) , [2] = GRM.L ( "When you are ready to Promote the player, press the Hot-Key {name} 1 time to complete all actions" , "|CFF00CCFF" .. GRM_G.MacroHotKey .. "|r" ) , [3] = GRM.L ( "When you are ready to Demote the player, press the Hot-Key {name} 1 time to complete all actions" , "|CFF00CCFF" .. GRM_G.MacroHotKey .. "|r" ) }
    local pluralEnum = { [1] = GRM.L ( "When you are ready to remove the players, press the Hot-Key {name} {num} times to complete all actions" , "|CFF00CCFF" .. GRM_G.MacroHotKey .. "|r" , nil , count ) , [2] = GRM.L ( "When you are ready to Promote the players, press the Hot-Key {name} {num} times to complete all actions" , "|CFF00CCFF" .. GRM_G.MacroHotKey .. "|r" , nil , count ) , [3] = GRM.L ( "When you are ready to Demote the players, press the Hot-Key {name} {num} times to complete all actions" , "|CFF00CCFF" .. GRM_G.MacroHotKey .. "|r" , nil , count ) }

    if count == 1 then
        return singularEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition];
    else
        return pluralEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition];
    end
end

-- Method:          GRM.ResetToolMacrodHighlights()
-- What it Does:    Unlocks all the highlights
-- Purpose:         GRM special tool UX
GRM.ResetToolMacrodHighlights = function()
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons ~= nil then
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons do
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        end
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
        GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = false;
    end
end

-- Method:          GRM.BuildKickMacrodScrollButtons ( int , boolean )
-- What it Does:    Initiates the buttons and their values for each line of the Macrod window of the GRM kick tool's hybridscrollframe
-- Purpose:         Create a smooth scrolling experience in the GRM kick window
GRM.BuildKickMacrodScrollButtons = function ( ind , isResizeAction )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2];
    local buttonText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][3];
    local buttonText3 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][4];

    -- Name
    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText3:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        buttonText1:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( 146 )
        buttonText1:SetWordWrap ( false );

        buttonText2:SetPoint ( "LEFT" , buttonText1 , "RIGHT" , 5 , 0 );
        buttonText2:SetJustifyH ( "LEFT" );
        buttonText2:SetWidth ( 150 );
        buttonText2:SetWordWrap ( false );

        buttonText3:SetPoint ( "RIGHT" , coreButton , "RIGHT" , -20 , 0 );
        buttonText3:SetJustifyH ( "RIGHT" );
        buttonText3:SetWordWrap ( false );

        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
            GRM_UI.SaveToolPosition();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( _ , button )
            local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][2]:GetText();
            if string.find ( playerName , "-" , 1 , true ) == nil then
                playerName = playerName .. "-" .. GRM_G.realmName;
            end
            if button == "LeftButton" then
                if IsShiftKeyDown() and IsControlKeyDown() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    -- If Core GRM window is not open, let's open it!
                    if not GRM_UI.GRM_RosterChangeLogFrame:IsVisible() then
                        GRM_UI.GRM_RosterChangeLogFrame:Show();
                    end
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogTab:Click();
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame.GRM_LogEditBox:SetText( GRM.SlimName ( playerName ) );
                elseif IsControlKeyDown() then
                    GRM.OpenPlayerWindow( playerName );
                else

                    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.MacroEntries do
                        if GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].name == playerName then

                            if not GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1]:LockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = true;
                            else
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.AllButtons[ind][1]:UnlockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.MacroEntries[i].isHighlighted = false;
                            end
                            GRM.SetMacroButtonText();

                            break;
                        end
                    end

                end
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateMacrodTooltip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

    end
end

-------------------------
-- Ignored List Window --
-------------------------

-- Method:          GRM.HowManySafeListsIsPlayerOn ( player )
-- What it Does:    Returns true of the player is on the safe list of
-- Purpose:         UI control on the mouseover button tooltip 
GRM.HowManySafeListsIsPlayerOn = function ( player )
    local c = 0;

    for _ , safeList in pairs ( player.safeList ) do
        if safeList[1] then
            c = c + 1;
        end
    end

    return c;
end

-- Method:          GRM.IsAnyIgnoredHighlighted()
-- What it Does:    It scans through the Ignored List and reports true if any are selected and the number of selected
-- Purpose:         To adjust the text statement of the button.
GRM.IsAnyIgnoredHighlighted = function()
    local result = false;
    local count = 0;

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted then
            count = count + 1;
            result = true;
        end
    end

    return result , count;
end

-- Method:          GRM.SetIgnoredButtonText()
-- What it Does:    Determines which text messages needs to be set to the Clear Ignored Text
-- Purpose:         UX quality of life.
GRM.SetIgnoredButtonText = function()
    local result , count = GRM.IsAnyIgnoredHighlighted();
    if result then
        if count > 1 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "Click to remove selected names from Ignore List" ) );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "Click to remove selected name from Ignore List" ) );
        end
    else
        if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries == 0 then
            -- there ARE players on the safe list, but they are currently being filtered out to only show those with active actions being filtered.
            local c = #( select ( 2 , GRM.GetSafePlayers ( true ) ) );
            if c > 0 and GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
                if c > 1 then
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No players to select. {num} players filtered" , nil , nil , c ) );
                else
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No players to select. 1 player filtered" ) );
                end
            else
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No players on Ignore List" ) );
            end
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoreClearSelectionButton.GRM_ToolIgnoreClearSelectionButtonText:SetText ( GRM.L ( "No names selected to remove from Ignore List" ) );
        end
    end

    -- Count Visible
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreFrameText4:SetText( GRM.L ( "Ignored Players: {num}" , nil , nil , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries ) );
end

-- Method:          GRM.ResetIgnoredHighlights()
-- What it Does:    Unlocks all the highlights
-- Purpose:         GRM special tool UX
GRM.ResetIgnoredHighlights = function()
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons ~= nil then
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        end
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted = false;
    end
end

-- Method:          GRM.GetIgnoredEntries ()
-- What it Does:    Determines which grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the GRM Tool
GRM.GetIgnoredEntries = function ()
    local result = {};
    if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
        result = GRM.GetOnlySafePlayersWithIgnoredAction();
    else
        result = select ( 2 , GRM.GetSafePlayers ( true ) );
        
        -- Now, see if we need to add a reason.
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.Safe do
            for j = 1 , #result do
                if result[j].name == GRM_UI.GRM_ToolCoreFrame.Safe[i].name then
                    result[j].reason = GRM_UI.GRM_ToolCoreFrame.Safe[i].reason;
                    break;
                end
            end
        end
    end   

    return result;
end

-- Method:          GRM.RemoveHighlightedPlayersFromIgnoredList()
-- What it Does:    Removes the highlights from the selected names, and sets them to no longer be ignored, and then rebuilds teh frames with that data.
-- Purpose:         Ability to manage ignore list in mass.
GRM.RemoveHighlightedPlayersFromIgnoredList = function ()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local player;
    local rule = GRM_UI.ruleTypeEnum2[GRM_UI.GRM_ToolCoreFrame.TabPosition];

    -- We need to scan and find all the entries, then find them in the guild
    for i = #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries , 1 , -1 do

        -- First check if it is highlighted
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted then

            -- Now scan through the roster and update.
            player = guildData[ GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].name ];
            if player ~= nil then
                player.safeList[rule][1] = false;
                table.remove ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries , i );

                -- Rebuild the mouseover frame in case it is open
                if GRM_G.currentName == player.name and GRM_UI.GRM_MemberDetailMetaData:IsVisible() then
                    GRM.PopulateMemberDetails ( GRM_G.currentName );
                end
            end
        end
    end

    -- Unlock the highlights now.
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons ~= nil then
        for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        end
    end

    GRM.TriggerKickQueuedWindowRefresh();
    GRM.TriggerIgnoredQueuedWindowRefresh();
    GRM.SetIgnoredButtonText();
end

-- Method:          GRM.ClearAllPlayersFromIgnoreList()
-- What it Does:    Removes all players from the ignore list
-- Purpose:         Ease of allowing the player to easily remove all from the ignore list.
GRM.ClearAllPlayersFromIgnoreList = function()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local rule = GRM_UI.ruleTypeEnum2[GRM_UI.GRM_ToolCoreFrame.TabPosition];
    local count = 0;

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.safeList[rule][1] then
                player.safeList[rule][1] = false;
                count = count + 1;
            end
        end
    end

    if count > 0 then
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons ~= nil then
            for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
            end
        end

        GRM.TriggerKickQueuedWindowRefresh();
        GRM.TriggerIgnoredQueuedWindowRefresh();
        GRM.SetIgnoredButtonText();

        if count == 1 then
            GRM.Report ( GRM.L ( "{num} player was removed from Ignore List" , nil , nil , "1" ) );
        else
            GRM.Report ( GRM.L ( "{num} players removed from the Ignored List" , nil , nil , count ) );
        end
        
        if GRM_UI.GRM_MemberDetailMetaData:IsVisible() then
            GRM_UI.GRM_MemberDetailMetaData.GRM_SafeFromRulesButton:SetChecked ( false );
        end
    end
end

-- Method:          GRM.GetNumIgnored()
-- What it Does:    Returns the count of total ignored people
-- Purpose:         To determine the number ignored for UI purposes.
GRM.GetNumIgnored = function()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local rule = GRM_UI.ruleTypeEnum2[GRM_UI.GRM_ToolCoreFrame.TabPosition];
    local count = 0;

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.safeList[rule][1] then
                count = count + 1;
            end
        end
    end

    return count;
end

-- Method:          GRM.IsAnyIgnored()
-- What it Does:    Returns true if at least one can be ignored - easy check rather than relying on a full count
-- Purpose:         UX
GRM.IsAnyIgnored = function()
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local rule = GRM_UI.ruleTypeEnum2[GRM_UI.GRM_ToolCoreFrame.TabPosition];
    local result = false;

    for _ , player in pairs ( guildData ) do
        if type ( player ) == "table" then
            if player.safeList[rule][1] then
                result = true;
                break;
            end
        end
    end

    return result;
end

-- Method:          GRM.GetOnlySafePlayersWithIgnoredAction()
-- What it Does:    Returns the list of players in a proper format for compatibility
-- Purpose:         Transition these useful lists to the ignored window frames, more for programming ease.
GRM.GetOnlySafePlayersWithIgnoredAction = function ()
    local result = {};
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.Safe do
        result[i] = {};
        result[i].name = GRM_UI.GRM_ToolCoreFrame.Safe[i].name;
        result[i].class = GRM_UI.GRM_ToolCoreFrame.Safe[i].class;
        result[i].isHighlighted = false;
        result[i].reason = GRM_UI.GRM_ToolCoreFrame.Safe[i].reason;
        result[i].rankIndex = GRM_UI.GRM_ToolCoreFrame.Safe[i].rankIndex;
        result[i].lastOnline = GRM_UI.GRM_ToolCoreFrame.Safe[i].lastOnline;
    end
    return result;
end

-- Method:          GRM.SetIgnoredValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetIgnoredValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind];
    local colors = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].class;
    -- Player Name
    line[2]:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].name );
    line[2]:SetTextColor ( colors[1] , colors[2] , colors[3] , 1 );
    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].reason > 0 then
        line[3]:SetText ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].reason );
        line[3]:SetTextColor ( 1.0 , 0.84 , 0 , 1 );
    else
        line[3]:SetText ( "None" );
        line[3]:SetTextColor ( 0 , 0.77 , 0.063 , 1 );
    end

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[ind2].isHighlighted then
        line[1]:LockHighlight();
    else
        line[1]:UnlockHighlight();
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateIgnoredToolTip ( ind );
    end
end

-- Method:          GRM.IgnoredHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries > 12 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        -- Shift them down...
        for i = 1 , #buttons - 1 do
            name = buttons[i+1][2]:GetText();

            -- Header Line
            buttons[i][2]:SetText( name );
            buttons[i][2]:SetTextColor ( buttons[i+1][2]:GetTextColor ( buttons[i+1][3]:GetText() ) );
            buttons[i][3]:SetText( buttons[i+1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i+1][3]:GetTextColor ( buttons[i+1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.IgnoredSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateIgnoredToolTip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.IgnoredHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries > 12 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons;
        local MouseOverButton = 0;
        local name = "";

        for i = #buttons , 2 , -1 do
            name = buttons[i-1][2]:GetText();

            buttons[i][2]:SetText( buttons[i-1][2]:GetText() );
            buttons[i][2]:SetTextColor ( buttons[i-1][2]:GetTextColor ( buttons[i-1][2]:GetText() ) );
            buttons[i][3]:SetText( buttons[i-1][3]:GetText() );
            buttons[i][3]:SetTextColor ( buttons[i-1][3]:GetTextColor ( buttons[i-1][3]:GetText() ) );

            for k = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
                if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].name == name then
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[k].isHighlighted then
                        buttons[i][1]:LockHighlight();
                    else
                        buttons[i][1]:UnlockHighlight();
                    end
                    break;
                end
            end

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        GRM.IgnoredSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateIgnoredToolTip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.IgnoredSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredSetLastValue = function()
    GRM.SetIgnoredValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset );
end

-- Method:          GRM.IgnoredSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe
-- Purpose:         Clean scrolling
GRM.IgnoredSetFirstValue = function()
    GRM.SetIgnoredValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.UpdateQueuedTooltip()
-- What it Does:    Sets the tooltip for the Queued scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateIgnoredToolTip = function ( ind )

    local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2]:GetText();
    local reason = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][3]:GetText();
    local lastOnline = "";
    local atLeastOne = false;
    local rankRestrictText = "";
    local index;

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( playerName , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2]:GetTextColor() );

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].name == playerName then
            index = i;
            if GRM_G.playerRankID >= GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].rankIndex then
                rankRestrictText = GRM.GetReasonIgnoredMsg ( GRM_G.playerRankID , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].rankIndex );
            end
            break;
        end
    end

    if string.find ( reason , GRM.L ( "Kick" ) , 1 , true ) then
        atLeastOne = true;
        
        if index ~= nil then
            lastOnline = GRM.HoursReport ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[index].lastOnline );
            GameTooltip:AddLine ( GRM.L ( "Last Online" ) );
            GameTooltip:AddLine ( lastOnline , 1 , 1 , 1 );
        end
    end

    if string.find ( reason , GRM.L ( "Promote" ) , 1 , true ) then
        atLeastOne = true;
    end

    if string.find ( reason , GRM.L ( "Demote" ) , 1 , true ) then
        atLeastOne = true;
    end

    if not atLeastOne then
        GameTooltip:AddLine ( GRM.L ( "Action" ) );
        GameTooltip:AddLine ( GRM.L ( "None" ) , 0 , 0.77 , 0.063 );
    end

    if rankRestrictText ~= "" then
        GameTooltip:AddLine ( rankRestrictText , 1 , 0 , 0 );
    end
    
    GameTooltip:AddLine ( " " );    -- adds a small space between the lines
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FClick|r to Select for Removal" ) );
    GameTooltip:AddLine ( GRM.L ( "|CFFE6CC7FCtrl-Click|r to open Player Window" ) );
    GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FCtrl-Shift-Click|r to Search the Log for Player" ) );
    GameTooltip:Show();

end

-- Method:          GRM.TriggerIgnoredQueuedWindowRefresh()
-- What it Does:    Refreshes the GRM Tool's Ignored window after hiding the tooltip
-- Purpose:         Prevent code bloat for something with repeated use.
GRM.TriggerIgnoredQueuedWindowRefresh = function()
    GRM_UI.RestoreTooltipScale();
    GameTooltip:Hide();
    
    if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].ignoreFilter then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolCoreIgnoreCheckButton:SetChecked( true );
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_IgnoreListRuleTypeText:SetText ( GRM_UI.ruleTypeEnum3[GRM_UI.GRM_ToolCoreFrame.TabPosition] );

    GRM.BuildIgnoredScrollFrame ( true , true );
    GRM.SetIgnoredButtonText();
    GRM_UI.RefreshToolButtonsOnUpdate();
end

-- Method:          GRM.BuildIgnoredScrollFrame( bool , bool )
-- What it Does:    Updates the Ignored scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildIgnoredScrollFrame = function ( showAll , fullRefresh )
    local hybridScrollFrameButtonCount = 12;
    local buttonHeight = 25;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame:GetWidth() - 5;

    GRM.ResetIgnoredHighlights();

    if showAll and fullRefresh then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries = GRM.GetIgnoredEntries ();
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "IgnoredButton1_" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "IgnoredString1_" .. i , "OVERLAY" , "GameFontWhiteTiny" ),
                    button:CreateFontString ( "IgnoredString2_" .. i , "OVERLAY" , "GameFontWhiteTiny" )
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                GRM.BuildIgnoredScrollButtons ( i  , false );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset then
            GRM.SetIgnoredValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons , 
        GRM.IgnoredHybridShiftDown , GRM.IgnoredHybridShiftUp , hybridScrollFrameButtonCount
    );

    if #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries > 12 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollFrameSilder:Hide();
    end

end

-- Method:          GRM.BuildIgnoredScrollButtons ( int , boolean )
-- What it Does:    Initiates the buttons and their values for each line of the Ignored List window
-- Purpose:         Create a smooth scrolling experience in the GRM Ignored window
GRM.BuildIgnoredScrollButtons = function ( ind , isResizeAction )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2];
    local buttonText2 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][3];

    -- Name
    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );
    buttonText2:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 11 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        buttonText1:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( 135 )
        buttonText1:SetWordWrap ( false );

        buttonText2:SetPoint ( "LEFT" , buttonText1 , "RIGHT" , 5 , 0 );
        buttonText2:SetJustifyH ( "CENTER" );
        buttonText2:SetWidth ( 101 )
        buttonText2:SetWordWrap ( false );

        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:StopMovingOrSizing();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( _ , button )
            local playerName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][2]:GetText();
            if button == "LeftButton" then
                if IsShiftKeyDown() and IsControlKeyDown() then
                    GRM_UI.RestoreTooltipScale();
                    GameTooltip:Hide();
                    -- If Core GRM window is not open, let's open it!
                    if not GRM_UI.GRM_RosterChangeLogFrame:IsVisible() then
                        GRM_UI.GRM_RosterChangeLogFrame:Show();
                    end
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogTab:Click();
                    GRM_UI.GRM_RosterChangeLogFrame.GRM_LogFrame.GRM_LogEditBox:SetText( GRM.SlimName ( playerName ) );
                elseif IsControlKeyDown() then
                    GRM.OpenPlayerWindow( playerName );
                else
                    -- Deal with the highlights!
                    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries do
                        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].name == playerName then

                            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted then
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1]:LockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted = true;
                            else
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.GRM_ToolIgnoredScrollChildFrame.AllButtons[ind][1]:UnlockHighlight();
                                GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame.AllIgnoredEntries[i].isHighlighted = false;
                            end
                            GRM.SetIgnoredButtonText();

                            break;
                        end
                    end

                end
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateIgnoredToolTip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);
    end
end


-----------------------------------
--------- RULES SCROLLFRAME -------
-----------------------------------

-- Method:          GRM.GetRulesCount( integer )
-- What it Does:    Returns the number of rules that already exist
-- purpose:         So it can be determined with rule number is being added
GRM.GetRulesCount = function ( RulesType )
    local count = 0;

    for _ in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM_UI.ruleTypeEnum[RulesType]] ) do
        count = count + 1;
    end

    return count;
end

-- Method:          GRM.RemoveKickRule()
-- What it Does:    Removes the named kick Rule
-- Purpose:         Ability to purge rules no longer needed.
GRM.RemoveKickRule = function( name )
    GRM.AdjustKickRuleNumbers ( name , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][name].ruleNumber );
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][name] = nil;
    GRM_UI.FullMacroToolRefresh();
end

-- Method:          GRM.RemoveRuleButtonLogic ( string , string )
-- What it Does:    Removes the given rule
-- Purpose:         Control over adding and removing rules.
GRM.RemoveRuleButtonLogic = function ( ruleType , name )
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
    GRM.AdjustKickRuleNumbers ( name , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][name].ruleNumber );
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][name] = nil;
    GRM_UI.FullMacroToolRefresh();
end

-- Method:          GRM.AdjustKickRuleNumbers ( string , int )
-- What it Does:    Adjusts the given rule number
GRM.AdjustKickRuleNumbers = function ( name , number )
    for ruleName , rule in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules ) do
        if ruleName ~= name and rule.ruleNumber > number then
            rule.ruleNumber = rule.ruleNumber - 1;
        end
    end
end

-- Method:          GRM.GetKickRule()
-- What it Does:    Returns the given rule by name
-- Purpose:         To easily be able to edit the existing rule
GRM.GetKickRule = function ( name )
    return GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][name] );
end

-- Method:          GRM.GetPromoteRule()
-- What it Does:    Returns the given rule by name
-- Purpose:         To easily be able to edit the existing rule
GRM.GetPromoteRule = function ( name )
    return GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["promoteRules"][name] );
end

-- Method:          GRM.GetDemoteRule()
-- What it Does:    Returns the given rule by name
-- Purpose:         To easily be able to edit the existing rule
GRM.GetDemoteRule = function ( name )
    return GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["demoteRules"][name] );
end

-- Method:          GRM.ChangeRuleName ( string , string , string )
-- What it Does:    Copies the old rule and sets the new one.
-- Purpose:         Allow the editing of the rule names
GRM.ChangeRuleName = function ( ruleType , newName , oldName )
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][newName] = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][oldName] );
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][newName].name = newName;
    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ruleType][oldName] = nil;
end

-- Method:          GRM.BuildNewKickRuleTemplate( string , int )
-- What it Does:    Creates a new rules template to be added on confirmation
-- Purpose:         To easily add new rules.
GRM.BuildNewKickRuleTemplate = function( name , num )
    local ruleNumber = num or GRM.GetRulesCount( 1 ) + 1;
    local ruleName = "";
    local nameSet = false;

    if name ~= nil then
        ruleName = name;
    else
        while not nameSet do
            ruleName = GRM.L ( "Kick Rule {num}" , nil , nil , ruleNumber );
            if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser]["kickRules"][ruleName] ~= nil then
                ruleNumber = ruleNumber + 1;
            else
                nameSet = true;
            end
        end
    end
    local result = {};

    result.name = ruleName
    result.isEnabled = true;
    result.ruleNumber = GRM.GetRulesCount( 1 ) + 1;

    result.applyRulesTo = 1;                -- All = 1 , Alts = 2 , Mains = 3

    result.activityFilter = true;
    result.isMonths = true;
    result.numDaysOrMonths = 12;
    result.allAltsApplyToKick = true;

    result.rankFilter = false;
    result.ranks = {};

    result.levelFilter = false;
    result.levelRange = { 1 , 999 };

    result.noteMatch = false;
    result.noteMatchEmpty = false;
    result.notesToCheck = { true , true , true };   -- Public , Officer, Custom
    result.matchingString = "";
    

    result.applyEvenIfActiive = false;
    result.rankSpecialIsMonths = true;
    result.rankSpecialNumDaysOrMonths = 12;
    
    result.repFilter = false;
    result.repOperator = 2
    result.rep = 4;            -- 4 = neutral

    result.customlog = false;
    result.customLogMsg = "";
    result.ruleIndex = num;

    return result , ruleName;
end

-- Method:          GRM.BuildNewPromoteOrDemoteRuleTemplate( string , int )
-- What it Does:    Creates a new rules template to be added on confirmation
-- Purpose:         To easily add new rules.
GRM.BuildNewPromoteOrDemoteRuleTemplate = function ( name , num )
    local ruleNumber = num or GRM.GetRulesCount( GRM_UI.GRM_ToolCoreFrame.TabPosition ) + 1;
    local ruleName = "";
    local nameSet = false;
    local ruleNameString = { [2] = "Promote Rule {num}" , [3] = "Demote Rule {num}" };
    local ruleType = { [2] = 2 , [3] = 3 }; -- localize it, I know it seems redundant,

    if name ~= nil then
        ruleName = name;
    else
        while not nameSet do
            ruleName = GRM.L ( ruleNameString[GRM_UI.GRM_ToolCoreFrame.TabPosition] , nil , nil , ruleNumber );
            if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM_UI.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][ruleName] ~= nil then
                ruleNumber = ruleNumber + 1;
            else
                nameSet = true;
            end
        end
    end
    local result = {};

    -- Activity Filters

    result.name = ruleName
    result.isEnabled = true;
    result.ruleNumber = GRM.GetRulesCount( 1 ) + 1;
    result.ruleType = ruleType[GRM_UI.GRM_ToolCoreFrame.TabPosition];

    result.applyRulesTo = 1;                -- All = 1 , Alts = 2 , Mains = 3

    result.activityFilter = true;
    result.isMonths = true;
    result.numDaysOrMonths = 12;

    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
        result.regardlessOfActivity = false;
    end
    result.allAltsApplyToKick = true;
    result.rankSpecialIsMonths = true;
    result.rankSpecialNumDaysOrMonths = 3;

    result.rankFilter = true;
    result.ranks = {};

    result.levelFilter = false;
    result.levelRange = { 1 , 999 };

    result.noteMatch = false;
    result.noteMatchEmpty = false;
    result.notesToCheck = { true , true , true };   -- Public , Officer, Custom
    result.matchingString = "";

    result.destinationRank = GuildControlGetNumRanks() - 1;     -- Default is 1st to last lowest rank;
    
    result.repFilter = false;
    result.repOperator = 2
    result.rep = 4;            -- 4 = neutral

    result.customlog = false;
    result.customLogMsg = "";
    result.ruleIndex = num;

    return result , ruleName;
end

-- Method:          GRM.IsAnyInTableEnabled ( table )
-- What it Does:    Takes a boolean 1D array and returns true as long as one value in the array is true
-- Purpose:         Universal use for multi table checks on the custom rules window
GRM.IsAnyInTableEnabled = function( givenTable )
    for i = 1 , #givenTable do
        if givenTable[i] then
            return true;
        end
    end

    return false;
end

-- Method:          GRM.AreAllEnabled( table )
-- What it Does:    If any of the results are NOT enabled it returns false
-- Purpose:         UX controls for the custom rules
GRM.AreAllEnabled = function ( givenTable )
    for i = 1 , #givenTable do
        if not givenTable[i] then
            return false;
        end
    end

    return true;
end

GRM.IsRuleReady = function()
    local result = true;

    -- Name must be valid
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name == "" then
        result = false;
        GRM.Report ( GRM.L ( "Please Set a Name for this Rule. It can be 1 to 25 characters in length." ) );
    end
    -- Rank filter rule check
    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter then
        if GRM.IsAnyInTableEnabled( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks ) then
            if GRM.AreAllEnabled ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.ranks ) then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.rankFilter = false;      -- No need to set the rank filter as enabled if all ranks are being checked.
            end
        else
            result = false;
            GRM.Report ( GRM.L ( "Please select at least 1 RANK to apply this rule to." ) );
        end
    end

    if result then

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter then
            if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[1] == 1 and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelRange[2] == 999 then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.levelFilter = false;     -- No need to check a range if it already fits the range.
            end
        end

        -- If no string is set just disable this feature.
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatchEmpty and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.matchingString == "" then
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.noteMatch = false;
            end
        end

    end

    return result;
end

-- Method:          GRM.GetRuleEntries ( int )
-- What it Does:    Determines which rule grouping to import
-- Purpose:         Proper sorting of players in the guild to be added to the mass kick tool
GRM.GetRuleEntries = function ( ruleType )
    local result = {};
    local tempTable = {};

    if ruleType == 1 then
        tempTable = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules );
    elseif ruleType == 2 then
        tempTable = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].promoteRules );
    elseif ruleType == 3 then
        tempTable = GRM.DeepCopyArray ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].demoteRules );
    end

    for _ , rule in pairs ( tempTable ) do
        table.insert ( result , rule );
    end
    sort ( result , function ( a , b ) return a.ruleNumber < b.ruleNumber end );

    return result;
end

-- Method:          GRM.ClearRuleHighlights()
-- What it Does:    Clears the highlights when loading and refreshing the rules each time it is edited.
-- Purpose:         Clean UX
GRM.ClearRuleHighlights = function()
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] = false;
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
    end
end

-- Method:          GRM.ClearRuleHighlightsButGiven ( frame )
-- What it Does:    Clears the highlights of all the buttons that were NOT clicked
-- Purpose:         Clean UX
GRM.ClearRuleHighlightsButGiven = function( button )
    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1] ~= button then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] = false;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:UnlockHighlight();
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] = true;
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:LockHighlight();
        end
    end
end

-- Method:          GRM.IsRuleHighlighted()
-- What it Does:    Returns true if any of the rules are highlighted
-- purpose:         UX controls
GRM.IsRuleHighlighted = function()
    local result = false;
    local ruleName = "";

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][3] then
            ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][2]:GetText();
            result = true;
            break;
        end
    end

    return result , ruleName;
end

-- Method:          GRM.BuildRuleButtons ( int , boolean , int )
-- What it Does:    Initiates the buttons and their values for each line of the Rules window of the GRM macro tool's hybridscrollframe
-- Purpose:         Create a smooth scrolling experience in the GRM macro tool window
GRM.BuildRuleButtons = function ( ind , isResizeAction , buttonWidth )
    local coreButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][1];
    local buttonText1 = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2];
    local checkButton = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][4];

    buttonText1:SetFont ( GRM_G.FontChoice , GRM_G.FontModifier + 14 );

    -- Actions don't need to be run more than once.
    if not isResizeAction then

        checkButton:SetPoint ( "LEFT" , coreButton , "LEFT" , 5 , 0 );
        checkButton:SetHitRectInsets ( 0 , 0 , 0 , 0 );

        buttonText1:SetPoint ( "LEFT" , checkButton , "RIGHT" , 5 , 0 );
        buttonText1:SetJustifyH ( "LEFT" );
        buttonText1:SetWidth ( buttonWidth - 35 )
        buttonText1:SetWordWrap ( false );
        
        coreButton:EnableMouse ( true );
        coreButton:RegisterForDrag ( "LeftButton" );

        -- Setup draggable conditions
        coreButton:SetScript ( "OnDragStart" , function()
            GRM_UI.GRM_ToolCoreFrame:StartMoving();
        end);
        coreButton:SetScript ( "OnDragStop" , function()
            GRM_UI.GRM_ToolCoreFrame:StopMovingOrSizing();
            GRM_UI.SaveToolPosition();
        end);

        coreButton:SetScript ( "OnMouseDown" , function ( self , button )
            local ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2]:GetText();
            if button == "RightButton" then

                -- Set the Button Logic
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1:SetScript ( "OnClick" , function()
                    local validToOpen = true;

                    if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then

                        if not CanGuildRemove() then
                            validToOpen = false;
                            GRM.Report ( GRM.L ( "Unable to remove players from the guild at current rank." ) .. " " .. GRM.L ( "Feature disabled." ) );
                        else
                            GRM_UI.ConfigureCustomRuleKickFrame ( true , ruleName );
                        end
    
                    elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
                        if not CanGuildPromote() then
                            validToOpen = false;
                            GRM.Report ( GRM.L ( "Unable to promote players within the guild at current rank." ) .. " " .. GRM.L ( "Feature disabled." ) );
                        else
                            GRM_UI.ConfigureCustomRulePromoteAndDemoteFrame ( true , ruleName );
                        end
                        
                    elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
                        if not CanGuildDemote() then
                            validToOpen = false;
                            GRM.Report ( GRM.L ( "Unable to demote players within the guild at current rank." ) .. " " .. GRM.L ( "Feature disabled." ) );
                        else
                            GRM_UI.ConfigureCustomRulePromoteAndDemoteFrame ( true , ruleName );
                        end
    
                    end
                    if validToOpen then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Show();
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                    end
                end);
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2:SetScript ( "OnClick" , function()
                    GRM.RemoveRuleButtonLogic ( GRM_UI.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition] , ruleName );
                    GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
                    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame.rule.name == ruleName then
                        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCustomRulesFrame:Hide();
                    end
                end);

                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:ClearAllPoints();
                GRM.ClearRuleHighlightsButGiven ( self );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:SetPoint ( "BOTTOMRIGHT" , self , "TOPLEFT" , 0 , -2 );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton1.GRM_ContextButton1Text:SetText ( GRM.L ( "Edit" ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu.GRM_ContextButton2.GRM_ContextButton2Text:SetText ( GRM.L ( "Remove" ) );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Show();
                GRM_UI.RestoreTooltipScale();
                GameTooltip:Hide();
            end
        end);            

        coreButton:SetScript ( "OnEnter" , function ()
            GRM.UpdateRulesTooltip( ind );
        end);

        coreButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

        local refreshTooltip = function( anchor )
            GRM_UI.SetTooltipScale();
            GameTooltip:SetOwner ( anchor , "ANCHOR_CURSOR" );

            if anchor:GetChecked() then
                GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FLeft-Click|r to Disable Rule" ) );
            else
                GameTooltip:AddLine( GRM.L ( "|CFFE6CC7FLeft-Click|r to Enable Rule" ) );
            end
            GameTooltip:Show();
        end

        checkButton:SetScript ( "OnClick" , function( self , button )
            if button == "LeftButton" then
                local ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2]:GetText();
                if self:GetChecked() then
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM_UI.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][ruleName].isEnabled = true;
                    refreshTooltip( self );
                else
                    GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][GRM_UI.ruleTypeEnum[GRM_UI.GRM_ToolCoreFrame.TabPosition]][ruleName].isEnabled = false;
                    refreshTooltip( self );
                end
                GRM_UI.FullMacroToolRefresh();
            end
        end);

        checkButton:SetScript ( "OnEnter" , function ( self )
            refreshTooltip( self );
        end);

        checkButton:SetScript ( "OnLeave" , function()
            GRM.RestoreTooltip();
        end);

    end
end

-- Method:          GRM.BuildRulesScrollFrame( bool , bool )
-- What it Does:    Updates the Rules scrollframe as needed
-- Purpose:         UX of the GRM mass kick tool
GRM.BuildRulesScrollFrame = function ( showAll , fullRefresh )
    local hybridScrollFrameButtonCount = 8;
    local buttonHeight = 22;
    local scrollHeight = 0;
    local buttonWidth = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame:GetWidth() - 5;

    if showAll and fullRefresh then
        GRM_UI.GRM_ToolCoreFrame.RuleEntries = GRM.GetRuleEntries ( GRM_UI.GRM_ToolCoreFrame.TabPosition );
    end

    GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons or {};
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset or ( hybridScrollFrameButtonCount );

    if GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset < hybridScrollFrameButtonCount then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset = hybridScrollFrameButtonCount;
    elseif GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset > hybridScrollFrameButtonCount and GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset > #GRM_UI.GRM_ToolCoreFrame.RuleEntries then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset = #GRM_UI.GRM_ToolCoreFrame.RuleEntries;
    end

    for i = 1 , #GRM_UI.GRM_ToolCoreFrame.RuleEntries do
        -- Build HybridScrollFrame Buttons
        if i <= hybridScrollFrameButtonCount then
            if not GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i] then

                local button = CreateFrame ( "Button" , "RuleButton" .. i , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame );
                local checkButton = CreateFrame ( "Checkbutton" , "RuleCheckButton" , button , "OptionsSmallCheckButtonTemplate" );
                GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i] = {
                    button ,
                    button:CreateFontString ( "RuleButton" .. i .. "Text" , "OVERLAY" , "GameFontWhiteTiny" ),
                    false,
                    checkButton
                };

                button = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1];
                if i == 1 then
                    button:SetPoint ( "TOP" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame , "TOP" , 7 , 0 );
                else 
                    button:SetPoint ( "TOPLEFT" , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i-1][1] , "BOTTOMLEFT" , 0 , 0 );
                end

                button:SetHighlightTexture ( "Interface\\Buttons\\UI-Panel-Button-Highlight" );
                button:SetSize ( buttonWidth , buttonHeight );
                GRM.BuildRuleButtons ( i  , false , buttonWidth );
                
            end
        end

        if i >= ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - hybridScrollFrameButtonCount + 1 ) and i <= GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset then
            GRM.SetRuleValues ( i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - hybridScrollFrameButtonCount ) , i );
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i - ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - hybridScrollFrameButtonCount )][1]:Show();
        end
        
        -- Slider Height is controlled by tallying how many of these are necessary
        scrollHeight = scrollHeight + buttonHeight;
    end

    -- Hide unused buttons...
    for i = #GRM_UI.GRM_ToolCoreFrame.RuleEntries + 1 , #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons do
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[i][1]:Hide();
    end

    GRM.SetHybridScrollFrameSliderParameters ( 
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrame , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder, 
        buttonWidth , buttonHeight , scrollHeight , #GRM_UI.GRM_ToolCoreFrame.RuleEntries , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons , 
        GRM.KickRulesHybridShiftDown , GRM.KickRulesHybridShiftUp , hybridScrollFrameButtonCount
    );

    if #GRM_UI.GRM_ToolCoreFrame.RuleEntries > 8 then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:Show();
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollFrameSilder:Hide();
    end

    GRM.ClearRuleHighlights();

end

-- Method:          GRM.SetRuleValues ( int , int )
-- What it Does:    Builds the values of the given line in the window
-- Purpose:         Quality of life feature.
GRM.SetRuleValues = function ( ind , ind2 )
    local line = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind];

    -- Player Name
    line[2]:SetText ( GRM_UI.GRM_ToolCoreFrame.RuleEntries[ind2].name );
    if GRM_UI.GRM_ToolCoreFrame.RuleEntries[ind2].isEnabled then
        line[4]:SetChecked ( true );
    else
        line[4]:SetChecked ( false );
    end

    -- Update the tooltip if underlying data changes
    if GameTooltip:IsVisible() and GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][1]:IsMouseOver() then 
        GRM.UpdateRulesTooltip ( ind );
    end
end

-- Method:          GRM.KickRulesHybridShiftDown()
-- What it Does:    Shifts all the values DOWN one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickRulesHybridShiftDown = function()
    if #GRM_UI.GRM_ToolCoreFrame.RuleEntries > 8 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        -- Shift them down...
        for i = 1 , #buttons - 1 do

            -- Header Line
            buttons[i][2]:SetText( buttons[i+1][2]:GetText() );
            buttons[i][4]:SetChecked ( buttons[i+1][4]:GetChecked() );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:IsVisible() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
            GRM.ClearRuleHighlights();
        end

        GRM.KickRulesSetLastValue();
        if MouseOverButton > 0 then
            GRM.UpdateRulesTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickRulesHybridShiftUp()
-- What it Does:    Shifts all the values up one line to give the illusion of scrolling when in reality this is just a hybrid scrollframe
-- Purpose:         Clean scrolling
GRM.KickRulesHybridShiftUp = function()
    if #GRM_UI.GRM_ToolCoreFrame.RuleEntries > 8 then
        local buttons = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons;
        local MouseOverButton = 0;

        for i = #buttons , 2 , -1 do

            buttons[i][2]:SetText( buttons[i-1][2]:GetText() );
            buttons[i][4]:SetChecked( buttons[i-1][4]:GetChecked() );

            if MouseOverButton == 0 and buttons[i][1]:IsMouseOver() then
                MouseOverButton = i;
            end
        end

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:IsVisible() then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolContextMenu:Hide();
            GRM.ClearRuleHighlights();
        end

        GRM.KickRulesSetFirstValue();
        if MouseOverButton > 0 then
            GRM.UpdateRulesTooltip ( MouseOverButton );
        end
    end
end

-- Method:          GRM.KickRulesSetLastValue()
-- What it Does:    Sets the last value of the hybridscrollframe backups at position 16
-- Purpose:         Clean scrolling
GRM.KickRulesSetLastValue = function()
    GRM.SetRuleValues ( #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset );
end

-- Method:          GRM.KickRulesSetFirstValue()
-- What it Does:    Sets the first value of the hybridscrollframe backups at position 1
-- Purpose:         Clean scrolling
GRM.KickRulesSetFirstValue = function()
    GRM.SetRuleValues ( 1 , GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.Offset - #GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons + 1 );
end

-- Method:          GRM.GetRanksIncludedInFilter ( table )
-- What it Does:    Returns the name of all the ranks currently being filtered
-- Purpose:         Custom rule UX controls.
GRM.GetRanksIncludedInFilter = function( listOfRanks )
    local namedRanks = {};
    local num = 1;

    -- Don't need to include Guild Leader rank
    for i = GuildControlGetNumRanks() , 2 , -1 do
        if listOfRanks[num] then
            table.insert ( namedRanks , GuildControlGetRankName ( i ) );
        end
        num = num + 1;
    end

    return namedRanks;
end

-- Method:          GRM.UpdateRulesTooltip()
-- What it Does:    Sets the tooltip for the Queued scrollframe in the GRM kick tool
-- Purpose:         Make it clear the QoL controls.
GRM.UpdateRulesTooltip = function ( ind )
    local ruleName = GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][2]:GetText();
    local rule = {};
        if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 then
            rule = GRM.GetKickRule ( ruleName );
        elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
            rule = GRM.GetPromoteRule ( ruleName );
        elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
            rule = GRM.GetDemoteRule ( ruleName );
        end
    local c = {};
    local time = "";
    c.E = { 0 , 0.77 , 0.063 }; -- enabled
    c.D = { 1 , 0 , 0 };        -- disabled

    GRM_UI.SetTooltipScale();
    GameTooltip:SetOwner ( GRM_UI.GRM_ToolCoreFrame.GRM_ToolRulesScrollChildFrame.AllButtons[ind][1] , "ANCHOR_CURSOR" );
    GameTooltip:AddLine ( "|CFFE6CC7F" .. GRM.L ( "Rule Filter: {name}" , "|r" .. rule.name ) , 0 , 0.8 , 1 );
    GameTooltip:AddLine ( " " );

    if rule.applyRulesTo == 2 then
        GameTooltip:AddLine ( GRM.L ( "Alts Only" ) , 1 , 0 , 0 );
    elseif rule.applyRulesTo == 3 then
        GameTooltip:AddLine ( GRM.L ( "Mains Only" ) , 1 , 0 , 0 );
    end

    if GRM_UI.GRM_ToolCoreFrame.TabPosition > 1 then
        GameTooltip:AddDoubleLine ( GRM.L ( "Destination Rank:" ) , GuildControlGetRankName ( rule.destinationRank ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    end

    if rule.activityFilter then
        if rule.isMonths then
            if rule.numDaysOrMonths == 1 then
                time = GRM.L ( "Month");
            else
                time = GRM.L ( "Months");
            end
        else
            if rule.numDaysOrMonths == 1 then
                time = GRM.L ( "Day");
            else
                time = GRM.L ( "Days");
            end
        end

        if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 or GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
            GameTooltip:AddDoubleLine ( GRM.L ( "Inactivity:" ) , GRM.L ( "Notify if inactive for {num} {name}" , time , nil , rule.numDaysOrMonths ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
        elseif GRM_UI.GRM_ToolCoreFrame.TabPosition == 2 then
            GameTooltip:AddDoubleLine ( GRM.L ( "Time at Rank:" ) , GRM.L ( "Notify if at current rank for {num} {name}" , time , nil , rule.numDaysOrMonths ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
        end
    else
        if GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 or GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 then
            GameTooltip:AddDoubleLine ( GRM.L ( "Inactivity:" ) , GRM.L ( "Disabled" ) , 1 , 0.82 , 0 , c.D[1] , c.D[2] , c.D[3] );
        else
            GameTooltip:AddDoubleLine ( GRM.L ( "Time at Rank:" ) , GRM.L ( "Disabled" ) , 1 , 0.82 , 0 , c.D[1] , c.D[2] , c.D[3] );
        end
    end

    if rule.rankFilter then
        local listOfRanks = GRM.GetRanksIncludedInFilter( rule.ranks );
        local ranks = listOfRanks[1];
        for i = 2 , #listOfRanks do
            ranks = ranks .. ", " .. listOfRanks[i];
        end
        GameTooltip:AddDoubleLine ( GRM.L ( "Ranks:" ) , ranks , 1 , 0.82 , 0 , 1 , 1 , 1 );

        if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 or GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 ) and rule.applyEvenIfActiive then

            time = "";
            if rule.rankSpecialIsMonths then
                if rule.rankSpecialNumDaysOrMonths == 1 then
                    time = GRM.L ( "Month");
                else
                    time = GRM.L ( "Months");
                end
            else
                if rule.rankSpecialNumDaysOrMonths == 1 then
                    time = GRM.L ( "Day");
                else
                    time = GRM.L ( "Days");
                end
            end
            
            GameTooltip:AddDoubleLine (GRM.L ( "Time at Rank:" ) , GRM.L ( "Notify if at Rank for {num} {name}" , time , nil , rule.rankSpecialNumDaysOrMonths ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
        end
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Ranks:" ) , GRM.L ( "All Ranks" ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    end

    if rule.levelFilter then
        local topLevel;
        if rule.levelRange[2] == 999 then
            topLevel = GRM_G.LvlCap;
        else
            topLevel = rule.levelRange[2];
        end
        GameTooltip:AddDoubleLine ( GRM.L ( "Level Range:" ) , GRM.L ( "{num} to {custom1}" , nil , nil , rule.levelRange[1] , topLevel ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Level Range:" ) , GRM.L ( "1 to {num}" , nil , nil , GRM_G.LvlCap ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
    end

    if GRM_G.BuildVersion >= 40000 then

        if rule.repFilter then
            local msg = "";
            if rule.repOperator == 1 then
                msg = GRM.L ( "Guild Rep lower than {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
            elseif rule.repOperator == 2 then
                msg = GRM.L ( "Guild Rep equal to {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
            elseif rule.repOperator == 3 then
                msg = GRM.L ( "Guild Rep higher than {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
            end

            GameTooltip:AddDoubleLine ( GRM.L ( "Guild Rep:" ) , msg , 1 , 0.82 , 0 , 1 , 1 , 1 );
        else
            GameTooltip:AddDoubleLine ( GRM.L ( "Guild Rep:" ) , GRM.L ( "Disabled" ) , 1 , 0.82 , 0 , c.D[1] , c.D[2] , c.D[3] );
        end
    end

    if rule.noteMatch then
        if not rule.noteMatchEmpty then
            GameTooltip:AddDoubleLine ( GRM.L ( "Note Match:" ) , "\"" .. rule.matchingString .. "\"" , 1 , 0.82 , 0 , 1 , 1 , 1 );
        else
            GameTooltip:AddDoubleLine ( GRM.L ( "Note Match:" ) , ( "<" .. GRM.L ( "Empty Notes" ) .. ">" ) , 1 , 0.82 , 0 , 1 , 1 , 1 );
        end
    else
        GameTooltip:AddDoubleLine ( GRM.L ( "Note Match:" ) , GRM.L ( "Disabled" ) , 1 , 0.82 , 0 , c.D[1] , c.D[2] , c.D[3] );
    end

    GameTooltip:AddLine ( " " );
    GameTooltip:AddLine ( "|CFFE6CC7F" .. GRM.L ( "Right-Click|r to Edit or Remove custom rule" ) );

    GameTooltip:Show();
end

------------------------------------------
------ Custom Rules UI Controls ----------

-- Method:          GRM.HasTimeExceededDate ( string , int )
-- What it Does:    Returns true if the player is ready for a rank change based on time passed
-- Purpose:         Scanning for changes on promotions and demotions
GRM.HasTimeExceededDate = function ( verifiedDate , hoursTilRecommend )
    local result = false;

    local epochDate = GRM.TimeStampToEpoch ( verifiedDate , false );
    
    if math.floor ( ( time() - epochDate ) / 3600 ) >= hoursTilRecommend then
        result = true;
    end
    return result;
end

-- Method:          GRM.GetSingularOrPluralFormattingForMacroToolMsg ( bool , int)
-- What it Does:    Returns the proper string before it is translated.
-- Purpose:         To handle plural and singular formats as a quality of life feature.
GRM.GetSingularOrPluralFormattingForMacroToolMsg = function ( isMonths , num , inactive )
    local choice = { "Player has been at rank for more than {num} Day" , "Player has been at rank for more than {num} Days" , "Player has been at rank for more than {num} Month" , "Player has been at rank for more than {num} Months" };
    local result = "";

    if isMonths then
        if num > 1 then
            result = choice[4];
        else
            result = choice[3];
        end
    else
        if num > 1 then
            result = choice[2];
        else
            result = choice[1];
        end
    end

    if inactive then
        result = "CFFFF0000( " .. GRM.L ( "Inactive" ) .. " )|r" .. result;
    end
    return result;
end

-- Method:          GRM.GetNamesByFilterRules()
-- What it Does:    Collects the names of all the players who match the given rule
-- Purpose:         Macro Tool use
GRM.GetNamesByFilterRules = function( ruleTypeIndex )
    local listOfPlayers = {};
    local ruleCount = ruleTypeIndex or GRM_UI.GRM_ToolCoreFrame.TabPosition;

    GRM_G.countAction[ruleCount] = time();
    
    -- No need to do all the work if there are no rules to check!
    if GRM.GetRulesCount ( ruleCount ) == 0 or GRM_G.guildName == "" or GRM_G.guildName == nil then -- the guildName thing is a redundancy that can occur due to lag, just protection against error.
        return listOfPlayers;
    end

    -- The name formatting is purely to be used for the macro to be added.
    
    local ruleConfirmedCheck = true
    local listOfPlayers , tempRuleCollection = {} , {};
    local macroAction = { [2] = "/gpromote" , [3] = "/gdemote" };
    local rankDestination = { [2] = GRM.L ( "Promote to Rank:" ) , [3] = GRM.L ( "Demote to Rank:" ) };

    -- need to know if player can be promoted or demoted to destination rank, and how many rank moves they need to make to get there.
    local playerCanBeMoved = function ( playerRankIndex , destinationRank , ruleType )
        local result = false;
        local numRankPlacesToMove = 0;

        if ( ruleType == 2 and playerRankIndex > destinationRank ) then
            result = true;
            numRankPlacesToMove = ( playerRankIndex - destinationRank );
        elseif ( ruleType == 3 and playerRankIndex < destinationRank ) then
            result = true;
            numRankPlacesToMove = ( destinationRank - playerRankIndex );
        end

        return result , numRankPlacesToMove;
    end

    for _ , player in pairs ( GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ] ) do
        if type ( player ) == "table" and player.name ~= GRM_G.addonUser then
            -- reset for this player.

            for ruleName , rule in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser][ GRM_UI.ruleTypeEnum[ruleCount] ] ) do
                if rule.isEnabled then
                    ruleConfirmedCheck = true;
                    tempRuleCollection = {};
                    -- Check filter

                    -- if my rank is lower is only way to work- cannot kick someone a higher or equal rank
                    if GRM_G.playerRankID < player.rankIndex then 
                        local canMove , numRankMoves = playerCanBeMoved ( player.rankIndex , ( rule.destinationRank - 1 ) , rule.ruleType );

                        if canMove then
                            -- Need to at least insert the ruleName and number of jumps it needs to make to destination rank
                            table.insert ( tempRuleCollection , { rankDestination[rule.ruleType] , GuildControlGetRankName ( rule.destinationRank ) , numRankMoves } );

                            ----------------------------
                            -- RULES TO CHECK AGAINST --
                            ----------------------------

                            -- MAIN/ALT
                            if ruleConfirmedCheck and rule.applyRulesTo > 1 then
                                ruleConfirmedCheck = false;

                                if rule.applyRulesTo == 2 and not player.isMain and GRM.IsPlayerAnAlt ( player ) then
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Main/Alt" , GRM.L ( "Player is an Alt" ) } );

                                elseif rule.applyRulesTo == 3 and player.isMain then
                                    -- Player is not a main!
                                    ruleConfirmedCheck = true
                                    table.insert ( tempRuleCollection , { "Main/Alt" , GRM.L ( "Player is a Main" ) } );
                                end

                            end
                            
                            if rule.ruleType == 3 then
                                -- Inactivity
                                if ruleConfirmedCheck and rule.activityFilter and not ( rule.rankFilter and rule.applyEvenIfActiive ) then
                                    ruleConfirmedCheck = false;

                                    if not rule.allAltsApplyToKick or ( rule.allAltsApplyToKick and not GRM.IsAnyAltActive ( player.alts , GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].hours ) ) then
                                        -- Is actually considered inactive
                                        if player.lastOnline >= GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].hours then
                                        -- Cannot remove players same rank or higher, so they have to be a higher index than you to remove them.
                                            ruleConfirmedCheck = true;
                                            table.insert ( tempRuleCollection , { "Inactive" , player.lastOnline } );
                                        end
                                    end
                                end

                                -- Extra activity filter based on rank
                                if ruleConfirmedCheck and not rule.activityFilter and rule.rankFilter and rule.applyEvenIfActiive then
                                    -- We know that the rank is valid at this point as it has been made true
                                    ruleConfirmedCheck = false;
                                    if rule.ranks[(GuildControlGetNumRanks() - player.rankIndex)] and player.verifiedPromoteDate[1] ~= "" and GRM.HasTimeExceededDate ( player.verifiedPromoteDate[1] , GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].evenIfActiveHours ) then
                                        ruleConfirmedCheck = true;
                                        table.insert ( tempRuleCollection , { "Rank" , player.rankName } );
                                        table.insert ( tempRuleCollection , { "RankTime" , GRM.GetTimePassedUsingStringStamp ( player.rankHistory[#player.rankHistory][2] )[4] } );
                                    end
                                end

                            elseif rule.ruleType == 2 then

                                -- Inactivity -- can only promote based on activity if there is a verified promotion date currently.
                                if ruleConfirmedCheck and rule.activityFilter then
                                    ruleConfirmedCheck = false;

                                    -- Initial activity
                                    if  player.verifiedPromoteDate[1] ~= "" and GRM.HasTimeExceededDate ( player.verifiedPromoteDate[1] , GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].hours ) then
                                        -- It appears the player HAS been at the rank for that given amount of time - now, do we promote no matter what, or do we check for inactivity?
                                        if rule.regardlessOfActivity then
                                            -- YES - promote regardless.
                                            ruleConfirmedCheck = true; 
                                            table.insert ( tempRuleCollection , { "RankTime" , GRM.L ( GRM.GetSingularOrPluralFormattingForMacroToolMsg ( rule.isMonths , rule.numDaysOrMonths ) , nil , nil , rule.numDaysOrMonths ) } );
                                        else

                                            -- Promote logic is slightly different
                                            if rule.ruleType == 2 then

                                                -- If player is NOT INACTIVE   -- OR -- At least one alt is active
                                                if player.lastOnline < GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].inactive or ( rule.allAltsApplyToKick and GRM.IsAnyAltActive ( player.alts , GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].inactive ) ) then
                                                    ruleConfirmedCheck = true;
                                                    table.insert ( tempRuleCollection , { "RankTime" , GRM.L ( GRM.GetSingularOrPluralFormattingForMacroToolMsg ( rule.isMonths , rule.numDaysOrMonths ) , nil , nil , rule.numDaysOrMonths ) } );
                                                end
                                                

                                            -- Demote logic is slightly different.
                                            elseif rule.ruleType == 3 then

                                                -- If player IS INACTIVE (if not inactive why would you be demoting?)
                                                if player.lastOnline >= GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].inactive then
                                                    
                                                    if not rule.allAltsApplyToKick or ( rule.allAltsApplyToKick and not GRM.IsAnyAltActive ( player.alts , GRM_G.NumberOfHoursTilRecommend[GRM_UI.ruleTypeEnum2[rule.ruleType]][ruleName].inactive ) ) then
                                                        ruleConfirmedCheck = true;
                                                        table.insert ( tempRuleCollection , { "RankTime" , GRM.L ( GRM.GetSingularOrPluralFormattingForMacroToolMsg ( rule.isMonths , rule.numDaysOrMonths ) , nil , nil , rule.numDaysOrMonths ) } );
                                                    end

                                                end

                                            end

                                        end
                                    end

                                end
                            end

                                -- Extra activity filter based on rank
                            if ruleConfirmedCheck and rule.rankFilter then
                                -- We know that the rank is valid at this point as it has been made true
                                ruleConfirmedCheck = false;
                                if rule.ranks[(GuildControlGetNumRanks() - player.rankIndex)] then
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Rank" , player.rankName } );
                                end
                            end

                            -- Level Filters
                            if ruleConfirmedCheck and rule.levelFilter then
                                ruleConfirmedCheck = false;

                                local topLevel;
                                if rule.levelRange[2] == 999 then
                                    topLevel = GRM_G.LvlCap;
                                else
                                    topLevel = rule.levelRange[2];
                                end
                                if player.level >= rule.levelRange[1] and player.level <= topLevel then
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Level" , rule.levelRange[1] , topLevel } );
                                end
                            end

                            -- Reputation Filter
                            if ruleConfirmedCheck and GRM_G.BuildVersion >= 40000 and rule.repFilter then
                                ruleConfirmedCheck = false;
                                local msg = "";
                                -- Less than Operator
                                if rule.repOperator == 1 and player.guildRep < rule.rep then
                                    msg = GRM.L ( "Guild Rep lower than {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
                                elseif rule.repOperator == 2 and player.guildRep == rule.rep then
                                    msg = GRM.L ( "Guild Rep equal to {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
                                elseif rule.repOperator == 3 and player.guildRep > rule.rep then
                                    msg = GRM.L ( "Guild Rep higher than {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
                                end

                                if #msg > 0 then
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Rep" , GRM.L ( "Rep: {name} - {name2}" , GRM.GetReputationTextLevel ( player.guildRep , true ) , msg ) } );
                                end
                            end

                            -- Note match filter
                            if ruleConfirmedCheck and rule.noteMatch and not rule.noteMatchEmpty then

                                if #rule.matchingString > 0 then
                                    ruleConfirmedCheck = false;

                                    -- public note
                                    if rule.notesToCheck[1] and string.find ( string.lower ( player.note ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                        ruleConfirmedCheck = true;
                                    end
                                    -- Officer Note
                                    if not ruleConfirmedCheck and rule.notesToCheck[2] and string.find ( string.lower ( player.officerNote ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                        ruleConfirmedCheck = true;
                                    end
                                    -- Custom Note
                                    if not ruleConfirmedCheck and rule.notesToCheck[3] and string.find ( string.lower ( player.customNote[6] ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                        ruleConfirmedCheck = true;
                                    end

                                    if ruleConfirmedCheck then
                                        table.insert ( tempRuleCollection , { "Note Match" , rule.matchingString } );
                                    end
                                end

                            end

                            -- Empty note
                            if ruleConfirmedCheck and rule.noteMatch and rule.noteMatchEmpty then
                                ruleConfirmedCheck = false;
                                local notes = "";

                                if ( rule.notesToCheck[1] and player.note == "" ) then
                                    notes = GRM.L ( "Public" );
                                end
                                if ( rule.notesToCheck[2] and player.officerNote == "" ) then
                                    if #notes > 0 then
                                        notes = notes .. " , " .. GRM.L ( "Officer" );
                                    else
                                        notes = notes .. GRM.L ( "Officer" );
                                    end
                                end
                                if ( rule.notesToCheck[3] and player.customNote[6] == "" ) then
                                    if #notes > 0 then
                                        notes = notes .. " , " .. GRM.L ( "Custom" );
                                    else
                                        notes = notes .. GRM.L ( "Custom" );
                                    end
                                end

                                if #notes > 0 then
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Empty Note Match" , notes } );                            
                                end
                            end

            
                            if ruleConfirmedCheck then

                                -- RULE IS GOOD - ADD PLAYER

                                if not player.safeList[GRM_UI.ruleTypeEnum2[rule.ruleType]][1] then      -- Ignore for scanning... but I still want a count of the ignored.

                                    local index = GRM.GetIndexOfPlayerOnList ( listOfPlayers , player.name );

                                    if index == nil then
                                        table.insert ( listOfPlayers , {} );
                                        index = #listOfPlayers;
                                        listOfPlayers[index].name = player.name;
                                        listOfPlayers[index].class = GRM.GetClassColorRGB ( player.class );
                                        listOfPlayers[index].lastOnline = player.lastOnline;
                                        listOfPlayers[index].action = GRM_UI.ruleTypeEnum3[rule.ruleType];
                                        listOfPlayers[index].macro = macroAction[rule.ruleType];
                                        listOfPlayers[index].isHighlighted = false;
                                        listOfPlayers[index].rankIndex = rule.destinationRank - 1;      -- Miinus 1 rank for it to match the player indexes

                                        if rule.ruleType == 2 then
                                            listOfPlayers[index].numRankJumps = player.rankIndex - ( rule.destinationRank - 1 );
                                        else
                                            listOfPlayers[index].numRankJumps = ( rule.destinationRank - 1 ) - player.rankIndex;
                                        end

                                        table.insert ( listOfPlayers[index] , { rule.name , tempRuleCollection } );
                                    end

                                else
                                    local index = GRM.GetIndexOfPlayerOnList ( GRM_UI.GRM_ToolCoreFrame.Safe , player.name );
    
                                    if index == nil and player.name ~= GRM_G.addonUser then
                                        table.insert ( GRM_UI.GRM_ToolCoreFrame.Safe , {} );
                                        index = #GRM_UI.GRM_ToolCoreFrame.Safe;
                                        GRM_UI.GRM_ToolCoreFrame.Safe[index].name = player.name
                                        GRM_UI.GRM_ToolCoreFrame.Safe[index].rankIndex = player.rankIndex;
                                        GRM_UI.GRM_ToolCoreFrame.Safe[index].class = GRM.GetClassColorRGB ( player.class );
                                        GRM_UI.GRM_ToolCoreFrame.Safe[index].reason = GRM_UI.ruleTypeEnum3[rule.ruleType];
                                        GRM_UI.GRM_ToolCoreFrame.Safe[index].lastOnline = player.lastOnline;
                                        GRM_UI.GRM_ToolCoreFrame.Safe[index].isHighlighted = false;
                                    end
                                end
                                
                            end
                        end
                    end
                end
            end
        end
    end

    if #listOfPlayers > 1 then
        sort ( listOfPlayers , function ( a , b ) return a.name < b.name end );
    end

    -- Get count
    GRM_G.counts[ruleCount] = #listOfPlayers;

    return listOfPlayers;
end

-- Method:          GRM.GetMacroFormattedName ( string )
-- What it Does:    Returns either a name with a server or not
-- Purpose:         If a player is on the same server as you, you don't need to add their server, thus you can remove it and allow more space in the macro tool
GRM.GetMacroFormattedName = function ( name )
    local result = "";
    if ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 3 and GRM_G.BuildVersion >= 90000 ) or ( GRM_UI.GRM_ToolCoreFrame.TabPosition == 1 and string.find ( name , GRM_G.realmName , 1 , true ) ~= nil ) then      -- If the player has the same realm name as me than it can be shortened.
        result = GRM.SlimName ( name );
    else
        result = name;
    end

    return result;
end

-- Method:          GRM.IsPlayerAnAlt ( player )
-- What it Does:    Returns true if the player is a confirmed alt, as in, their main is known
-- Purpose:         Export filter to allow filtering to alt/mains
GRM.IsPlayerAnAlt = function ( player )
    local result = false;
    
    for i = 1 , #player.alts do
        if player.alts[i][5] then
            result = true;
            break;
        end
    end

    return result;
end

-- Method:          GRM.GetKickNamesByFilterRules ()
-- What it Does:    Gets the names that adhere to the given rules
-- Purpose:         To populate the macro tool
GRM.GetKickNamesByFilterRules = function()
    local listOfPlayers = {};
    GRM_G.countAction[1] = time();

    -- No need to do all the work if there are no rules to check!
    if GRM.GetRulesCount ( 1 ) == 0 or GRM_G.guildName == "" or GRM_G.guildName == nil then -- the guildName thing is a redundancy that can occur due to lag, just protection against error.
        return listOfPlayers;
    end

    -- The name formatting is purely to be used for the macro to be added.
    
    local ruleConfirmedCheck = true
    local listOfPlayers , tempRuleCollection = {} , {};

    for _ , player in pairs ( GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ] ) do
        if type ( player ) == "table" and player.name ~= GRM_G.addonUser then
            -- reset for this player.

            for ruleName , rule in pairs ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].kickRules ) do
                if rule.isEnabled then
                    ruleConfirmedCheck = true;
                    tempRuleCollection = {};
                    -- Check filter

                    -- if my rank is lower is only way to work- cannot kick someone a higher or equal rank
                    if GRM_G.playerRankID < player.rankIndex then

                        -- main
                        if ruleConfirmedCheck and rule.applyRulesTo > 1 then
                            ruleConfirmedCheck = false;

                            if rule.applyRulesTo == 2 and not player.isMain and GRM.IsPlayerAnAlt ( player ) then
                                ruleConfirmedCheck = true;
                                table.insert ( tempRuleCollection , { "Main/Alt" , GRM.L ( "Player is an Alt" ) } );

                            elseif rule.applyRulesTo == 3 and player.isMain then
                                -- Player is not a main!
                                ruleConfirmedCheck = true
                                table.insert ( tempRuleCollection , { "Main/Alt" , GRM.L ( "Player is a Main" ) } );
                            end
                        end

                        -- Inactivity
                        if ruleConfirmedCheck and rule.activityFilter and not ( rule.rankFilter and rule.applyEvenIfActiive ) then
                            ruleConfirmedCheck = false;

                            if not rule.allAltsApplyToKick or ( rule.allAltsApplyToKick and not GRM.IsAnyAltActiveForRecommendKicks ( player.alts , ruleName ) ) then
                                -- Is actually considered inactive
                                if player.lastOnline >= GRM_G.NumberOfHoursTilRecommend.kick[ruleName] then
                                -- Cannot remove players same rank or higher, so they have to be a higher index than you to remove them.
                                    ruleConfirmedCheck = true;
                                    table.insert ( tempRuleCollection , { "Inactive" , player.lastOnline } );
                                end
                            end
                        end

                        -- Rank Filters
                        if ruleConfirmedCheck and rule.rankFilter and not rule.applyEvenIfActiive then
                            ruleConfirmedCheck = false;

                            if rule.ranks[(GuildControlGetNumRanks() - player.rankIndex)] then
                                ruleConfirmedCheck = true;
                                table.insert ( tempRuleCollection , { "Rank" , player.rankName } );
                            end

                        end

                        -- Extra activity filter based on rank
                        if ruleConfirmedCheck and not rule.activityFilter and rule.rankFilter and rule.applyEvenIfActiive then
                            -- We know that the rank is valid at this point as it has been made true
                            ruleConfirmedCheck = false;
                            if rule.ranks[(GuildControlGetNumRanks() - player.rankIndex)] and player.verifiedPromoteDate[1] ~= "" and GRM.GetHoursSinceTimestamp ( player.rankHistory[#player.rankHistory][3] ) >= GRM_G.NumberOfHoursTilRecommend.kickActive[ruleName] then
                                ruleConfirmedCheck = true;
                                table.insert ( tempRuleCollection , { "Rank" , player.rankName } );
                                table.insert ( tempRuleCollection , { "RankTime" , GRM.GetTimePassedUsingStringStamp ( player.rankHistory[#player.rankHistory][2] )[4] } );
                            end
                        end

                        -- Level Filters
                        if ruleConfirmedCheck and rule.levelFilter then
                            ruleConfirmedCheck = false;

                            local topLevel;
                            if rule.levelRange[2] == 999 then
                                topLevel = GRM_G.LvlCap;
                            else
                                topLevel = rule.levelRange[2];
                            end
                            if player.level >= rule.levelRange[1] and player.level <= topLevel then
                                ruleConfirmedCheck = true;
                                table.insert ( tempRuleCollection , { "Level" , rule.levelRange[1] , topLevel } );
                            end
                        end

                        -- Reputation Filter
                        if ruleConfirmedCheck and GRM_G.BuildVersion >= 40000 and rule.repFilter then
                            ruleConfirmedCheck = false;
                            local msg = "";
                            -- Less than Operator
                            if rule.repOperator == 1 and player.guildRep < rule.rep then
                                msg = GRM.L ( "Guild Rep lower than {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
                            elseif rule.repOperator == 2 and player.guildRep == rule.rep then
                                msg = GRM.L ( "Guild Rep equal to {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
                            elseif rule.repOperator == 3 and player.guildRep > rule.rep then
                                msg = GRM.L ( "Guild Rep higher than {name}" , GRM.GetReputationTextLevel ( rule.rep , true ) );
                            end

                            if #msg > 0 then
                                ruleConfirmedCheck = true;
                                table.insert ( tempRuleCollection , { "Rep" , GRM.L ( "Rep: {name} - {name2}" , GRM.GetReputationTextLevel ( player.guildRep , true ) , msg ) } );
                            end
                        end

                        -- Note match filter
                        if ruleConfirmedCheck and rule.noteMatch and not rule.noteMatchEmpty then

                            if #rule.matchingString > 0 then
                                ruleConfirmedCheck = false;

                                -- public note
                                if rule.notesToCheck[1] and string.find ( string.lower ( player.note ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                    ruleConfirmedCheck = true;
                                end
                                -- Officer Note
                                if not ruleConfirmedCheck and rule.notesToCheck[2] and string.find ( string.lower ( player.officerNote ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                    ruleConfirmedCheck = true;
                                end
                                -- Custom Note
                                if not ruleConfirmedCheck and rule.notesToCheck[3] and string.find ( string.lower ( player.customNote[6] ) , string.lower ( rule.matchingString ) , 1 , true ) ~= nil then
                                    ruleConfirmedCheck = true;
                                end

                                if ruleConfirmedCheck then
                                    table.insert ( tempRuleCollection , { "Note Match" , rule.matchingString } );
                                end
                            end

                        end

                        -- Empty note
                        if ruleConfirmedCheck and rule.noteMatch and rule.noteMatchEmpty then
                            ruleConfirmedCheck = false;
                            local notes = "";

                            if ( rule.notesToCheck[1] and player.note == "" ) then
                                notes = GRM.L ( "Public" );
                            end
                            if ( rule.notesToCheck[2] and player.officerNote == "" ) then
                                if #notes > 0 then
                                    notes = notes .. " , " .. GRM.L ( "Officer" );
                                else
                                    notes = notes .. GRM.L ( "Officer" );
                                end
                            end
                            if ( rule.notesToCheck[3] and player.customNote[6] == "" ) then
                                if #notes > 0 then
                                    notes = notes .. " , " .. GRM.L ( "Custom" );
                                else
                                    notes = notes .. GRM.L ( "Custom" );
                                end
                            end

                            if #notes > 0 then
                                ruleConfirmedCheck = true;
                                table.insert ( tempRuleCollection , { "Empty Note Match" , notes } );                            
                            end
                        end

                        if ruleConfirmedCheck then
                            -- RULE IS GOOD - ADD PLAYER
                            -- Check safe list too
                            if not player.safeList.kick[1] then      -- Ignore for scanning... but I still want a count of the ignored.
                                local index = GRM.GetIndexOfPlayerOnList ( listOfPlayers , player.name );

                                if index == nil then
                                    table.insert ( listOfPlayers , {} );
                                    index = #listOfPlayers;
                                    listOfPlayers[index].name = player.name;
                                    listOfPlayers[index].class = GRM.GetClassColorRGB ( player.class );
                                    listOfPlayers[index].lastOnline = player.lastOnline;
                                    listOfPlayers[index].action = GRM_UI.ruleTypeEnum3[1];
                                    listOfPlayers[index].macro = "/gremove";
                                    listOfPlayers[index].isHighlighted = false;
                                end
                                
                                table.insert ( listOfPlayers[index] , { rule.name , tempRuleCollection } );

                            else
                                local index = GRM.GetIndexOfPlayerOnList ( GRM_UI.GRM_ToolCoreFrame.Safe , player.name );

                                if index == nil and player.name ~= GRM_G.addonUser then
                                    table.insert ( GRM_UI.GRM_ToolCoreFrame.Safe , {} );
                                    index = #GRM_UI.GRM_ToolCoreFrame.Safe;
                                    GRM_UI.GRM_ToolCoreFrame.Safe[index].name = player.name
                                    GRM_UI.GRM_ToolCoreFrame.Safe[index].rankIndex = player.rankIndex;
                                    GRM_UI.GRM_ToolCoreFrame.Safe[index].class = GRM.GetClassColorRGB ( player.class );
                                    GRM_UI.GRM_ToolCoreFrame.Safe[index].reason = GRM.L ( "Kick" );
                                    GRM_UI.GRM_ToolCoreFrame.Safe[index].lastOnline = player.lastOnline;
                                    GRM_UI.GRM_ToolCoreFrame.Safe[index].isHighlighted = false;
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if #listOfPlayers > 1 then
        sort ( listOfPlayers , function ( a , b ) return a.name < b.name end );
    end

    if #GRM_UI.GRM_ToolCoreFrame.Safe then
        sort ( GRM_UI.GRM_ToolCoreFrame.Safe , function ( a , b ) return a.name < b.name end );
    end

    -- Get count
    GRM_G.counts[1] = #listOfPlayers;

    return listOfPlayers;
end

-----------------------------------------------------------
-- EXTRA CONTROL FUNCTIONS IN RELATION TO THIS FEATURE ----
-----------------------------------------------------------
-- Note, they will be placed under the general GRM global

-- Method:          GRM.RefreshAllMacroToolFrames()
-- What it Does:    Triggers a refresh of ALL the hybridscrollframes and features of the GRM Macro tool
-- Purpose:         UX
GRM.RefreshAllMacroToolFrames = function()
    if GRM_UI.GRM_ToolCoreFrame:IsVisible() then
        GRM_UI.RefreshManagementTool();

        if GRM_UI.GRM_ToolCoreFrame.GRM_ToolIgnoreListFrame:IsVisible() then
            GRM.TriggerIgnoredQueuedWindowRefresh();
        end
    end                    
end

-- Method:          GRM.GetSafePlayers()
-- What it Does:    Returns the number of players that are set to be ignored on the recommendations macro
-- Purpose:         It is good to know the count for visual reasons
GRM.GetSafePlayers = function( getCountAndPlayers )
    local count = 0;
    local names = {};
    local guildData = GRM_GuildMemberHistory_Save[ GRM_G.F ][ GRM_G.guildName ];
    local rule = GRM_UI.ruleTypeEnum2[GRM_UI.GRM_ToolCoreFrame.TabPosition];

        for _ , player in pairs ( guildData ) do
            if type ( player ) == "table" and player.safeList[rule][1] and player.name ~= GRM_G.addonuser then

                count = count + 1;
                -- Default just gets the count - otherwise it returns the list of players as well.
                if getCountAndPlayers then
                    names[count] = {};
                    names[count].name = player.name;
                    names[count].class = GRM.GetClassColorRGB ( player.class );
                    names[count].isHighlighted = false;
                    names[count].reason = "";
                    names[count].rankIndex = player.rankIndex;
                    names[count].lastOnline = player.lastOnline;
                end
            end
        end
    return count , names;
end

-- Method:          GRM.GetReasonIgnoredMsg ( int , int , int )
-- What it Does:    Returns the string reason an action cannot occur on the ignore list
-- Purpose:         To help the player understand why another player cannot be removed.
GRM.GetReasonIgnoredMsg = function ( myRank , targetRank )
    local result = "";

    if myRank >= targetRank then

        if myRank == targetRank then
            result = GRM.L ( "Same Rank" );
        elseif myRank > targetRank then
            result = GRM.L ( "Higher Rank" );
        end
    end

    return result;
end

-- Method:          GRM.RefreshMacroToolRuleCount()
-- What it Does:    Refreshes the UI text count on the macro tool
-- Purpose:         Update frames on the fly
GRM.RefreshMacroToolRuleCount = function()
    -- let's set the indicator text above the macro tool rule tabs
    if GRM_UI.GRM_ToolCoreFrame and GRM_UI.GRM_ToolCoreFrame:IsVisible() then
        if GRM_G.counts[1] == 0 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickQueText:SetTextColor ( 0 , 0.8 , 1 );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickQueText:SetTextColor ( 1 , 0 , 0 );
        end

        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameKickQueText:SetText ( GRM_G.counts[1] );

        if GRM_G.counts[2] == 0 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFramePromoteQueText:SetTextColor ( 0 , 0.8 , 1 );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFramePromoteQueText:SetTextColor ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[4][1] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[4][2] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[4][3] );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFramePromoteQueText:SetText ( GRM_G.counts[2] );

        if GRM_G.counts[3] == 0 then
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDemoteQueText:SetTextColor ( 0 , 0.8 , 1 );
        else
            GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDemoteQueText:SetTextColor ( GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[5][1] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[5][2] , GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].logColor[5][3] );
        end
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolCoreFrameDemoteQueText:SetText ( GRM_G.counts[3] );
    end
end

-- RULES!!!
-- Method:          GRM.GetCountOfNamesBeingFiltered()
-- What it Does:    Returns the number of names rules apply to
-- Purpose:         Refreshes the names
GRM.GetCountOfNamesBeingFiltered = function()
    local listOfNames = {};
    local k , p , d = 0 , 0 , 0;    -- Kick , Promote , Demote

    -- Add Remove Names
    if CanGuildRemove() then

        if time() - GRM_G.countAction[1] > 0.25 then
            listOfNames = GRM.GetKickNamesByFilterRules();
            for _ in pairs ( listOfNames ) do
                k = k + 1;
            end
            GRM_G.counts[1] = k;
        else
            k = GRM_G.counts[1];
        end
    end

    -- Add Promotion Names
    if CanGuildPromote() then
        if time() - GRM_G.countAction[2] > 0.25 then
            listOfNames = GRM.GetNamesByFilterRules( 2 );
            for _ in pairs ( listOfNames ) do
                p = p + 1;
            end
            GRM_G.counts[2] = p;
        else
            p = GRM_G.counts[2];
        end
    end

    -- Add Demotion Names
    if CanGuildDemote() then
        if time() - GRM_G.countAction[3] > 0.25 then
            listOfNames = GRM.GetNamesByFilterRules( 3 );
            for _ in pairs ( listOfNames ) do
                d = d + 1;
            end
            GRM_G.counts[3] = d;
        else
            d = GRM_G.counts[3];
        end
    end

    GRM.RefreshMacroToolRuleCount();

    return k , p , d;
end

------------------------
--- CUSTOM RULES -------
------------------------

-- Method:          GRM_UI.RefreshManagementTool( bool )
-- What it Does:    Refreshes the management tool
-- Purpose:         Compartmentalize the refresh details.
GRM_UI.RefreshManagementTool = function( isBanAltList , isBanInGuild )
    if not GRM_UI.GRM_ToolCoreFrame.IsInitialized then

        -- Check permissions - set tab as default one 
        if not CanGuildRemove() then
            if CanGuildPromote() then
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 2;
            elseif CanGuildDemote() then
                GRM_UI.GRM_ToolCoreFrame.TabPosition = 3;
            end
        end

        GRM_UI.LoadToolFrames ( false );
    end
    GRM_G.playerRankID = GRM.GetGuildMemberRankID ( GRM_G.addonUser );
    GRM_UI.GRM_ToolCoreFrame.GRM_ToolMacrodScrollChildFrame.BlacklistedNames = {};  -- reset the blacklist.
    GRM_UI.GRM_ToolCoreFrame.Safe = {}; -- reset this list to rebuild
    GRM.BuildQueuedScrollFrame ( true , true , isBanAltList , isBanInGuild );
    -- On reshow, always reset the macro
    GRM_UI.GRM_ToolCoreFrame.MacroEntries = {};
    GRM.BuildMacrodScrollFrame ( true , false );
    
    -- Load the options properly
    GRM_UI.LoadRulesUI();
    GRM_UI.RefreshToolButtonsOnUpdate();

    -- Populate the macro 
    if isBanAltList or isBanInGuild then
        GRM_UI.GRM_ToolCoreFrame.GRM_ToolBuildMacroButton:Click();
    end

end

-- Method:          GRM_UI.RefreshToolButtonsOnUpdate()
-- What it Does:    For the "OnUpdate" script handler of the button to update the text as needed
-- Purpose:         Quality of life information so as not needed to open button, it is just visual.
GRM_UI.RefreshToolButtonsOnUpdate = function()

    if GRM_G.guildName ~= "" then
        
        GRM_UI.GRM_LoadToolOldRosterButton.count = {GRM.GetCountOfNamesBeingFiltered()};
        GRM_UI.GRM_LoadToolOldRosterButton.total = GRM_UI.GRM_LoadToolOldRosterButton.count[1] + GRM_UI.GRM_LoadToolOldRosterButton.count[2] + GRM_UI.GRM_LoadToolOldRosterButton.count[3];
        GRM_UI.GRM_LoadToolButton.count = GRM_UI.GRM_LoadToolOldRosterButton.count;
        GRM_UI.GRM_LoadToolButton.total = GRM_UI.GRM_LoadToolOldRosterButton.total;

        if GRM_UI.GRM_LoadToolButton:IsVisible() then
            if GRM_UI.GRM_LoadToolButton.total > 0 then
                GRM_UI.GRM_LoadToolButtonText:SetText ( GRM.L ( "Macro Tool: {num}" , nil , nil , GRM_UI.GRM_LoadToolButton.total ) );
            else
                GRM_UI.GRM_LoadToolButtonText:SetText ( GRM.L ( "Macro Tool" ) );
            end
        end

        if GRM_UI.GRM_LoadToolOldRosterButton:IsVisible() then
            if GRM_UI.GRM_LoadToolOldRosterButton.total > 0 then
                GRM_UI.GRM_LoadToolOldRosterButtonText:SetText ( GRM.L ( "Macro Tool: {num}" , nil , nil , GRM_UI.GRM_LoadToolOldRosterButton.total ) );
            else
                GRM_UI.GRM_LoadToolOldRosterButtonText:SetText ( GRM.L ( "Macro Tool" ) );
            end
        end
    else
        GRM_UI.GRM_LoadToolButtonText:SetText ( GRM.L ( "Macro Tool" ) );
        C_Timer.After ( 5 , function()
            GRM_UI.RefreshToolButtonsOnUpdate();
        end);
    end
end

-- Method:          GRM_UI.LoadRulesUI()
-- What it Does:    Rebuilds the options settings... for kick rules
-- Purpose:         UX easily on call, can be recalled with a rank change too.
GRM_UI.LoadRulesUI = function()
    GRM_UI.ConfigureToolTab();
    GRM.BuildRulesScrollFrame ( true , true );
end

-- Method:          GRM_UI.FullMacroToolRefresh()
-- What it Does:    Triggers a full refresh of ALL frames, like if the player creates and adds a new rule it will reprocess all
-- Purpose:         Quality of life, live updating of the UI as changes are made.
GRM_UI.FullMacroToolRefresh = function()
    GRM.RefreshNumberOfHoursTilRecommend();
    GRM_UI.RefreshManagementTool();
    GRM.SyncSettings();
end

-- Method:          GRM_UI.GRM_ToolCoreFrame()
-- What it Does:    Handles some on load property controls, if it is a rules load, or you are loading to use the tool for kicking alts or currently banned but still in guild players
-- Purpose:         UX ease of controls.
GRM_UI.GRM_ToolCoreFrame:SetScript ( "OnShow" , function ()

    if GRM_G.KickAltControl then
        GRM_UI.RefreshManagementTool( GRM_G.KickAltControl );
        GRM_G.KickAltControl = false;
    elseif GRM_G.kickBannedControl then
        GRM_UI.RefreshManagementTool( false , GRM_G.kickBannedControl );
        GRM_G.kickBannedControl = false;
    else
        GRM_UI.RefreshManagementTool( false , false );
    end

    if GRM_AddonSettings_Save[GRM_G.F][GRM_G.addonUser].disableMacroToolLogSpam then
        GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton:SetChecked ( true );
    else
        GRM_UI.GRM_ToolCoreFrame.GRM_MacroToolDisableLogSpamCheckbutton:SetChecked ( false );
    end
end);
