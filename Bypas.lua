function HOME()
onan1st = gg.multiChoice({
" CRASH FIX ",
" BYPASS ", 
"  EXIT "
}, nil, (os.date("SANSERO CRASH FIX VPHONE \n CRASH FIX 64 / 32 \n┗⊳🔲 • %A, %d %B %Y %H:%M%p  ")))
if onan1st == nil then
  else
if onan1st[1] == true then BP1()end
if onan1st[2] == true then BP2()end
if onan1st[3] == true then EXIT()end
end
PUBGMH = -1
end

function BP1()
gg.processPause()
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
gg.toast('Crash Fix Done')
gg.processResume()
end

function BP2()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libanogs.so')[1].start



setvalue(so + "0xCB46C", 4, "h 00 00 00 00")
setvalue(so + "0xCB470", 4, "h 00 00 00 00")
setvalue(so + "0xCB474", 4, "h 00 00 00 00")
setvalue(so + "0xCB478", 4, "h 00 00 00 00")

setvalue(so + "0xCB504", 4, "h 00 00 00 00")
setvalue(so + "0xCB508", 4, "h 00 00 00 00")
setvalue(so + "0xCB4A4", 4, "h 00 00 00 00")
setvalue(so + "0xCB390", 4, "h 00 00 00 00")
setvalue(so + "0xCB394", 4, "h 00 00 00 00")
setvalue(so + "0xCB3DC", 4, "h 00 00 00 00")



setvalue(so + "0x3C1A45", 4, "h 00 00 00 00")
setvalue(so + "0x3C2CDC", 4, "h 00 00 00 00")
setvalue(so + "0x3D6A87", 4, "h 00 00 00 00")
setvalue(so + "0x3E66A2", 4, "h 00 00 00 00")
setvalue(so + "0x3E66AE", 4, "h 00 00 00 00")
setvalue(so + "0x364068", 4, "h 00 00 00 00")
setvalue(so + "0x3D6A92", 4, "h 00 00 00 00")
setvalue(so + "0x3D6A96", 4, "h 00 00 00 00")
setvalue(so + "0x3D6A7F", 4, "h 00 00 00 00")

end

function EXIT()
print("  ┏━━┓♡☆")
print("┏┛□□┗┓♡")
print("┗⊙━━⊙┛==")
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end

cs = "21"
while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
if PUBGMH == 1 then
HOME()
end
end
