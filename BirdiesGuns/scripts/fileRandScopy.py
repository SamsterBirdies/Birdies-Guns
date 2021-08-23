import os
cd = os.listdir()
for file in cd:
	if file[-6:] == "-R.tga":
		oldfile = open(file,"rb")
		data = oldfile.read()
		newfile = open("oldR/"+file,"wb")
		newfile.write(data)
		newfile.close()
		oldfile.close()
	elif file[-6:] == "-S.tga":
		oldfile = open(file,"rb")
		data = oldfile.read()
		newfile = open("oldS/"+file,"wb")
		newfile.write(data)
		newfile.close()
		oldfile.close()