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

pass("Zy8u7mEcFfR54xQzpGr9","t")






HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"BYPASS LOGO 1st sắp qua 2",
"BYPASS ISLAND ON", 
"BYPASS ISLAND OFF",


}, nil, "")

if VIPONLY == nil then else
  if VIPONLY[1]== true then LOGO() end
if VIPONLY[2]== true then ON() end
 if VIPONLY[3]== true then OFF() end




end
PUBGMH = -1
end

function LOGO()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
gg.toast("Load 2 giây")
  gg.sleep(1999)
so=gg.getRangesList('libanogs.so:bss')[1].start
setvalue(so + 0x4E8, 4, 64)
so=gg.getRangesList('libanogs.so:bss')[1].start
setvalue(so + 0x590, 4, 4046)
gg.alert("Fix Văng + Bypass Logo Thành Công")
end



function ON()

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
