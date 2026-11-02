-- ==========================================
-- 1. CONFIGURATION (ตั้งค่าชื่อตัวละครและโหมด)
-- ==========================================
-- โหมด: 
-- 1 = ไก่ตัน (ktscr.lua)
-- 2 = เมนูปกติ (manuscr.lua)
-- 3 = สคริปต์สำรอง (3scr.lua - ถ้ามี)
-- 4 = สคริปต์เกม AA (aascr.lua)

local ModeConfig = {
    ["ชื่อตัวละครที่1"] = 1,
    ["ชื่อตัวละครที่2"] = 2,
    ["ชื่อตัวละครที่3"] = 4, -- ตัวนี้จะรันสคริปต์ AA
}

-- โหมดเริ่มต้น กรณีไม่พบชื่อตัวละครใน Config ข้างบน
local DefaultMode = 2 

-- ==========================================
-- 2. GITHUB RAW URLS (ลิงก์ดิบจาก GitHub ของคุณ)
-- ==========================================
local BaseURL = "https://raw.githubusercontent.com/ghostxtoolofficial-cmd/ghost-x-hub/refs/heads/main/"

local Scripts = {
    [1] = BaseURL .. "ktscr.lua",
    [2] = BaseURL .. "manuscr.lua",
    [3] = BaseURL .. "3scr.lua",
    [4] = BaseURL .. "aascr.lua"
}

-- ==========================================
-- 3. BOOTSTRAPPER LOGIC (ระบบตรวจสอบและรัน)
-- ==========================================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local username = LocalPlayer.Name
local selectedMode = ModeConfig[username] or DefaultMode
local targetURL = Scripts[selectedMode]

if targetURL then
    print(string.format("[Ghost-X Hub] Player: %s | Running Mode: %d", username, selectedMode))
    
    -- ทำการโหลดและรันสคริปต์เป้าหมาย
    local success, err = pcall(function()
        loadstring(game:HttpGet(targetURL))()
    end)
    
    if not success then
        warn("[Ghost-X Hub] Execution Error: " .. tostring(err))
    end
else
    warn("[Ghost-X Hub] Invalid Script URL for Mode: " .. tostring(selectedMode))
end

