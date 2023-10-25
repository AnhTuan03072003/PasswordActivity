local function pass(...)

arg = {...}

local pas = gg.prompt

({"KHÔNG BẮN BOT - DƯỚI 10 KILL\nRESET GAME SAU 2 TRẬN\nKHÔNG THOÁT APP ANTIBAN\n🚫 KHÔNG DÙNG MEMORY\n⚠️ Đăng nhập hoặc đổi acc tới Sảnh hãy thoát game rồi vào lại"}, {},{"text"})

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

pass("hmghackk_5YOABJTF90","t")

  

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


function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


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




HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"➥Logo 1st + Fix Văng Game 🛡",
"➥Lobby [Sảnh Chờ] 🛡",

}, nil, "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :- @hmghak\nKHÔNG BẮN BOT - BẮN DƯỚI 10 KILL\nRESET GAME SAU 2 TRẬN\nBẮN DƯỚI 150M")

if VIPONLY == nil then else
if VIPONLY[1]== true then B1() end
if VIPONLY[2]== true then B2() end
end
PUBGMH = -1
end

function B1()



function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})


	

so=gg.getRangesList("libUE4.so")[1].start
setvalue(so+"0x3E0",4,"-698416192")
setvalue(so+"0x230",4,"-698416192")
setvalue(so+"0x189",4,"-698416192")

gg.alert("Bypass Logo 1st Done √")
end

function B2()


function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end





so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x3c44f4",4,"-698416192")
setvalue(so+"0x3c4538",4,"-698416192")
setvalue(so+"0x3c44ec",4,"-698416192")
setvalue(so+"0x3c4548",4,"-698416192")
setvalue(so+"0x3d700c",4,"-698416192")
setvalue(so+"0x3d7048",4,"-698416192")



so=gg.getRangesList("libUE4.so")[1].start
setvalue(so+" 0x377e498",4,"-698416192")
setvalue(so+" 0x377e49c",4,"-698416192")
setvalue(so+" 0x377e4a8",4,"-698416192")
setvalue(so+" 0x377e4ac",4,"-698416192")
setvalue(so+" 0x377e4b0",4,"-698416192")
setvalue(so+" 0x377e4b4",4,"-698416192")
setvalue(so+" 0x377e4b8",4,"-698416192")
setvalue(so+" 0x377e4bc",4,"-698416192")
setvalue(so+" 0x377e4c0",4,"-698416192")
setvalue(so+" 0xc8e784",4,"-698416192")


so=gg.getRangesList("libanort.so")[1].start
setvalue(so+" 0x1501c8",4,"-698416192")
setvalue(so+" 0x1501e0",4,"-698416192")
setvalue(so+" 0x1501e4",4,"-698416192")
so=gg.getRangesList("libPandoraVideo.so")[1].start
setvalue(so+" 0x4224",4,"-698416192")
setvalue(so+" 0x4238",4,"-698416192")
setvalue(so+" 0x423c",4,"-698416192")
setvalue(so+" 0x4240",4,"-698416192")
so=gg.getRangesList("libTDataMaster.so")[1].start
setvalue(so+" 0x4928",4,"-698416192")
setvalue(so+" 0x4974",4,"-698416192")
setvalue(so+" 0x49ac",4,"-698416192")


