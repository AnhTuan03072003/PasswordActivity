os.remove("data/data/com.pubg.imobile/cache/volley")
os.remove("data/data/com.pubg.imobile/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.tencent.ig/cache/volley")
os.remove("data/data/com.tencent.ig/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.rekoo.pubgm/cache/volley")
os.remove("data/data/com.rekoo.pubgm/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.vng.pubgmobile/cache/volley")
os.remove("data/data/com.vng.pubgmobile/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.pubg.krmobile/cache/volley")
os.remove("data/data/com.pubg.krmobile/shared_prefs/WebViewChromiumPrefs.xml")

os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/game_patch_2.8.0.17974.pak")

os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")


local function pass(...)

arg = {...}

local pas = gg.prompt

({"KHÔNG BẮN BOT - DƯỚI 10 KILL\nRESET GAME SAU 2 TRẬN\nKHÔNG THOÁT BYPASS\n🚫 KHÔNG DÙNG MEMORY\n⚠️ Đăng nhập hoặc đổi acc tới Sảnh hãy thoát game rồi vào lại"}, {},{"text"})

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


function HOME()
Probolte = gg.multiChoice({
"🔰𝐋𝐨𝐠𝐨 𝐁𝐲𝐩𝐚𝐬𝐬🔰",
"🔰𝐋𝐨𝐛𝐛𝐲 𝐁𝐲𝐩𝐚𝐬𝐬🔰",
"𝐄𝐱𝐢𝐭⛔"
}, nil, "𝐁𝐲𝐩𝐚𝐬𝐬 𝐅𝐫𝐞𝐞 𝟐.𝟖")


if Probolte == nil then else
if Probolte[1]== true then B1() end
if Probolte[2]== true then B2() end
if Probolte[3]== true then EXIT() end
end
PUBGMH = -1
end

function B1()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end




gg.clearResults()


gg.clearResults()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
gg.clearResults()
os.remove("data/data/com.pubg.imobile/cache/volley")
os.remove("data/data/com.pubg.imobile/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.tencent.ig/cache/volley")
os.remove("data/data/com.tencent.ig/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.rekoo.pubgm/cache/volley")
os.remove("data/data/com.rekoo.pubgm/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.vng.pubgmobile/cache/volley")
os.remove("data/data/com.vng.pubgmobile/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.pubg.krmobile/cache/volley")
os.remove("data/data/com.pubg.krmobile/shared_prefs/WebViewChromiumPrefs.xml")
gg.clearResults()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 


so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E80
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E84
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E88
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E94
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E98
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E9C
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74BC
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74C8
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74CC
setvalue(so+py,4,"h 00 00 00 00")


so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74D0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74D4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74E0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74E4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A750C
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7510
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A754C
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7648
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7630
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7668
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A76B4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A76CC
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A76D0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77B0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77C0
setvalue(so+py,4,"h 00 00 00 00")


so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77C8
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77EC
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77E4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77E8
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x3c9bec", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bf0", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bf4", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bf8", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bfc", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c00", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c04", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c08", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c10", 4,"h 00 00 00 00")




local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})



gg.alert("𝐋𝐨𝐠𝐨 𝐁𝐲𝐩𝐚𝐬𝐬 𝐀𝐜𝐭𝐢𝐯𝐚𝐭𝐞𝐝")
end

function B2()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
gg.clearResults()
os.remove("data/data/com.pubg.imobile/cache/volley")
os.remove("data/data/com.pubg.imobile/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.tencent.ig/cache/volley")
os.remove("data/data/com.tencent.ig/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.rekoo.pubgm/cache/volley")
os.remove("data/data/com.rekoo.pubgm/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.vng.pubgmobile/cache/volley")
os.remove("data/data/com.vng.pubgmobile/shared_prefs/WebViewChromiumPrefs.xml")
os.remove("data/data/com.pubg.krmobile/cache/volley")
os.remove("data/data/com.pubg.krmobile/shared_prefs/WebViewChromiumPrefs.xml")
gg.clearResults()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 


so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E80
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E84
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E88
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E94
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E98
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A6E9C
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74BC
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74C8
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74CC
setvalue(so+py,4,"h 00 00 00 00")


so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74D0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74D4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74E0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A74E4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A750C
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7510
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A754C
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7648
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7630
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A7668
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A76B4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A76CC
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A76D0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77B0
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77C0
setvalue(so+py,4,"h 00 00 00 00")


so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77C8
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77EC
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77E4
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList('libanogs.so')[1].start
py=0x3A77E8
setvalue(so+py,4,"h 00 00 00 00")

so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x3c9bec", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bf0", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bf4", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bf8", 4,"h 00 00 00 00")
setvalue(so+"0x3c9bfc", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c00", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c04", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c08", 4,"h 00 00 00 00")
setvalue(so+"0x3c9c10", 4,"h 00 00 00 00")



gg.alert("𝐋𝐨𝐛𝐛𝐲 𝐁𝐲𝐩𝐚𝐬𝐬 𝐀𝐜𝐭𝐢𝐯𝐚𝐭𝐞𝐝")
end



function EXIT()
gg.alert(" @hmghak")
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
gg.clearResults()
if PUBGMH == 1 then
HOME()
end
end
