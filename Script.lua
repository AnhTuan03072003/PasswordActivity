local function pass(...)

arg = {...}

local pas = gg.prompt

({"12H TRƯA MỖI NGÀY RESET KEY\n⚠️ VUI LÒNG XEM VIDEO HƯỚNG DẪN TRƯỚC KHI DÙNG"}, {},{"text"})

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

pass("hmghackk_LPIj7XPIoq","t")

gg.alert("⚠️ CẢNH BÁO ⚠️\n👉 Vui Lòng Bật Hack Sau Khi Đã Bật Tường Lửa Và Không Tắt Đến Hết Trận\n👉 Kết Thúc Trận Chọn Thoát Trận Trong Menu\n👉 Mọi Sự Ngu Dốt Của Bạn Thì Bạn Phải Chấp Nhận")



function Main()

menu = gg.multiChoice({

"🛡️Thoát Khi Kết Thúc Trận [Bắt Buộc - ANTIBAN]",

"👉Map Sáng",

"👉Cam Xa 3 Nấc",

"👉Hide Name",

"👉Aim",

"👉Fps",

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

            setHexMemory("libil2cpp.so", 0x1EED6CC, "01 00 A0 E3")
            setHexMemory("libil2cpp.so", 0x1EED6D0, "1E FF 2F E1")
            setHexMemory("libil2cpp.so", 0x1EEEA34, "01 00 A0 E3")
            setHexMemory("libil2cpp.so", 0x1EEEA38, "1E FF 2F E1")
            setHexMemory("libil2cpp.so", 0x20D3DD0, "01 00 A0 E3")
            setHexMemory("libil2cpp.so", 0x20D3DD4, "1E FF 2F E1")

            

   

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

            setHexMemory("libil2cpp.so", 0x18EC200, "81 01 A0 E3")
			setHexMemory("libil2cpp.so", 0x18EC204, "1E FF 2F E1")
			
gg.toast("Unlock Cam Xa On✅")

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

            setHexMemory("libil2cpp.so", 0xEB8398, "00 00 A0 E3")
			setHexMemory("libil2cpp.so", 0xEB839C, "1E FF 2F E1")
			
gg.toast("Hide Name On✅")

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

            setHexMemory("libil2cpp.so", 0x1D70AF4, "01 00 A0 E3")
			setHexMemory("libil2cpp.so", 0x1D70AF8, "1E FF 2F E1")
			
gg.toast("Aim On✅")

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

            setHexMemory("libil2cpp.so", 0xFC4EB4, "01 00 A0 E3")
            setHexMemory("libil2cpp.so", 0xFC4EB8, "1E FF 2F E1")
            setHexMemory("libil2cpp.so", 0xFC4FA8, "01 00 A0 E3")
            setHexMemory("libil2cpp.so", 0xFC4FAC, "1E FF 2F E1")
            setHexMemory("libil2cpp.so", 0xFD3138, "01 00 A0 E3")
            setHexMemory("libil2cpp.so", 0xFD313C, "1E FF 2F E1")

            

   

gg.toast("Fps 60-120 ✅")

end








function a7()

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



function a8()
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

