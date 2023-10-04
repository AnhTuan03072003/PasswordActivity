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

pass("hmghackk_LgJZefZ5Yw","t")



    






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


HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"➥Logo 1st + Fix Văng Game 🛡",
"➥Lobby [Sảnh Chờ] 🛡",

}, nil, "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :- @hmghak")

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

so=gg.getRangesList("libgcloud.so")[1].start
setvalue(so+" 0x46d7e0",4,"-698416192")
setvalue(so+" 0x46d7e4",4,"-698416192")
setvalue(so+" 0x46d7f0",4,"-698416192")
setvalue(so+" 0x46d7f8",4,"-698416192")
setvalue(so+" 0x46d7fc",4,"-698416192")
setvalue(so+" 0x46d804",4,"-698416192")
setvalue(so+" 0x46d808",4,"-698416192")
setvalue(so+" 0x4187dc",4,"-698416192")
setvalue(so+" 0x4187e0",4,"-698416192")
setvalue(so+" 0x4187e8",4,"-698416192")
setvalue(so+" 0x4187ec",4,"-698416192")
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

gg.alert("Bypass Lobby Done √")
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
