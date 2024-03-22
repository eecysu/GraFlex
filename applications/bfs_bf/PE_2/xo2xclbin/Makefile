XO=inst_bfs_2x1_v1.xo
CLCC=v++
XCLBIN=bfs_2x1_v1_hw.xclbin
XDEVICE=xilinx_u280_xdma_201920_3
LDCLFLAGS += --config bfs_2x1_v1.ini --config vivado.cfg --optimize 2


${XCLBIN}:
	$(CLCC) -R2 -s -t hw --platform ${XDEVICE} --kernel_frequency 175 -g -l ${LDCLFLAGS} -o ${XCLBIN} ${XO}

.PHONY: rmxo
rmxo:
	@$(RM) -vf *.xo

.PHONY: clean
clean:
	@$(RM) -vf *.log *.info *.ltx *xclbin*
	@$(RM) -rf _x
