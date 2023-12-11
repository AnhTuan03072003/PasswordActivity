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
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value,freeze) PS('开启地址数值(地址,数值类型,要开启的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value tt[1].freeze=freeze gg.setValues(tt) gg.addListItems(tt) end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end          

so=gg.getRangesList('libUE4.so')[1].start
setvalue(so+0X7678A2C,4,-698416192)	
setvalue(so+0X7678B48,4,-698416192)
setvalue(so+0X7679384,4,-698416192)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a40
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a44
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a48
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a4c
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a50
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a54
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a58
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a5c
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a60
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a64
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a68
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a6c
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a70
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a74
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a78
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a7c
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a80
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a84
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a88
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a8c
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a90
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a94
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a98
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7a9c
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7aa0
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7aa4
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7aa8
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7aac
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7ab0
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7ab4
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7ab8
setvalue(so+py,4,17871)

so=gg.getRangesList("libanogs.so")[1].start
py=0x2a7abc
setvalue(so+py,4,17871)

so=gg.getRangesList('libUE4.so')[1].start
py=0x2AC00
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A43C
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A424
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A418
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A40C
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A3B8
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A2F4
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A2F0
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A2DC
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A2D8
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A2B4
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A2B0
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A1C8
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2A0E4
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29780
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29768
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2970C
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29704
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x296FC
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x296F4
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x296F0
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x293D8
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29298
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29294
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29278
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29264
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2924C
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x2923C
setvalue(so+py,4,256)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29220
setvalue(so+py,4,256)

so=gg.getRangesList("libUE4.so")[1].start
py=0xa01e60
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xa01e90
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xa01ec0
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xa01ef0
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xa01f20
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xa01f50
setvalue(so+py,4,-698416192)



so=gg.getRangesList("libUE4.so")[1].start
py=0xba6760
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xcc0bf8
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xcc3298
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0xf3b2c0
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x102d6d8
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x108ee78
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x10ed300
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x10ed390
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x10ed3c0
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x121fb10
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x1722850
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x1722880
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x17d0538
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x22fa7d0
setvalue(so+py,4,-698416192)

so=gg.getRangesList("libUE4.so")[1].start
py=0x233a520
setvalue(so+py,4,-698416192)


so=gg.getRangesList("libUE4.so")[1].start
py=0x2466bb8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466bc8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466bd0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466be8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c00
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c18
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c30
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c48
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c60
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c70
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c78
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c88
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466c90
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ca0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ca8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466cb8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466cc0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466cd0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466cd8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ce8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466cf0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d00
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d08
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d18
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d20
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d30
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d38
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d48
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d50
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d60
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d68
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d78
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d80
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d90
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466d98
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466da8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466db0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466dc8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466dd8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466de0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466df0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466df8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e08
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e10
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e20
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e28
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e40
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e50
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e58
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e68
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e70
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e80
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e88
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466e98
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ea0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466eb0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466eb8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ec8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ed0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ee0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ee8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ef8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f00
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f10
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f18
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f30
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f48
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f58
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f60
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f78
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f88
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466f90
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466fa0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466fa8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466fc0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466fd0
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466fd8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466fe8
setvalue(so+py,4,17871)

so=gg.getRangesList("libUE4.so")[1].start
py=0x2466ff0
setvalue(so+py,4,17871)




function setvalue(address, value, flags)
 gg.setValues({{address = address, flags = flags, value = value}})
end

local so = gg.getRangesList('libanogs.so:bss')[1].start
local py = 0x13B0
setvalue(so + py, 64, 4)







function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end 


gg.alert("Fix Văng Game - Bypass Logo √")




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





