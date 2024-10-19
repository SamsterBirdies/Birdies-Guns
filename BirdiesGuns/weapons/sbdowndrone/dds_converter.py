import os
from PIL import Image
#vars
status = 0
def printa(text, code, rgbtuple=(0,0,0)): #print with ANSI codes
	ansi_codes = {
	'bold': '1m', 'faint': '2m', 'italic': '3m', 'underline': '4m', 'blink': '5m', 'invisible': '7m', 'strike': '9m',
	'red': '31m', 'green': '32m', 'yellow': '33m', 'blue': '34m', 'magenta': '35m', 'cyan': '36m',
	}
	if code in ansi_codes.keys():
		code = ansi_codes[code]
	elif code == "rgb":
		code = f'38;2;{rgbtuple[0]};{rgbtuple[1]};{rgbtuple[2]}m'
	print(f"\x1b[{code}{text}\x1b[0m")

#path stuffs
mode = input("0: folder\n1: file\nmode:")

if mode == '0':
	input_path = input("Input folder:")
	output_path = input_path #input("Output folder:")
	input_files = os.listdir(input_path)
	if not os.path.exists(output_path):
		os.mkdir(output_path)
	#loop
	for file in input_files:
		printa(f"\nStart converting {file}", 'cyan')
		if file[-4:] == ".png":
			with Image.open(f"{input_path}/{file}") as im:
				im.save(f"{input_path}/{file}", "PNG")
			os.system(f"texconv -f BC7_UNORM -if TRIANGLE -o {output_path} {input_path}/{file} -y")
elif mode == '1':
	input_path = input("Input file:")
	printa(f"\nStart converting {input_path}", 'cyan')
	os.system(f"texconv -f BC7_UNORM -if TRIANGLE -o . {input_path} -y ")
if status == 1:
	print(f"dir dump:")
	print(input_files)
	printa(f"\nTask failed", 'red')
	input("")
else:
	printa(f"\nTask finished successfully.", 'green')