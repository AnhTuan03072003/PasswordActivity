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
so=gg.getRangesList('libanogs.so')[1].start
py=0x60A34
setvalue(so+py,4,"h 00 20 70 47")
so=gg.getRangesList('libanogs.so')[1].start
py=0x60A35
setvalue(so+py,4,"h 00 20 70 47")
so=gg.getRangesList('libanogs.so')[1].start
py=0x376444
setvalue(so+py,4,"h FF FF FF FF")
so=gg.getRangesList('libanogs.so')[1].start
py=0x376440
setvalue(so+py,4,"h FF FF FF FF")
so=gg.getRangesList('libanogs.so')[1].start
py=0x4B7B80
setvalue(so+py,4,"h FF FF FF FF")
so=gg.getRangesList('libanogs.so')[1].start
py=0x4B7B7C
setvalue(so+py,4,"h FF FF FF FF")
so=gg.getRangesList('libanogs.so')[1].start
py=0x4B7B78
setvalue(so+py,4,"h FF FF FF FF")
so=gg.getRangesList('libanogs.so')[1].start
py=0x4B7B74
setvalue(so+py,4,"h FF FF FF FF")
so=gg.getRangesList('libanogs.so')[1].start
py=0x4B7B70
setvalue(so+py,4,"h FF FF FF FF")
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("13073.374", gg.TYPE_FLOAT)
gg.refineNumber("13073.374", gg.TYPE_FLOAT)
gg.getResults(100000)
gg.editAll("20", gg.TYPE_FLOAT)
gg.clearResults()

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x628}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x6B8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})


gg.toast("𝐋𝐨𝐠𝐨 𝐁𝐲𝐩𝐚𝐬𝐬 𝐀𝐜𝐭𝐢𝐯𝐚𝐭𝐞𝐝")


	
	gg.clearList()

end

function B2()


gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("620137442967552;303473799200768", gg.TYPE_QWORD)
gg.refineNumber("620137442967552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288,233,678,981,562,368", gg.TYPE_QWORD)
gg.clearResults()
	
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,658;134,658", gg.TYPE_DWORD)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("83,886,080", gg.TYPE_DWORD)
gg.clearResults()
	
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,914;262,403", gg.TYPE_DWORD)
gg.refineNumber("134,914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("83,886,080", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("66,048;33,554,432", gg.TYPE_DWORD)
gg.refineNumber("66,048", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("83,886,080", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC )
gg.searchNumber("33,554,432;524,547", gg.TYPE_DWORD)
gg.refineNumber("524,547", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("83,886,080", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144,387;133,634", gg.TYPE_DWORD)
gg.refineNumber("144,387", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("83,886,080", gg.TYPE_DWORD)
gg.clearResults()

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
so=gg.getRangesList("libanogs.so")[1].start
setvalue(so+"0x273d80",4,"-698416192")
setvalue(so+"0x273db0",4,"-698416192")
setvalue(so+"0x274f90",4,"-698416192")
setvalue(so+"0x274fac",4,"-698416192")
setvalue(so+"0x274fc0",4,"-698416192")


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
