local function pass(...)

arg = {...}

local pas = gg.prompt

({"KHÔNG BẮN BOT - DƯỚI 10 KILL\nRESET GAME SAU 2 TRẬN\nKHÔNG THOÁT APP ANTIBAN\n🚫 Không dùng Memory"}, {},{"text"})

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

pass("hmghackk_OPC5nyGeUe","t")



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
"➥Logo 1st 🛡",
"➥Lobby [Sảnh Chờ] 🛡",

}, nil, "𝗧𝗘𝗟𝗘𝗚𝗥𝗔𝗠 :- @hmghak")

if VIPONLY == nil then else
if VIPONLY[1]== true then B1() end
if VIPONLY[2]== true then B2() end
end
PUBGMH = -1
end

function B1()
so=gg.getRangesList("libanogs.so")[1].start
py=0x3F17E0
setvalue(so+py,4,0)--防异常
so=gg.getRangesList("libanogs.so")[1].start
py=0x3F17DC
setvalue(so+py,4,536879165)--杀67


local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})



gg.alert("Bypass Logo 1st Done √")
end

function B2()


so=gg.getRangesList("libanogs.so")[1].start
py=0x21fa00
setvalue(so+py,4,1384120329)
so=gg.getRangesList("libanogs.so")[1].start
py=0x21faf0
setvalue(so+py,4,1384120329)
so=gg.getRangesList("libanogs.so")[1].start
py=0x2203c0
setvalue(so+py,4,1384120329)
so=gg.getRangesList("libanogs.so")[1].start
py=0x220710
setvalue(so+py,4,1384120329)
so=gg.getRangesList("libanogs.so")[1].start
py=0x220a70
setvalue(so+py,4,1384120329)
so=gg.getRangesList("libanogs.so")[1].start
py=0x220bd0
setvalue(so+py,4,1384120329)
so=gg.getRangesList("libanogs.so")[1].start
py=0x220be0
setvalue(so+py,4,1384120329)

so=gg.getRangesList('libUE4.so:bss')[1].start
setvalue(so + 0x43258, 4, "64")
setvalue(so + 0x4325c, 4, "64")
setvalue(so + 0x43260, 4, "64")
setvalue(so + 0x43264, 4, "64")
setvalue(so + 0x43268, 4, "64")
setvalue(so + 0x4326c, 4, "64")
setvalue(so + 0x43270, 4, "64")
setvalue(so + 0x43274, 4, "64")
setvalue(so + 0x450594, 4, "64")
setvalue(so + 0x4505a4, 4, "64")
setvalue(so + 0x4505e0, 4, "64")
setvalue(so + 0x4505e4, 4, "64")
setvalue(so + 0x4505e8, 4, "64")
setvalue(so + 0x4505ec, 4, "64")
setvalue(so + 0x4505f0, 4, "64")
setvalue(so + 0x4505f4, 4, "64")
setvalue(so + 0x4505f8, 4, "64")
setvalue(so + 0x4505fc, 4, "64")


local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1C74}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 17024}})
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1CAC}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 17024}})
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x2448}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 17024}})
local t = {"libanogs.so:bss", "Cb"}
local tt = {0x2470}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 17024}})


so=gg.getRangesList('libUE4.so')[1].start
setvalue(so+0x421EB0,4,-763363328)
setvalue(so+0x651480,4,-763363328)
setvalue(so+0x6E9458,4,-763363328)
setvalue(so+0x760490,4,-763363328)
setvalue(so+0x7895A0,4,-763363328)
setvalue(so+0x7B1D98,4,-763363328)
setvalue(so+0x11C1210,4,-763363328)
setvalue(so+0x9A5C,4,-763363328)

so=gg.getRangesList('libswappy.so')[1].start
setvalue(so+0XC2C,4,-763363328)


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
