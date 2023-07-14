function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end 

so=gg.getRangesList('libanogs.so')[1].start 
py=0x5093A8 setvalue(so+py,4,4096)
py=0x509638 setvalue(so+py,4,4096)
py=0x5096C8 setvalue(so+py,4,4096)
py=0x50A948 setvalue(so+py,4,4096)
py=0x50F210 setvalue(so+py,4,4096)
