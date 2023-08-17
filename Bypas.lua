
function HOME()
onan1st = gg.multiChoice({
"FIX VĂNG + CHỐNG CHECK [LOGO 2]",
}, nil, (os.date("")))
if onan1st == nil then
  else
if onan1st[1] == true then BP1()end
end
PUBGMH = -1
end

function BP1()

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

Modify(Read('libanogs.so:bss','rw-p')+0x3a8,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x638,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x6c8,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x1948,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x6210,2,4)

  gg.setValues(Table)

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
			
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
readPointer = function(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function fastsearch(search, write)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(search[1][3])
  gg.searchNumber(search[1][1], search[1][2])
  if gg.getResultsCount() == 0 then
    gg.toast("Not Found")
    return false
   else
    local result = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    for i = 2, #search do
      local mtp = {}
      for w, r in ipairs(result) do
        mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
      end
      mtp = gg.getValues(mtp)
      local hook = {}
      for w, r in ipairs(mtp) do
        if r.value == search[i][1] then
          hook[#hook + 1] = result[w]
        end
      end
      result = hook
    end
    if #result > 0 then
      local tb = {{}, {}}
      for i, v in ipairs(result) do
        --- 遍历每个结果
        for _, vv in ipairs(write) do
          local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
          if vv[4] then --- true 就是冻结
            table.insert(tb[2], p)
           else
            table.insert(tb[1], p)
          end
        end
      end
      gg.addListItems(tb[2])
      gg.setValues(tb[1])
      gg.toast("获取成功" .. (#tb[1] + #tb[2]) .. "条结果")
     else
      gg.toast("Not Found")
    end
  end
end
			local t = {"libanogs.so:bss", "Cb"}
local tt = {0x638}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}}) 

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
	so=gg.getRangesList('libgcloud.so')[1].start
setvalue(so + "0x3909A8",4, "h 1E AC 70 11") 
setvalue(so + "0x3909BC",4, "h 36 27 39 2D") 
setvalue(so + "0x3909C0",4, "h 0A 64 D9 0F") 
setvalue(so + "0x3909CC",4, "h 24 3A 2E 36") 
setvalue(so + "0x3909D0",4, "h 0C B1 67 0A") 
setvalue(so + "0x3909E8",4, "h 5A 69 4B 77") 
setvalue(so + "0x3909EC",4, "h 1C 16 1A 12") 
setvalue(so + "0x3909F8",4, "h 3C 43 E0 22") 
setvalue(so + "0x3909FC",4, "h 12 1D 17 1B") 
setvalue(so + "0x390A00",4, "h 0E 0B 0D 09") 
setvalue(so + "0x390A0C",4, "h 14 C8 A9 1E") 
setvalue(so + "0x390A28",4, "h 44 C5 3B 66") 
setvalue(so + "0x390A30",4, "h 8B 76 29 43") 
setvalue(so + "0x390A34",4, "h CB DC C6 23") 
setvalue(so + "0x390A40",4, "h D7 CA DC 31") 
setvalue(so + "0x390A44",4, "h 42 10 85 63") 
setvalue(so + "0x390A50",4, "h 85 7D 24 4A") 
setvalue(so + "0x390A5C",4, "h C7 6D A1 29") 
setvalue(so + "0x390A74",4, "h A9 99 B9 70") 
setvalue(so + "0x390A88",4, "h 56 D8 2C 7D") 
setvalue(so + "0x390A8C",4, "h 22 EF 90 33") 
setvalue(so + "0x390A90",4, "h 87 C7 4E 49") 
setvalue(so + "0x390A94",4, "h D9 C1 D1 38") 
setvalue(so + "0x390AA4",4, "h A5 28 DE 7A") 
setvalue(so + "0x390AB0",4, "h 2C E4 9D 3A") 
setvalue(so + "0x390AB4",4, "h 50 0D 92 78") 
setvalue(so + "0x390AB8",4, "h 6A 9B CC 5F") 
setvalue(so + "0x390AC8",4, "h 2E 5E F7 39") 

	so=gg.getRangesList('libanogs.so')[1].start

	setvalue(so + "0xAAB5C",4, "hsub_AAB5C, osub_AAB5C") 
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
