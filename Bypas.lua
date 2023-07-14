
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
so=gg.getRangesList('libanogs.so')[1].start
setvalue(so + "0x14EED8 ", 4, "h C0 03 5F D6")--Crash Fix
setvalue(so + "0x349F1C ", 4, "h C0 03 5F D6")--Crash Fix



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



gg.getResults(9999)
gg.editAll(101384192, gg.TYPE_DWORD, true, SIGN_EQUAL, 0,-1)
gg.clearResults(9999)
gg.setVisible(true)



