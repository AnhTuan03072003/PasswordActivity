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

local t = {"libanogs.so:bss", "Cb"}
local tt = {0x638}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 64, freeze = true}})


Modify(Read('libanogs.so:bss','rw-p')+0x3a8,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x638,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x6c8,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x1948,4096,4)
Modify(Read('libanogs.so:bss','rw-p')+0x6210,2,4)
gg.setValues(Table)

function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end 


so=gg.getRangesList('libanogs.so')[1].start 
py=0x5093A8 setvalue(so+py,4,4096)
py=0x509638 setvalue(so+py,4,4096)
py=0x5096C8 setvalue(so+py,4,4096)
py=0x50A948 setvalue(so+py,4,4096)
py=0x50F210 setvalue(so+py,4,4096)
