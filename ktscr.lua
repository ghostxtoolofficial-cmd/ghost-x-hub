getgenv().Script_Mode = "Kaitun_Script"
_G.OneClickSettings = {
    ["MainIsFarmLevel"] = false, -- เปิดไว้ถ้าจะเน้นฟาร์มเวลเป็นหลัก

    -- ล็อกผลไว้ กันมันเอาไปกินหรือใช้ทำอย่างอื่น
    ["LockFruits"] = {
        "Dough-Dough",
        "Dragon-Dragon",
        "Yeti-Yeti"
    },

    -- ซื้อจาก NPC + กิน อันนี้จะเลือกก่อน Regular
    -- ถ้ากินผลในลิสต์นี้อยู่แล้ว มันจะไม่ไปกินผลอื่น
    ["MainFruits"] = {
        "Dough-Dough",
        "Pain-Pain",
        "T-Rex-T-Rex",
        "Shadow-Shadow",
        "Tiger-Tiger",
        "Kitsune-Kitsune"
    },

    -- ซื้อ + กินผลสำรองระหว่างรอ MainFruits ไม่อยากให้กินก็ใส่ {}
    ["RegularFruits"] = {
        "Flame-Flame",
        "Magma-Magma",
        "Dark-Dark",
        "Light-Light"
    },

    ["FragmentsCap"] = 50000, -- จะให้ฟาร์ม Fragments ไว้เท่าไหร่
    ["Upgrade Race"] = false, -- ทำเผ่า
    ["Pull Lever"] = true, -- ทำคันโยก
    ["Saber"] = true, -- true = ถ้าข้ามมาแล้วจะย้อนกลับไปทำ / false = ทำถ้ามีโอกาสตอนฟาร์มโลก 1
    ["Farm Shark Anchor"] = true, -- ทำ Shark Anchor
    ["Cursed Dual Katana"] = true, -- ทำดาบคู่
    ["Skull Guitar"] = true, -- ทำกีตาร์
    ["Godhuman"] = true, -- ทำ Godhuman

    ["Farm Sword Mastery"] = {
        ["Enabled"] = true, -- เปิดฟาร์มมาสดาบ
        ["Mode"] = "All", -- All = ทุกเล่มตามระดับที่ตั้ง / Selected = เอาแค่เล่มที่ใส่ชื่อไว้
        ["Swords"] = {}, -- ใส่ตอนเลือก Selected เช่น {"Yama", "Tushita", "Shark Anchor"}

        -- 0 = Common / 1 = Uncommon / 2 = Rare / 3 = Legendary / 4 = Mythical
        ["MinRarity"] = 3, -- ใช้กับ All อันนี้คือเอาตั้งแต่ Legendary ขึ้นไป
    },

    ["Webhook"] = {
        ["Enabled"] = false, -- อยากให้ส่งเข้า Discord ก็เปิด true
        ["URL"] = "", -- ใส่ลิงก์ webhook ตรงนี้
        ["Interval"] = 300, -- ส่งทุกกี่วิ ต่ำสุด 60 วิ อันนี้ 300 = 5 นาที
        ["SendOnStart"] = true, -- เปิดมาพอข้อมูลโหลดพร้อมก็ส่งให้รอบนึงเลย
        ["HideName"] = false, -- ถ้าไม่อยากให้โชว์ชื่อรหัสในรายงานก็เปิด true
    },
}
(getgenv()).key = "MARU6J9LA2FEMWMUB9PDTKUVIL";
(getgenv()).id = "1148578287937921105";
loadstring(game:HttpGet("https://cdn.maruhub.online/s/pc"))()
