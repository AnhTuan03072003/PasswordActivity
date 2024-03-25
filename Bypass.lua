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







HOME = 1
function HOME()
VIPONLY = gg.multiChoice({
"BYPASS ISLAND", 
"Thoát Menu Nếu Lag",

}, nil, "Vui Lòng Tải Full Tài Nguyên Game\nMod Súng - Balo - Mũ Phải Tắt Và Bật Lại Khi Bắt Đầu Trận Mới\n⚠️ KHÔNG SỬ DỤNG MOD SKIN VÀO ACC CHÍNH ⚠️")

if VIPONLY == nil then else
if VIPONLY[1]== true then Arm64CrosshairON() end
 if VIPONLY[2]== true then B2() end



end
PUBGMH = -1
end





function Arm64CrosshairON()

so=gg.getRangesList('libgcloud.so')[1].start
setvalue(so + "0x13638C", 4, "C0 03 5F D6")

gg.toast("Activated")
end





function B2()
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



	

	
