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

 	 function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


so=gg.getRangesList('libITOP.so')[1].start
py=0x230b0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x230b8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23130
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23180
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x233a8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23438
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23538
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x235e8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23910
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23dc0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23dc8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23dd0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23dd8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23de0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23de8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23df0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23df8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e00
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e08
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e10
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e18
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e20
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e28
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e30
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e38
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e40
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e48
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e50
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e58
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e60
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e68
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e70
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e78
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e80
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e88
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e90
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23e98
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ea0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ea8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23eb0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23eb8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ec0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ec8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ed0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ed8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ee0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ee8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ef0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23ef8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23f00
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23f08
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23f10
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x23f18
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x24318
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x24320
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x24328
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x243a8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x243b0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x243b8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x243c0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x243c8
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x243d0
setvalue(so+py,4,10250)

so=gg.getRangesList('libITOP.so')[1].start
py=0x24e30
setvalue(so+py,4,10250)

					
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
