function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
so=gg.getRangesList('libanogs.so')[1].start
setvalue(so + "0x14EED8 ", 4, "h C0 03 5F D6")--Crash Fix
setvalue(so + "0x349F1C ", 4, "h C0 03 5F D6")--Crash Fix
gg.alert('Crash Fix Done')
