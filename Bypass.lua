function setvalue(address, value, flags)
 gg.setValues({{address = address, flags = flags, value = value}})
end

local so = gg.getRangesList('libanogs.so:bss')[1].start
local py = 0x13B0
setvalue(so + py, 64, 4)
