local function pass(...)

arg = {...}

local pas = gg.prompt

({"🔑 KEY ĐƯỢC CẬP NHẬT LÚC: 22/08/2023 | 12H TRƯA MỖI NGÀY RESET KEY\n⚠️ VUI LÒNG XEM VIDEO HƯỚNG DẪN TRƯỚC KHI DÙNG\n👉 39K/1 THÁNG FREE KEY IB ADMIN TELEGRAM"}, {},{"text"})

pas = pas and pas[1] .. " " or os.exit(gg.alert("Thoát... Ấn Oke",""))

for i = 1, #arg do

if arg[i] .. " " ==  pas then

return gg.alert("Nhập Key Thành Công ✅", "")

end

end

while (true) do

os.exit(gg.alert("Key Sai Hoặc Hết Hạn❎", ""))

end 

end

pass("hmghackk_zwMZtM9F4m","t")


function HOME()
onan1st = gg.multiChoice({
"FIX VĂNG + CHỐNG CHECK [LOGO Krafton] - Bật Trước Khi Bật Bypass Logo",
}, nil, (os.date("")))
if onan1st == nil then
  else
if onan1st[1] == true then BP1()end
end
PUBGMH = -1
end

function BP1()

local Ranges=gg.getRangesList('/')
local function Read(module,type)
    for k,v in pairs(Ranges) do
        if v['internalName']:match('[^/]*$')==module and v['type']==type then
            return v['start']
        end
    end
end

local Table={}
local function Modify(address,value,flags)
    Table[#Table+1]={address=address,value=value,flags=flags}
end

Modify(Read('libanogs.so:bss','rw-p')+0x3a8,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x638,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x6c8,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x1948,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x6210,2,4)

  gg.setValues(Table)
	
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libanogs.so')[1].start
setvalue(so + "0x107360",32, "h 00 00 B0 E3 1E FF 2F E1")

gg.exit()

					
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
