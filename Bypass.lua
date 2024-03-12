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

pass("xOS7NLrKEbMvQFCX56Vz","t")



function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end



local t = {"libanogs.so:bss", "Cb"}
local tt = {0x9C8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 16638, freeze= true}})

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false  end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(""..#data.."") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("Not Found !", false) return false end else return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libanogs.so:bss')[1].start
py=0x9C8
setvalue(so+py,4, 16638)


gg.alert("Fix Văng Game √\nChơi Từ 1-2 Trận Rồi Reset Game")



HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"Tâm cộng - On", 
"Tâm cộng - Off", 
"Wide View On",
"Wide View Off",
"Menu Skin Mod",
"Thoát Menu Nếu Lag",

}, nil, "Vui Lòng Tải Full Tài Nguyên Game\nMod Súng - Balo - Mũ Phải Tắt Và Bật Lại Khi Bắt Đầu Trận Mới\n⚠️ KHÔNG SỬ DỤNG MOD SKIN VÀO ACC CHÍNH ⚠️")

if VIPONLY == nil then else
if VIPONLY[1]== true then Arm64CrosshairON() end
if VIPONLY[2]== true then Arm64CrosshairOFF() end
if VIPONLY[3]== true then Arm64WideViewON() end
if VIPONLY[4]== true then Arm64WideViewOFF() end
if VIPONLY[5]== true then B1() end
if VIPONLY[6]== true then B2() end
end
PUBGMH = -1
end

function Arm64WideViewON()
so=gg.getRangesList("libUE4.so")[1].start
py=0x334BE48
setvalue(so+py,16, 1.4)
gg.toast("Activated")
end

function Arm64WideViewOFF()
so=gg.getRangesList("libUE4.so")[1].start
py=0x334BE48
setvalue(so+py,16, 1.0)
gg.toast("Deactive")
end



function Arm64CrosshairON()
so=gg.getRangesList("libUE4.so")[1].start
py=0x54E7870
setvalue(so+py,4, 505425152)
gg.toast("Activated")
end

function Arm64CrosshairOFF()
so=gg.getRangesList("libUE4.so")[1].start
py=0x54E7870
setvalue(so+py,4, 505481216)
gg.toast("Deactive")
end

function B1()
mainmenu = gg.multiChoice({
"Xác Ướp Trắng ( Đảo Chờ ) ",
"Xác Ướp Vàng ( Đảo Chờ ) ",
"Xác Ướp Băng ( Đảo Chờ ) ",
"Suit Blood Raven ( Đảo Chờ ) ",
"Suit Firoe X-Suit ( Đảo Chờ ) ",
"Suit Marmoris X-Suit ( Đảo Chờ ) ",
"Suit Pharaoh ( Đảo Chờ ) ",
"Ak Băng (Bật Đảo Chờ)",
"Ak Băng (Tắt Top 1 Hoặc Chết)",
"M4 Băng (Bật Đảo Chờ)",
"M4 Băng (Tắt Top 1 Hoặc Chết)",
"M4 Blood Raven (Bật Đảo Chờ)",
"M4 Blood Raven (Tắt Top 1 Hoặc Chết)",
"Combo 1 (Bật Đảo Chờ) ",
"Combo 1 (Tắt Top 1 Hoặc Chết)",

}, nil, "")
if mainmenu == nil then hide = -1 else
if mainmenu [1] == true then Suittrang() end 
if mainmenu [2] == true then Suitvang() end
if mainmenu [3] == true then Suitbang() end  
if mainmenu [4] == true then Suitraven() end 
if mainmenu [5] == true then Suitfiroe() end 
if mainmenu [6] == true then Suitmarmoris() end 
if mainmenu [7] == true then Suitpharaoh() end 
if mainmenu [8] == true then akbang1() end 
if mainmenu [9] == true then akbang2() end 
if mainmenu [10] == true then m4bang1() end 
if mainmenu [11] == true then m4bang2() end 
if mainmenu [12] == true then m4blood1() end 
if mainmenu [13] == true then m4blood2() end 
if mainmenu [14] == true then combo1on() end 
if mainmenu [15] == true then combo1off() end 


PUBGMH = -1
end
end

function combo1on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("502001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1502003014", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("502004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1502003014", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("502002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1502003014", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("502005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1502003014", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("502003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1502003014", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Helm mutan On")

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" Bag cactus serif On")
end

function combo1off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1501003174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("501001", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1501003174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("501004", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1501003174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("501002", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1501003174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("501005", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1501003174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("501003", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1501003174", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("501006", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Bag cactus serif OFF")

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1502003014", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("502001", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1502003014", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("502004", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1502003014", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("502002", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1502003014", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("502005", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1502003014", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("502003", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" Helm mutan OFF")
end



function Suittrang()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1400687", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Xác ướp trắng")
gg.sleep(1700)
end

function Suitvang()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405623", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Xác ướp vàng")
gg.sleep(1700)
end

function Suitbang()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1406891", gg.TYPE_DWORD)
gg.editAll("1410436", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Xác ướp băng")
gg.sleep(1700)
end

function Suitraven()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405909", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Blood Raven")
gg.sleep(1700)
end

function Suitfiroe()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1407102", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Firoe X-Suit")
gg.sleep(1700)
end

function Suitmarmoris()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll("1406971", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Suit Marmoris X-Suit")
gg.sleep(1700)
end


function Suitpharaoh()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1400129", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1406469", gg.TYPE_DWORD)
gg.editAll("1410128", gg.TYPE_DWORD)
gg.toast("Suit Pharaoh")
gg.sleep(1700)
end

function m4bang1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040462", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040463", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("29100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040461", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" M4 Glacier On ")
end


function m4bang2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
gg.searchNumber("1101004046", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("10100400", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010040462", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20300800", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010040463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("20500500", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010040461", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("29100400", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" M4 Glacier OFF ")
end

function akbang1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101001089", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("29100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010010891", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Akm Glacier On")
 end

function akbang2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1101001089", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("10100100", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1010010891", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("29100100", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Akm Glacier OFF")
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



function B2()
os.exit()
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



