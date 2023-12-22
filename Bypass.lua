
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end 



function setvalue(address, value, flags)
 gg.setValues({{address = address, flags = flags, value = value}})
end

local so = gg.getRangesList('libanogs.so:bss')[1].start
local py = 0x13B0
setvalue(so + py, 64, 4)




function setvalue(address, value, flags)
 gg.setValues({{address = address, flags = flags, value = value}})
end

local so = gg.getRangesList('libanogs.so:bss')[1].start
local py = 0x13B0
setvalue(so + py, 64, 4)







gg.alert("Fix Văng Game √")




HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"Menu Skin Mod",

}, nil, "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :- @hmghak\nKHÔNG BẮN BOT - BẮN DƯỚI 10 KILL\nRESET GAME SAU 2 TRẬN\nBẮN DƯỚI 150M")

if VIPONLY == nil then else
if VIPONLY[1]== true then B1() end

end
PUBGMH = -1
end






function B1()

local function pass(...)

arg = {...}

local pas = gg.prompt

({"Vui Lòng Donate 10K Qua STK: 150724090307 (MBBank)\nNhắn tin qua telegram: @hoangminhgiang"}, {},{"text"})

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

pass("10k","t")




mainmenu = gg.multiChoice({
"Suit Karakter ( Permanent ) ",
"Suit Mummy ( Permanent ) ",
"Suit Blood Raven ( Permanent ) ",
"Suit Droid Red Blue ( Permanent ) ",
"Suit Droid Godzilla ( Permanent ) ",
"Suit Snow Man ( Permanent ) ",
"Suit Buaya ( Permanent ) ",
"M4 Băng (Bật Đảo Chờ)",
"M4 Băng (Tắt Top 1 Hoặc Chết)",
"M4 Blood Raven (Bật Đảo Chờ)",
"M4 Blood Raven (Tắt Top 1 Hoặc Chết)",
"comming soon",

}, nil, "Vui Lòng Tải Full Tài Nguyên Game\nMod Súng - Balo - Mũ Phải Tắt Và Bật Lại Khi Bắt Đầu Trận Mới\n⚠️ KHÔNG SỬ DỤNG MOD SKIN VÀO ACC CHÍNH ⚠️")
if mainmenu == nil then hide = -1 else
if mainmenu [1] == true then Suit1() end 
if mainmenu [2] == true then Suit2() end 
if mainmenu [3] == true then Suit3() end 
if mainmenu [4] == true then Suit4() end 
if mainmenu [5] == true then Suit5() end 
if mainmenu [6] == true then Suit6() end 
if mainmenu [7] == true then Suit7() end 
if mainmenu [8] == true then m4bang1() end 
if mainmenu [9] == true then m4bang2() end 
if mainmenu [10] == true then m4blood1() end 
if mainmenu [11] == true then m4blood2() end 
if mainmenu [12] == true then up() end 


PUBGMH = -1
end
end

function up()
end


function Suit1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1406064", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Karakter Tos")
gg.sleep(1700)
end

function Suit2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1400687", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Mummy")
gg.sleep(1700)
end

function Suit3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405909", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Blood Raven")
gg.sleep(1700)
end

function Suit4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1406123", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Droid Red Blue")
gg.sleep(1700)
end

function Suit5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405913", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1402883", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Droid Godzilla")
gg.sleep(1700)
end

function Suit6()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405838", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Snow Man")
gg.sleep(1700)
end

function Suit7()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405830", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Buaya")
gg.sleep(1700)
end

function m4bang1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040462", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040463", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("29100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040461", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" M4 Glacier On ")
end


function m4bang2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("1101004046", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("10100400", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010040462", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20300800", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010040463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20500500", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010040461", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("29100400", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" M4 Glacier OFF ")
end


function m4blood1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101004154", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010041542", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010041543", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("29100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010041541", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" M4 Blood Raven On")
end

function m4blood2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("1101004154", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("10100400", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010041542", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20300800", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010041543", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20500500", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010041541", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("29100400", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" M4 Blood Raven OFF ")
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
