#!/usr/bin/python3

def main():
	with open('ans.tcl', 'w') as file:
		for i in range(16):
			cmd1 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/ce0]\n'
			cmd2 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/ce1]\n'
			cmd3 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/we0]\n'
			cmd4 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/we1]\n'
			cmd5 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/addr0]\n'
			cmd6 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/addr1]\n'
			cmd7 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/wdata0]\n'
			cmd8 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/wdata1]\n'
			cmd9 = 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/rdata0]\n'
			cmd10= 'make_bd_pins_external  [get_bd_pins uram_2w_2r_'+str(i)+'/rdata1]\n'

			file.write(cmd1)
			file.write(cmd2)
			file.write(cmd3)
			file.write(cmd4)
			file.write(cmd5)
			file.write(cmd6)
			file.write(cmd7)
			file.write(cmd8)
			file.write(cmd9)
			file.write(cmd10)


if __name__ == '__main__':
  main()

