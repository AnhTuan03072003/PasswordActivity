local function pass(...)

arg = {...}

local pas = gg.prompt

({"🔑 KEY ĐƯỢC CẬP NHẬT LÚC: 24/06/2023 | 12H TRƯA MỖI NGÀY RESET KEY\n⚠️ VUI LÒNG XEM VIDEO HƯỚNG DẪN TRƯỚC KHI DÙNG\n👉 20K/1 THÁNG FREE KEY IB ADMIN TELEGRAM"}, {},{"text"})

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

pass("hmghackk_freevip","t")

gg.alert("⚠️ CẢNH BÁO ⚠️\n👉 Vui Lòng Bật Hack Sau Khi Đã Bật Tường Lửa Và Không Tắt Đến Hết Trận\n👉 Kết Thúc Trận Chọn Thoát Trận Trong Menu\n👉 Mọi Sự Ngu Dốt Của Bạn Thì Bạn Phải Chấp Nhận")

function Main()

menu = gg.multiChoice({

"🛡️Thoát Khi Kết Thúc Trận [Bắt Buộc - ANTIBAN]",

"👉Map Sáng",

"👉Đổi Tên",

"👉Cam Xa 3 Nấc",

"👉Aim Full Tướng",

"👉Show Unti",

"👉Cam xa x1",
"👉Cam xa x2",
"👉Bypass Report [Trận]",

"Thoát"

}, nil, '⚠️ CẢNH BÁO ⚠️\n👉 Vui Lòng Bật Hack Sau Khi Đã Bật Tường Lửa Và Không Tắt Khi Hết Trận\n👉 Kết Thúc Trận Chọn Thoát Trận Trong Menu')

if menu == nil then else

if menu[1] == true then a1() end

if menu[2] == true then a2() end

if menu[3] == true then a3() end

if menu[4] == true then a4() end

if menu[5] == true then a5() end

if menu[6] == true then a6() end

if menu[7] == true then a7() end

if menu[8] == true then a8() end

if menu[9] == true then a9() end

if menu[10] == true then a10() end
end

XGCK = -1

end

function a1()

gg.processKill()

gg.processKill()

gg.alert("Khi Vào Lại Game Nhớ Tắt Tường Lửa 👍\nChọn Khởi động lại trò chơi\nVui Lòng Chọn Lại Liên Quân Mobile Có MB Cao Nhất")

os.exit()

end

function a2()

local n, startAddress, endAddress = nil, 0, 0

