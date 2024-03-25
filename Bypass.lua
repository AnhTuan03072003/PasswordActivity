local function pass(...)

arg = {...}

local pas = gg.prompt

({"Vui Lòng Nhập Key"}, {},{"text"})

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

pass("OMsSugh8xVq7Cl1Ua6RW","t")

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so=gg.getRangesList('libanogs.so:bss')[1].start
setvalue(so + 0x4E8, 4, 64)



gg.alert("Fix Văng Thành Công")