so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x17b5bc",4,"-698416192")
setvalue(so+"0x17b680",4,"-698416192")
setvalue(so+"0x17b7ec",4,"-698416192")
setvalue(so+"0x17b840",4,"-698416192")
setvalue(so+"0x17baec",4,"-698416192")
setvalue(so+"0x17bf10",4,"-698416192")
setvalue(so+"0x17c108",4,"-698416192")
setvalue(so+"0x17c180",4,"-698416192")
setvalue(so+"0x17c1e0",4,"-698416192")
setvalue(so+"0x17c23c",4,"-698416192")
setvalue(so+"0x17c638",4,"-698416192")
setvalue(so+"0x17c6c8",4,"-698416192")
setvalue(so+"0x17cb0c",4,"-698416192")
setvalue(so+"0x17cba0",4,"-698416192")
setvalue(so+"0x17cbc8",4,"-698416192")
setvalue(so+"0x17cbf4",4,"-698416192")
setvalue(so+"0x17cc94",4,"-698416192")
setvalue(so+"0x17ce04",4,"-698416192")
setvalue(so+"0x17ce4c",4,"-698416192")
setvalue(so+"0x17ce78",4,"-698416192")
setvalue(so+"0x17cf24",4,"-698416192")
setvalue(so+"0x17cf6c",4,"-698416192")
setvalue(so+"0x17cf98",4,"-698416192")
setvalue(so+"0x1d97d8",4,"-698416192")
setvalue(so+"0x1d9800",4,"-698416192")
setvalue(so+"0x1da188",4,"-698416192")
setvalue(so+"0x1da1b0",4,"-698416192")
setvalue(so+"0x1da340",4,"-698416192")
setvalue(so+"0x1daa4c",4,"-698416192")
setvalue(so+"0x1daa64",4,"-698416192")
setvalue(so+"0x1daa78",4,"-698416192")
setvalue(so+"0x1daad8",4,"-698416192")
setvalue(so+"0x1daaec",4,"-698416192")
setvalue(so+"0x1dab4c",4,"-698416192")
setvalue(so+"0x1dab60",4,"-698416192")
setvalue(so+"0x3c3000",4,"-698,416,192")
setvalue(so+"0x3c3008",4,"-698,416,192")
setvalue(so+"0x3c30c2",4,"-698,416,192")
setvalue(so+"0x3c30d4",4,"-698,416,192")
setvalue(so+"0x3c3144",4,"-698,416,192")
setvalue(so+"0x3c3450",4,"-698,416,192")
setvalue(so+"0x3c38f8",4,"-698,416,192")
setvalue(so+"0x3c44ac",4,"-698,416,192")
setvalue(so+"0x3c4538",4,"-698,416,192")
setvalue(so+"0x3c453c",4,"-698,416,192")
setvalue(so+"0x3c4548",4,"-698,416,192")
setvalue(so+"0x3c457c",4,"-698,416,192")
setvalue(so+"0x3c458c",4,"-698,416,192")
setvalue(so+"0x3c459c",4,"-698,416,192")
setvalue(so+"0x3c45ac",4,"-698,416,192")
setvalue(so+"0x3c45b8",4,"-698,416,192")
setvalue(so+"0x3c45bc",4,"-698,416,192")
setvalue(so+"0x3c45c4",4,"-698,416,192")
setvalue(so+"0x3c45d0",4,"-698,416,192")
setvalue(so+"0x3c45e0",4,"-698,416,192")
setvalue(so+"0x3c45f0",4,"-698,416,192")
setvalue(so+"0x3c4604",4,"-698,416,192")
setvalue(so+"0x3c4608",4,"-698,416,192")
setvalue(so+"0x3c460c",4,"-698,416,192")
setvalue(so+"0x3c4614",4,"-698,416,192")
setvalue(so+"0x3c4618",4,"-698,416,192")
setvalue(so+"0x3c461c",4,"-698,416,192")
setvalue(so+"0x3c4620",4,"-698,416,192")


so=gg.getRangesList("libUE4.so")[1].start
setvalue(so+"0x37cf13c",4,"-698416192")
setvalue(so+"0x37cf140",4,"-698416192")
setvalue(so+"0x37cf144",4,"-698416192")
setvalue(so+"0x37cf148",4,"-698416192")
setvalue(so+"0x37cf150",4,"-698416192")
setvalue(so+"0x37cf158",4,"-698416192")
setvalue(so+"0x37cf15c",4,"-698416192")
setvalue(so+"0x37cf160",4,"-698416192")
setvalue(so+"0x37cf164",4,"-698416192")
setvalue(so+"0x37cf168",4,"-698416192")
setvalue(so+"0x37cf16c",4,"-698416192")
setvalue(so+"0x37cf170",4,"-698416192")
setvalue(so+"0x37cf178",4,"-698416192")
setvalue(so+"0x3779a98",4,"-698416192")
setvalue(so+"0x3a10870",4,"-698416192")