local function name(lib)

 if n == lib then

  return startAddress, endAddress

 end

 local ranges = gg.getRangesList(lib or 'libil2cpp.so')

 for i, v in ipairs(ranges) do

  if v.state == "Xa" then

   startAddress = v.start

   endAddress = ranges[#ranges]['end']

   break

  end

 end

 return startAddress, endAddress

end

local function setHexMemory(libname, offset, hex)

 name(libname)

 local t, total = {}, 0

 for h in string.gmatch(hex, "%S%S") do

     table.insert(t, {

         address = startAddress + offset + total,

         flags = gg.TYPE_BYTE,

         value = h .. "r"

     })

     total = total + 1

 end

 local res = gg.setValues(t)

 if type(res) ~= 'string' then

  return trueo

 else

  gg.alert(res)

  return false

 end

end

            setHexMemory("libil2cpp.so", 0xECF4F4, "01 00 A0 E3 1E FF 2F E1")

            setHexMemory("libil2cpp.so", 0xECF4F8, "1E FF 2F E1 01 00 A0 E3")

            setHexMemory("libil2cpp.so", 0x1ECAF90, "01 00 A0 E3 1E FF 2F E1")

            setHexMemory("libil2cpp.so", 0x1ECAF94, "1E FF 2F E1 06 60 A0 E3")

            setHexMemory("libil2cpp.so", 0x1F369F8, "06 60 A0 E3")

            

            

   

gg.toast("🔦 Đèn Pin Đã Sáng Rồi 😂")

end

function a3()

local n, startAddress, endAddress = nil, 0, 0

local function name(lib)

 if n == lib then

  return startAddress, endAddress

 end

 local ranges = gg.getRangesList(lib or 'libil2cpp.so')

 for i, v in ipairs(ranges) do

  if v.state == "Xa" then

   startAddress = v.start

   endAddress = ranges[#ranges]['end']

   break

  end

 end

 return startAddress, endAddress

end

local function setHexMemory(libname, offset, hex)

 name(libname)

 local t, total = {}, 0

 for h in string.gmatch(hex, "%S%S") do

     table.insert(t, {

         address = startAddress + offset + total,

         flags = gg.TYPE_BYTE,

         value = h .. "r"

     })

     total = total + 1

 end

 local res = gg.setValues(t)

 if type(res) ~= 'string' then

  return trueo

 else

  gg.alert(res)

  return false

 end

end

            setHexMemory("libil2cpp.so", 0xEB83C0, "01 00 A0 E3")

            setHexMemory("libil2cpp.so", 0xEB83C4, "1E FF 2F E1")

            

            

    

gg.toast("Đổi Tên On✅")

end

function a4()

local n, startAddress, endAddress = nil, 0, 0

local function name(lib)

 if n == lib then

  return startAddress, endAddress

 end

 local ranges = gg.getRangesList(lib or 'libil2cpp.so')

 for i, v in ipairs(ranges) do

  if v.state == "Xa" then

   startAddress = v.start

   endAddress = ranges[#ranges]['end']

   break

  end

 end

 return startAddress, endAddress

end

local function setHexMemory(libname, offset, hex)

 name(libname)

 local t, total = {}, 0

 for h in string.gmatch(hex, "%S%S") do

     table.insert(t, {

         address = startAddress + offset + total,

         flags = gg.TYPE_BYTE,

         value = h .. "r"

     })

     total = total + 1

 end

 local res = gg.setValues(t)

 if type(res) ~= 'string' then

  return trueo

 else

  gg.alert(res)

  return false

 end

end

            setHexMemory("libil2cpp.so", 0xFC4160, "01 00 A0 E3 1E FF 2F E1")

            setHexMemory("libil2cpp.so", 0xFC4164, "1E FF 2F E1 06 40 A0 E3")

            setHexMemory("libil2cpp.so", 0xFD2D00, "06 40 A0 E3 01 00 A0 E3")

            setHexMemory("libil2cpp.so", 0xFD418C, "01 00 A0 E3 1E FF 2F E1")

            setHexMemory("libil2cpp.so", 0xFD4190, "1E FF 2F E1")

gg.toast("Unlock Cam Xa On✅")

end


function a5()

local n, startAddress, endAddress = nil, 0, 0

local function name(lib)

 if n == lib then

  return startAddress, endAddress

 end

 local ranges = gg.getRangesList(lib or 'libil2cpp.so')

 for i, v in ipairs(ranges) do

  if v.state == "Xa" then

   startAddress = v.start

   endAddress = ranges[#ranges]['end']

   break

  end

 end

 return startAddress, endAddress

end

local function setHexMemory(libname, offset, hex)

 name(libname)

 local t, total = {}, 0

 for h in string.gmatch(hex, "%S%S") do

     table.insert(t, {

         address = startAddress + offset + total,

         flags = gg.TYPE_BYTE,

         value = h .. "r"

     })

     total = total + 1

 end

 local res = gg.setValues(t)

 if type(res) ~= 'string' then

  return trueo

 else

  gg.alert(res)

  return false

 end

end

           setHexMemory("libil2cpp.so", 0x1D4C27C, "01 00 A0 E3")

           setHexMemory("libil2cpp.so", 0x1D4C280, "1E FF 2F E1")

           

gg.alert("AIM FULL TƯỚNG ON\nAIM TƯỚNG KHÁC LANE CHỌN PHẠM VỊ GẦN NHẤT TRONG SETTING GAME")

end


function a6()

local n, startAddress, endAddress = nil, 0, 0

local function name(lib)

 if n == lib then

  return startAddress, endAddress

 end

 local ranges = gg.getRangesList(lib or 'libil2cpp.so')

 for i, v in ipairs(ranges) do

  if v.state == "Xa" then

   startAddress = v.start

   endAddress = ranges[#ranges]['end']

   break

  end

 end

 return startAddress, endAddress

end

local function setHexMemory(libname, offset, hex)

 name(libname)

 local t, total = {}, 0

 for h in string.gmatch(hex, "%S%S") do

     table.insert(t, {

         address = startAddress + offset + total,

         flags = gg.TYPE_BYTE,

         value = h .. "r"

     })

     total = total + 1

 end

 local res = gg.setValues(t)

 if type(res) ~= 'string' then

  return trueo

 else

  gg.alert(res)

  return false

 end

end


 setHexMemory("libil2cpp.so", 0x170458C, "00 00 A0 E3 1E FF 2F E1")
setHexMemory("libil2cpp.so", 0x171039C, "00 00 A0 E3 1E FF 2F E1")
setHexMemory("libil2cpp.so", 0x18EF804, "00 00 A0 E3 1E FF 2F E1")
setHexMemory("libil2cpp.so", 0x197C6D0, "00 00 A0 E3 1E FF 2F E1")
setHexMemory("libil2cpp.so", 0x1AE7DB4, "00 00 A0 E3 1E FF 2F E1")
setHexMemory("libil2cpp.so", 0x1AE7F08, "00 00 A0 E3 1E FF 2F E1")
 
            
gg.toast("Show Unti On✅")

end


function a7()
local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
 if n == lib then
  return startAddress, endAddress
 end
 local ranges = gg.getRangesList(lib or 'libil2cpp.so')
 for i, v in ipairs(ranges) do
  if v.state == "Xa" then
   startAddress = v.start
   endAddress = ranges[#ranges]['end']
   break
  end
 end
 return startAddress, endAddress
end
local function setHexMemory(libname, offset, hex)
 name(libname)
 local t, total = {}, 0
 for h in string.gmatch(hex, "%S%S") do
     table.insert(t, {
         address = startAddress + offset + total,
         flags = gg.TYPE_BYTE,
         value = h .. "r"
     })
     total = total + 1
 end
 local res = gg.setValues(t)
 if type(res) ~= 'string' then
  return trueo
 else
  gg.alert(res)
  return false
 end
end

            setHexMemory("libil2cpp.so", 0x18A2A04, "81 01 A0 E3 1E FF 2F E1")
           setHexMemory("libil2cpp.so", 0x18A2A08, "81 01 A0 E3 1E FF 2F E1")
       
            
            
gg.toast("Cam xa 1x On✅")

end

function a7()
local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
 if n == lib then
  return startAddress, endAddress
 end
 local ranges = gg.getRangesList(lib or 'libil2cpp.so')
 for i, v in ipairs(ranges) do
  if v.state == "Xa" then
   startAddress = v.start
   endAddress = ranges[#ranges]['end']
   break
  end
 end
 return startAddress, endAddress
end
local function setHexMemory(libname, offset, hex)
 name(libname)
 local t, total = {}, 0
 for h in string.gmatch(hex, "%S%S") do
     table.insert(t, {
         address = startAddress + offset + total,
         flags = gg.TYPE_BYTE,
         value = h .. "r"
     })
     total = total + 1
 end
 local res = gg.setValues(t)
 if type(res) ~= 'string' then
  return trueo
 else
  gg.alert(res)
  return false
 end
end

            setHexMemory("libil2cpp.so", 0x18A2A04, "90 01 A0 E3 1E FF 2F E1")
           setHexMemory("libil2cpp.so", 0x18A2A08, "90 01 A0 E3 1E FF 2F E1")
       
            
            
gg.toast("Cam xa 1x On✅")

end


function a9()

gg.clearResults()

gg.setRanges(16396)

gg.searchNumber(":Report", gg.TYPE_BYTE)

gg.getResults(99999)

gg.editAll("0", gg.TYPE_BYTE)

gg.clearResults()

gg.clearResults()

gg.searchNumber(";Report", gg.TYPE_WORD)

gg.getResults(99999)

gg.editAll("0", gg.TYPE_WORD)

gg.clearResults()

gg.clearResults()

gg.searchNumber(";report", gg.TYPE_WORD)

gg.getResults(99999)

gg.editAll("0", gg.TYPE_WORD)

gg.clearResults()

gg.clearResults()

gg.searchNumber(":report", gg.TYPE_BYTE)

gg.getResults(99999)

gg.editAll("0", gg.TYPE_BYTE)

gg.clearResults()

gg.toast("XOÁ TỐ CÁO THÀNH CÔNG✅")

end



function a10()
os.exit()

end

while true do

if gg.isVisible(true) then

XGCK = 1

gg.setVisible(false)

end

gg.clearResults()

if XGCK == 1 then Main() end

end

