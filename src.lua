local frame = CreateFrame("Frame");
local function nothing() return end

frame:RegisterEvent("PLAYER_LOGIN");
frame:SetScript("OnEvent", function()
    SubscriptionInterstitial_LoadUI = nothing
end)