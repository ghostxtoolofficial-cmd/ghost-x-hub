-- ==========================================
-- GITHUB RAW URLS
-- ==========================================
local BaseURL = "https://raw.githubusercontent.com/ghostxtoolofficial-cmd/ghost-x-hub/refs/heads/main/"

local Scripts = {
    [1] = BaseURL .. "ktscr.lua",
    [2] = BaseURL .. "manuscr.lua",
    [3] = BaseURL .. "aascr.lua" -- จากรูปใน GitHub มี 3 สคริปต์หลัก (aascr, ktscr, manuscr)
}

-- ==========================================
-- BOOTSTRAPPER LOGIC
-- ==========================================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local username = LocalPlayer.Name

-- ดึงค่าจาก Config ข้างนอก (ถ้าไม่ได้ตั้งข้างนอกไว้ จะใช้โหมด 2 เป็นค่าเริ่มต้น)
local userConfig = _G.ModeConfig or {}
local defaultMode = _G.DefaultMode or 2

local selectedMode = userConfig[username] or defaultMode
local targetURL = Scripts[selectedMode]

if targetURL then
    print(string.format("[Ghost-X Hub] Player: %s | Running Mode: %d", username, selectedMode))
    
    local success, err = pcall(function()
        loadstring(game:HttpGet(targetURL))()
    end)
    
    if not success then
        warn("[Ghost-X Hub] Failed to load target script: " .. tostring(err))
    end
else
    warn("[Ghost-X Hub] Invalid mode selected: " .. tostring(selectedMode))
end
