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
		local _S = nil---@XSYYEM
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
			end---@XSYYEM
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
	---@XSYYEM				t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			print(string.char(231,190,164,58).._Q)
		end
		return _S---@XSYYEM
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

---@XSYYEM

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1218}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1318}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1358}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})


local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xC0, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xC0, 0xE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1130, 0xD0, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1130, 0xD0, 0xE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1188, 0x50, 0x9C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x1188, 0xD0, 0x4C}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x11A8, 0x30, 0x60}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0x30, 0x68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0x30, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0x30, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0x30, 0xE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0xC0, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0xC0, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0xC0, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xD0, 0xC0, 0xC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0xC0, 0x40, 0xC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0x30, 0x68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0x30, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0x30, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0x30, 0xE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0xC0, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0xC0, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0xC0, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x10, 0xC0, 0xC8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0x30, 0x68}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0x30, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0x30, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0x30, 0xE8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0xC0, 0x28}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0xC0, 0x8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})

local t = {"libanogs.so", "Cd"}
local tt = {0x578D8, 0x30, 0xC0, 0x88}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 17024, freeze = true}})


	
so=gg.getRangesList('libanogs.so')[1].start
setvalue(so + "0x155210", 32, "h 00 00 B0 E3 1E FF 2F E1")
setvalue(so + "0x158A04", 32, "h 00 00 B0 E3 1E FF 2F E1")
setvalue(so + "0x153C08", 32, "h 00 00 B0 E3 1E FF 2F E1")
setvalue(so + "0xE7298", 32, "h 00 00 B0 E3 1E FF 2F E1")
setvalue(so + "0xE5600", 32, "h 00 00 B0 E3 1E FF 2F E1")
setvalue(so + "0xB4442", 32, "h 00 20 70 47")

	
