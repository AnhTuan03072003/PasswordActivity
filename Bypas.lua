
function HOME()
onan1st = gg.multiChoice({
"FIX VĂNG + CHỐNG CHECK [LOGO TENCENT]",
}, nil, (os.date("")))
if onan1st == nil then
  else
if onan1st[1] == true then BP1()end
end
PUBGMH = -1
end

function BP1()

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
so=gg.getRangesList('libanogs.so')[1].start
setvalue(so + "0x14EED8 ", 4, "h C0 03 5F D6")--Crash Fix
setvalue(so + "0x349F1C ", 4, "h C0 03 5F D6")--Crash Fix
gg.toast('Fix Crash Sansero + Protect Done ')
  

 	 function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libanogs.so')[1].start
setvalue(so + "0x107360",32, "h 00 00 B0 E3 1E FF 2F E1")

setvalue(so + "0x14EF38",4, "h C0 03 5F D6")
setvalue(so + "0x14D4BC",4, "h C0 03 5F D6")




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
