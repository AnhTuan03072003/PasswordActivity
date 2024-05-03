
local function pass(...)

arg = {...}

local pas = gg.prompt

({"Vui Lòng Nhập Key\n🔑KEY ĐÃ RESET: 03/05/2024 "}, {},{"text"})

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

pass("L0er8K3741YxfkJHNqIn","t")




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
		local _Q = tonumber(0x0)
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


function xqmnb(Search,Modification)
   gg.clearResults()
   gg.setRanges(Search[1].memory)
   gg.searchNumber(Search[3].value,Search[3].type,false,536870912,0,-1)
   if gg.getResultCount()==0 then
      gg.toast(Search[2].name..'开启失败')
      return
   end
   local Result=gg.getResults(gg.getResultCount())
   local sum
   for index=4,#Search do
      sum=0
      for i=1,#Result do
         if gg.getValues({{address=Result[i].address+Search[index].offset,flags=Search[index].type}})[1].value~=Search[index].lv then
            Result[i].Usable=true
            sum=sum+1
         end
      end
      if sum==#Result then
         gg.toast(Search[2].name..'开启失败')
         return
      end
   end
   local Data,Freeze,Freezes={},{},0
   sum=0
   for index,value in ipairs(Modification)do
      for index=1,#Result do
         if not Result[index].Usable then
            local Value={address=Result[index].address+value.offset,flags=value.type,value=value.value,freeze=true}
            if value.freeze then
               Freeze[#Freeze+1]=Value
               Freezes=Freezes+1
            else
               Data[#Data+1]=Value
            end
            sum=sum+1
         end
      end
   end
      gg.setValues(Data)
      gg.addListItems(Freeze)
   if Freezes==0 then
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据')
   else
      gg.toast(Search[2].name..'开启成功,共修改'..sum..'条数据,冻结'..Freezes..'条数据')
   end
   gg.clearResults()
end





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
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"FIX VĂNG LOGO 1st",
"BYPASS LOBBY (Sảnh)",
"⚠️ MAGIC BULLET YẾU (Sảnh) ⚠️",
"⚠️ MAGIC BULLET MẠNH (Sảnh) ⚠️",
"Admin",
"Thoát Nếu Lag",

}, nil, "⚠️ Reset Game Sau 1-2 Trận Đấu ⚠️\n⚠️ Vui lòng test acc phụ vài game ⚠️\nKHÔNG BẮN BOT")

if VIPONLY == nil then else
  if VIPONLY[1]== true then LOGO() end
  if VIPONLY[2]== true then LOBBY() end

if VIPONLY[3]== true then MAGIC1() end
if VIPONLY[4]== true then MAGIC2() end


 if VIPONLY[5]== true then admin() end

     
 if VIPONLY[6]== true then exitt() end




end
PUBGMH = -1
end




function MAGIC1()
gg.alert("Bật một lần ở sảnh")
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("69.5;35;33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(6)
 gg.editAll("75;80;80", gg.TYPE_FLOAT)
gg.clearResults()
	gg.alert("Magic Bullet ✅")
end


function MAGIC2()

 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("69.5;35;33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
 gg.getResults(3)
 gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
	gg.alert("Magic Bullet ✅")
end


function LOBBY()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331;133,634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131,331", gg.TYPE_DWORD)
gg.getResults(5000000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,914;144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,914", gg.TYPE_DWORD)
gg.getResults(5000000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,658;134,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(5000000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144,387;133,634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("144,387", gg.TYPE_DWORD)
gg.getResults(500000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,378;144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133,378", gg.TYPE_DWORD)
gg.getResults(500000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,864;16,842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("196,864", gg.TYPE_DWORD)
gg.getResults(500000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262,144;262,149", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("262,149", gg.TYPE_DWORD)
gg.getResults(500000)
gg.editAll("67,175,171", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
gg.searchNumber("262,400;262,656",gg.TYPE_QWORD)
gg.refineNumber("262,400",gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("67,175,171",gg.TYPE_QWORD)
gg.clearResults()
gg.alert("Bypass Lobby ✅")
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



function LOBBY()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end



gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC )
gg.searchNumber("131331;133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_OTHER | gg.REGION_C_ALLOC )
gg.searchNumber("131331", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67371777", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134914;144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67371777", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134658;134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67371777", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("144387;133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67371777", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("133378;144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67371777", gg.TYPE_DWORD)
gg.clearResults()


gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("196864;16842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("262144;196611", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("262144", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("67371777", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134658;9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84149249", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("144,387;133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84149249", gg.TYPE_DWORD)
gg.clearResults()

gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("134658;262403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("262403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("84149249", gg.TYPE_DWORD)
gg.clearResults()




end


function LOGO()

gg.alert("Đừng bật quá sớm sẽ bị treo Logo\nĐợi 1-2s rồi hãy bật\nKHÔNG BẬT Ở LOGO KRAFTON")


local t = {"libanogs.so:bss", "Cb"}
local tt = {0x4E8}
local ttt = S_Pointer(t, tt, true)
 gg.setValues({{address = ttt, flags = 4, value = 4096}}) 


local t = {"libanogs.so:bss", "Cb"}
local tt = {0x590}
local ttt = S_Pointer(t, tt, true)
 gg.setValues({{address = ttt, flags = 4, value = 4096}}) 









gg.alert("Fix Văng Thành Công")
   
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





