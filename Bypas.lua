local function pass(...)

arg = {...}

local pas = gg.prompt

({"🔑 KEY ĐƯỢC CẬP NHẬT LÚC: 11/08/2023 | 12H TRƯA MỖI NGÀY RESET KEY\n⚠️ VUI LÒNG XEM VIDEO HƯỚNG DẪN TRƯỚC KHI DÙNG\n👉 20K/1 THÁNG FREE KEY IB ADMIN TELEGRAM"}, {},{"text"})

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

pass("hmghackk_DkmuibfCFo","t")

function HOME()
onan1st = gg.multiChoice({
" CRASH + CHỐNG CHECK [LOGO 2]",
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