so=gg.getRangesList("libUE4.so")[1].start
setvalue(so+"0x3779a98",4,"-698416192")
setvalue(so+"0x3a10870",4,"-698416192")

so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x3c4644",4,"-698416192")
setvalue(so+"0x3c464c",4,"-698416192")
setvalue(so+"0x3c4650",4,"-698416192")
setvalue(so+"0x3c4654",4,"-698416192")
setvalue(so+"0x3c4658",4,"-698416192")
setvalue(so+"0x3c465c",4,"-698416192")
setvalue(so+"0x3c4660",4,"-698416192")
setvalue(so+"0x3c4680",4,"-698416192")
setvalue(so+"0x3c4684",4,"-698416192")



so=gg.getRangesList("libUE4.so")[1].start
setvalue(so+"0x2425870",4,"-698416192")
setvalue(so+"0x2425874",4,"-698416192")
setvalue(so+"0x2425878",4,"-698416192")
setvalue(so+"0x242587c",4,"-698416192")
setvalue(so+"0x2425880",4,"-698416192")
setvalue(so+"0x2425884",4,"-698416192")
setvalue(so+"0x2425888",4,"-698416192")
setvalue(so+"0x242588c",4,"-698416192")

so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x3ee010",4,"-698416192")
setvalue(so+"0x3ee028",4,"-698416192")
setvalue(so+"0x3ee07c",4,"-698416192")
setvalue(so+"0x3ee14c",4,"-698416192")
setvalue(so+"0x3ee15c",4,"-698416192")
setvalue(so+"0x3ee164",4,"-698416192")
setvalue(so+"0x3ee184",4,"-698416192")
setvalue(so+"0x3ee198",4,"-698416192")
setvalue(so+"0x3ee1c0",4,"-698416192")
setvalue(so+"0x3ee1c4",4,"-698416192")
setvalue(so+"0x3ee1d8",4,"-698416192")
setvalue(so+"0x3ee1dc",4,"-698416192")
setvalue(so+"0x3ee1ec",4,"-698416192")
setvalue(so+"0x3ee1f8",4,"-698416192")
setvalue(so+"0x3ee1fc",4,"-698416192")
setvalue(so+"0x3ee200",4,"-698416192")
setvalue(so+"0x3ee244",4,"-698416192")
setvalue(so+"0x3ee248",4,"-698416192")
setvalue(so+"0x3ee258",4,"-698416192")
setvalue(so+"0x3ee25c",4,"-698416192")
setvalue(so+"0x3ee260",4,"-698416192")
setvalue(so+"0x3ee274",4,"-698416192")
setvalue(so+"0x3ee280",4,"-698416192")
setvalue(so+"0x3ee284",4,"-698416192")
setvalue(so+"0x3ee2d8",4,"-698416192")
setvalue(so+"0x3ee2f4",4,"-698416192")
setvalue(so+"0x3ee2fc",4,"-698416192")
setvalue(so+"0x3ee300",4,"-698416192")
setvalue(so+"0x3ee304",4,"-698416192")
setvalue(so+"0x3ee308",4,"-698416192")
setvalue(so+"0x3ee36c",4,"-698416192")
setvalue(so+"0x3ee758",4,"-698416192")
setvalue(so+"0x3efe98",4,"-698416192")
setvalue(so+"0x23d4",4,"-698416192")
setvalue(so+"0x23d8",4,"-698416192")
setvalue(so+"0x23dc",4,"-698416192")
setvalue(so+"0x23e0",4,"-698416192")
setvalue(so+"0x23e4",4,"-698416192")
setvalue(so+"0x23e8",4,"-698416192")






gg.alert("Bypass Lobby Done √\nNO TERMINATION BAN\nNO OBSERVATION BANS\nNO 10 YEAR BANS\nNO ANY KIND OF BANS\nNO CRASH NO PING ISSUS")
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
