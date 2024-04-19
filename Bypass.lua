
local function pass(...)

arg = {...}

local pas = gg.prompt

({"Vui Lòng Nhập Key\n🔑KEY ĐÃ RESET: 19/4/2024 "}, {},{"text"})

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

pass("75qCt1HmjKD3W4a2ZJlr","t")




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
		 else---@wzzyyds
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
			if #Offset ~= 1 then---@wzzyyds
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
		return _S---@wzzyyds
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"FIX VĂNG LOGO 1st",
"ISLAND ON",
"ISLAND OFF",
"Admin",
"Thoát Nếu Menu - Không Thoát App",


}, nil, "⚠️ Reset Game Sau 1-2 Trận Đấu ⚠️\n⚠️ Vui lòng test acc phụ vài game ⚠️")

if VIPONLY == nil then else
  if VIPONLY[1]== true then LOGO() end

  if VIPONLY[2]== true then islandon() end
  if VIPONLY[3]== true then islandoff() end
     
 if VIPONLY[4]== true then admin() end

     
 if VIPONLY[5]== true then exitt() end




end
PUBGMH = -1
end



function islandon()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
  
so=gg.getRangesList('libgcloud.so')[1].start
setvalue(so + "0x13638C", 4, "h C0 03 5F D6")
gg.alert("Bypass Island ON")
end

function islandoff()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
  
so=gg.getRangesList('libgcloud.so')[1].start
setvalue(so + "0x13638C", 4, "h FF 43 04 D1")
gg.alert("Bypass Island OFF")
end




function admin()
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

pass("","t")
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("403003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1405623", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("xac uop vang")

gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("10100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20300800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1,010,040,462", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1,010,040463", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1,010,040463", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("29100400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010040461", gg.TYPE_DWORD)
gg.clearResults()

gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501001174", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

gg.searchNumber("501002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501002174", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)

gg.searchNumber("501003", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501001174", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501002174", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1501003174", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1101001089", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("29100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1010010891", gg.TYPE_DWORD)
gg.clearResults()
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
end



function LOGO()

function setvalue(address, flags, value)
    local tt = {{address = address, flags = flags, value = value}}
    gg.setValues(tt)
end

local gc_values = {
0x261220, 0x278588
}
local ano_values = {
0x447638
}
local ue_values = {
   0xC49B230, 0xCB6429C, 0x9654630, 0x9727360, 0xA032744, 0xCBB4328
}
local gcv_values = {
0x9251c, 0x9449c, 0x93770, 0x93714, 0x92588, 0x95980, 0x94440, 0x94284, 0x924bc
}
local gcvnn_values = {
0x164038, 0x16cb40, 0x56ea8, 0x56e24, 0x3b860, 0x3bcc0, 0x3c560, 0x3cb90, 0x3cf20
}

local ano = gg.getRangesList('libanogs.so')[1].start
local gcv = gg.getRangesList('libGCloudVoice.so')[1].start
local gcvnn = gg.getRangesList('libGvoiceNN.so')[1].start
local gc = gg.getRangesList('libgcloud.so')[1].start
local ue = gg.getRangesList('libUE4.so')[1].start


for _, lonte in ipairs(ano_values) do
    setvalue(ano + lonte, 4, 0)
end

for _, haik in ipairs(gc_values) do
    setvalue(gc + haik, 32, "h000080D2C0035FD6")
end

for _, entod in ipairs(ue_values) do
    setvalue(ue + entod, 4, 0)
end

for _, mmk in ipairs(gcv_values) do
    setvalue(gcv + mmk, 4, 0)
end

for _, tempik in ipairs(gcvnn_values) do
    setvalue(gcvnn + tempik, 4, 0)
end

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4E8}
local ttt = S_Pointer(t, tt, true)

gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})


local t = {"libanogs.so:bss", "Cb"}
local tt = {0x590}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})



function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end




gg.alert("Fix Văng + Bypass Logo Thành Công\n❌ KHÔNG TẮT APP NÀY ĐI NHÉ")
   
end



function exitt()
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
