local function pass(...)

arg = {...}

local pas = gg.prompt

({"Vui Lòng Nhập Key"}, {},{"text"})

pas = pas and pas[1] .. " " or os.exit(gg.alert("Thoát... Ấn Oke",""))

for i = 1, #arg do

if arg[i] .. " " ==  pas then

return gg.toast("Nhập Key Thành Công ✅")

end

end

while (true) do

os.exit(gg.alert("Key Sai Hoặc Hết Hạn❎", ""))

end 

end

pass("GgVAiMro5Q6X8sf4cPUF","t")






HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"BYPASS LOGO THỨ 1",
"🛡️CHECK ANTIBAN [SẢNH CHỜ]",
"BYPASS ISLAND ON", 
"BYPASS ISLAND OFF",


}, nil, "Logo 1st thường load ~ 20 giây\n⚠️ Reset Game Sau 1-2 Trận Đấu")

if VIPONLY == nil then else
  if VIPONLY[1]== true then LOGO() end
    if VIPONLY[2]== true then CHECK() end
if VIPONLY[3]== true then ON() end
 if VIPONLY[4]== true then OFF() end




end
PUBGMH = -1
end


function CHECK()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
if gg.getResultCount() > 4000 then
gg.processKill()
gg.alert("⛔ ANTIBAN KHÔNG HOẠT ĐỘNG ⛔")
os.exit()
else
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
if gg.getResultCount() < 4000 then
gg.alert("✅ ANTIBAN HOẠT ĐỘNG ✅")
gg.clearResults()
end
end
end

function LOGO()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

so=gg.getRangesList('libanogs.so:bss')[1].start
setvalue(so + 0x4E8, 4, 64)
  
so=gg.getRangesList('libanogs.so:bss')[1].start
setvalue(so + 0x590, 4, 64)

  
gg.alert("Fix Văng + Bypass Logo Thành Công")
   
end



function ON()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
  
so=gg.getRangesList('libgcloud.so')[1].start
setvalue(so + "0x13638C", 4, "h C0 03 5F D6")
gg.alert("Bypass Island ON")
end

function OFF()

gg.processKill()
end



while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
if PUBGMH == 1 then
HOME()
end
end
