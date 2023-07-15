
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
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end 
so=gg.getRangesList('libanogs.so')[1].start 
py=0x5093A8 setvalue(so+py,4,4096)
py=0x509638 setvalue(so+py,4,4096)
py=0x5096C8 setvalue(so+py,4,4096)
py=0x50A948 setvalue(so+py,4,4096)
py=0x50F210 setvalue(so+py,4,4096)
setvalue(so + "0x14EED8 ", 4, "h C0 03 5F D6")--Crash Fix
setvalue(so + "0x349F1C ", 4, "h C0 03 5F D6")--Crash Fix
gg.processResume()
end

function BP2()
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libanogs.so')[1].start

setvalue(so + "0xCB46C", 4, "h 00 00 00 00")
setvalue(so + "0xCB470", 4, "h 00 00 00 00")
setvalue(so + "0xCB474", 4, "h 00 00 00 00")
setvalue(so + "0xCB478", 4, "h 00 00 00 00")
setvalue(so + "0x364754", 4, "h 7F 45 4C 46 FF C3 00 D1")

setvalue(so + "0xCB504", 4, "h 00 00 00 00")
setvalue(so + "0xCB508", 4, "h 00 00 00 00")
setvalue(so + "0xCB4A4", 4, "h 00 00 00 00")
setvalue(so + "0xCB390", 4, "h 00 00 00 00")
setvalue(so + "0xCB394", 4, "h 00 00 00 00")
setvalue(so + "0xCB3DC", 4, "h 00 00 00 00")


setvalue(so + "0x108969", "hsub_108968", "osub_108968")

  

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
