import os
cd = os.listdir()

for image in cd:
	if image[-6:] == "-A.tga":
		#read A
		file = open(image, "r+b")
		data = bytearray(file.read())
		#modify for A
		data = data.replace(b'\x00\x00\x00\x2e', b'\xff\xff\xff\x69') #0,0,0,46 pixels convert to 255,255,255,105 Active
		#write for A
		file.seek(0)
		file.write(data)
		file.close()
		#write for R 
		fileR = open(image[:-6]+"-R.tga", "wb")
		fileR.write(data)
		fileR.close()
		#modify for S
		data = data.replace(b'\xff\xff\xff\x69', b'\xff\xff\xff\xff')
		#write for S 
		fileS = open(image[:-6]+"-S.tga", "wb")
		fileS.write(data)
		fileS.close()
	if image[-6:] == "-D.tga":
		#read D
		file = open(image, "r+b")
		data = bytearray(file.read())
		#modify D
		data = data.replace(b'\x00\x00\x00\x69', b'\xff\xff\xff\x2e') #0,0,0,105 pixels convert to 255,255,255,46 Disabled
		#write D
		file.seek(0)
		file.write(data)
		file.close()