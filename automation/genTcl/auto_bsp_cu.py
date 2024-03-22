import re
import os, sys
import os.path as osp
import math
import subprocess

def bwDecider(argType):
    if argType == "bool":
        bw = 1
    elif argType in ("char", "uchar"):
        bw = 8
    elif argType in ("short", "ushort", "half"):
        bw = 16
    elif argType in ("int", "uint", "float"):
        bw = 32
    elif argType in ("long", "ulong", "double"):
        bw = 64
    return bw

def prepareScatter(bspConfig, sysConfig):
    os.chdir("./scatter")
    hlsTclFile = os.path.join(os.getcwd(), "run_hls.tcl")
    hlsProjName = sysConfig["AppPrefix"] + '_scatter_v' + str(sysConfig["AppVersion"])

    with open(hlsTclFile, 'w') as tclFile:
        tclFile.write("open_project -reset " +hlsProjName+ "\n")
        tclFile.write("set_top " +bspConfig["BspCU"]["Scatter"]["TopFunction"]+ "\n")
        tclFile.write("add_files " +os.path.join(os.getcwd(), bspConfig["BspCU"]["Scatter"]["SourceFile"]) +"\n")

        tclFile.write('open_solution "solution1" -flow_target vivado\n')
        tclFile.write("set_part {xcu280-fsvh2892-2L-e}\n")
        tclFile.write("create_clock -period " +str(bspConfig["BspCU"]["Scatter"]["targetPeriod"])+ " -name default\n")
        tclFile.write("csynth_design\nexit\n")

    print("******** GraFlex INFO: Start HLS for Scatter... ********")
    os.system('vitis_hls -f {}'.format(hlsTclFile))
    print("\n******** GraFlex INFO: Finish HLS for Scatter.  ********\n")


def prepareGather(bspConfig, sysConfig):
    os.chdir("./gather")
    hlsTclFile = os.path.join(os.getcwd(), "run_hls.tcl")
    hlsProjName = sysConfig["AppPrefix"] + '_gather_v' + str(sysConfig["AppVersion"])

    with open(hlsTclFile, 'w') as tclFile:
        tclFile.write("open_project -reset " +hlsProjName+ "\n")
        tclFile.write("set_top " +bspConfig["BspCU"]["Gather"]["TopFunction"]+ "\n")
        tclFile.write("add_files " +os.path.join(os.getcwd(), bspConfig["BspCU"]["Gather"]["SourceFile"]) +"\n")

        tclFile.write('open_solution "solution1" -flow_target vivado\n')
        tclFile.write("set_part {xcu280-fsvh2892-2L-e}\n")
        tclFile.write("create_clock -period " +str(bspConfig["BspCU"]["Gather"]["targetPeriod"])+ " -name default\n")
        tclFile.write("csynth_design\nexit\n")

    print("\n******** GraFlex INFO: Start HLS for Gather... ********")
    os.system('vitis_hls -f {}'.format(hlsTclFile))
    print("\n******** GraFlex INFO: Finish HLS for Gather.  ********\n")


''' Extract top-module signature from verilog file '''
def extractSignature(hdlFile, moduleName):
    interfaceList = []
    startLineNo = subprocess.check_output('sed -n "/{}[ ]*(/=" {}'.format(moduleName, hdlFile), shell=True).decode("utf-8").strip()
    # endLineNo = subprocess.check_output('sed -n "{},/);/=" {} | tail -n 1'.format(startLineNo, hdlFile), shell=True).decode("utf-8").strip()

    moduleSignature = subprocess.check_output('sed -n "{},/);/p" {}'.format(startLineNo, hdlFile), shell=True).decode("utf-8").strip().split('\n')
    for idx in range(len(moduleSignature)-2):
        tmpLine = moduleSignature[idx+1]
        interfaceList.append(tmpLine.strip().strip(','))

    return interfaceList


def wrapBspCU(bspConfig, sysConfig):
    rootDir = sysConfig["RepoPath"]["AppRootDir"]

    scatterProjName = "{}_scatter_v{}".format(sysConfig["AppPrefix"], sysConfig["AppVersion"])
    scatterHdlFile  = "{}.v".format(bspConfig["BspCU"]["Scatter"]["TopFunction"])
    scatterInterface = extractSignature(osp.join(rootDir, "src/hw/scatter", scatterProjName, "solution1/syn/verilog", scatterHdlFile),
                                        bspConfig["BspCU"]["Scatter"]["TopFunction"])

    gatherProjName = "{}_gather_v{}".format(sysConfig["AppPrefix"], sysConfig["AppVersion"])
    gatherHdlFile  = "{}.v".format(bspConfig["BspCU"]["Gather"]["TopFunction"])
    gatherInterface = extractSignature(osp.join(rootDir, "src/hw/gather", gatherProjName, "solution1/syn/verilog", gatherHdlFile),
                                       bspConfig["BspCU"]["Gather"]["TopFunction"])

    topHdlFile = "{}_cu_top.sv".format(sysConfig["AppPrefix"])

    print("\n******** GraFlex INFO: Start Writing Top Wrapper... ********")
    with open(osp.join(rootDir, 'src/hw', topHdlFile), 'w') as svFile:
        print("****** Writing Part 1: Module Interfaces\n")
        svFile.write("// ==============================================================\n")
        svFile.write("// GraFlex BSP CU Wrapper Module\n")
        svFile.write("// ==============================================================\n")
        svFile.write("`timescale 1 ns/1 ps\n\n")

        cuName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
            str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
        svFile.write("module {} (\n".format(cuName))

        # ap_ctrl interfaces
        svFile.write("  input wire\tap_clk,\n")
        svFile.write("  input wire\tap_rst_n,\n")
        svFile.write("  input wire\tap_start,\n")
        svFile.write("  output wire\tap_done,\n")
        svFile.write("  output wire\tap_idle,\n")
        svFile.write("  output wire\tap_ready,\n")

        # axi stream interface for memory access engine
        dataWidth = sysConfig["ParallelSetting"]["W_AXI_DATA"]
        dataWidthInBytes = dataWidth // 8
        svFile.write("  input wire [{}-1:0]\trd_port_TDATA,\n".format(str(dataWidth)))
        svFile.write("  input wire\trd_port_TVALID,\n")
        svFile.write("  output wire\trd_port_TREADY,\n")
        svFile.write("  input wire [{}-1:0]\trd_port_TKEEP,\n".format(str(dataWidthInBytes)))
        svFile.write("  input wire [{}-1:0]\trd_port_TSTRB,\n".format(str(dataWidthInBytes)))
        svFile.write("  input wire\trd_port_TLAST,\n")

        svFile.write("  output wire [{}-1:0]\twr_port_TDATA,\n".format(str(dataWidth)))
        svFile.write("  output wire\twr_port_TVALID,\n")
        svFile.write("  input wire\twr_port_TREADY,\n")
        svFile.write("  output wire [{}-1:0]\twr_port_TKEEP,\n".format(str(dataWidthInBytes)))
        svFile.write("  output wire [{}-1:0]\twr_port_TSTRB,\n".format(str(dataWidthInBytes)))
        svFile.write("  output wire\twr_port_TLAST,\n")

        svFile.write("  output wire [32-1:0]\trd_req_V_din,\n")
        svFile.write("  input wire\trd_req_V_full_n,\n")
        svFile.write("  output wire\trd_req_V_write,\n")

        # aux ports for memory access
        svFile.write("  output wire [64-1:0]\trd_baseAddr,\n")
        svFile.write("  output wire [64-1:0]\twr_baseAddr,\n")
        svFile.write("  output wire [16-1:0]\twr_len,\n")
        svFile.write("  output wire\trd_start,\n")
        svFile.write("  output wire\twr_start,\n")
        svFile.write("  input wire\twr_done,\n")

        # scalar and pointer args
        scalarArgsEntry  = sysConfig["KernelSignature"]["ScalarArgs"]
        pointerArgsEntry = sysConfig["KernelSignature"]["PointerArgs"]
        for i in range(scalarArgsEntry["N_Args"]):
            argName = scalarArgsEntry["Name_Arg_" + str(i)]
            argType = scalarArgsEntry["Type_Arg_" + str(i)]
            argBW = bwDecider(argType)
            svFile.write("  input wire [{}-1:0]\t{},\n".format(str(argBW), argName))

        for i in range(pointerArgsEntry["N_Args"]):
            argName = pointerArgsEntry["Name_Arg_" + str(i)]
            svFile.write("  input wire [33-1:0]\t{},\n".format(argName))

        # broadcast and feedback signals
        if sysConfig["ProfileCounter"] == True:
            svFile.write("  input  wire [32-1:0]\tcycle_cnt,\n")

        feedbackSigEntry  = bspConfig["Feedback"]
        broadcastSigEntry = bspConfig["Broadcast"]
        for i in range(broadcastSigEntry["N_Signals"]):
            sigName = broadcastSigEntry["Name_Signal_" + str(i)]
            sigType = broadcastSigEntry["Type_Signal_" + str(i)]
            sigBW = bwDecider(sigType)
            svFile.write("  input wire [{}-1:0]\t{},\n".format(str(sigBW), sigName))

        for i in range(feedbackSigEntry["N_Signals"]):
            sigName = feedbackSigEntry["Name_Signal_" + str(i)]
            sigType = feedbackSigEntry["Type_Signal_" + str(i)]
            sigBW = bwDecider(sigType)
            svFile.write("  output wire [{}-1:0]\t{},\n".format(str(sigBW), sigName))        

        # interconnection network signals
        expandFactor  = sysConfig["ParallelSetting"]["ExpandFactor"]
        bankingFactor = sysConfig["ParallelSetting"]["BankingFactor"]
        packetWidth = sysConfig["ParallelSetting"]["W_Net_Packet"]
        for i in range(expandFactor):
            ## sw_ovld & sw_odata
            if bankingFactor == 1:
                svFile.write("  input wire\tsw_ovld_{},\n".format(str(i)))
                svFile.write("  input wire [{}-1:0]\tsw_odata_{},\n".format(str(packetWidth), str(i)))
            else:
                for j in range(bankingFactor):
                    svFile.write("  input wire\tsw_ovld_{}_{},\n".format(str(i), str(j)))
                    svFile.write("  input wire [{}-1:0]\tsw_odata_{}_{},\n".format(str(packetWidth), str(i), str(j)))                    

            ## sw_ivld & sw_idata
            svFile.write("  output wire\tsw_ivld_{},\n".format(str(i)))
            svFile.write("  output wire [{}-1:0]\tsw_idata_{},\n".format(str(packetWidth), str(i)))

            ## sw_ofw & sw_bp
            svFile.write("  output wire\tsw_bp_{},\n".format(str(i)))
            svFile.write("  input wire\tsw_ofw_{},\n".format(str(i)))

        if sysConfig["ReductionSetting"]["HasReduction"] == True:
            currFactor = sysConfig["ReductionSetting"]["Concurrency"]
            rdcPktWidth = sysConfig["ReductionSetting"]["W_Carrier"] + sysConfig["ReductionSetting"]["W_Adder"]
            for i in range(currFactor):
                ## rdc_ivld & rdc_idata
                svFile.write("  output wire\trdc_ivld_{},\n".format(str(i)))
                svFile.write("  output wire [{}-1:0]\trdc_idata_{},\n".format(str(rdcPktWidth), str(i)))

            ## rdc_ovld & rdc_odata
            svFile.write("  input wire\trdc_ovld,\n")
            svFile.write("  input wire [{}-1:0]\trdc_odata,\n".format(str(rdcPktWidth)))

        # on-chip RAM interfaces
        for i in range(sysConfig["RamPerCU"]["N_RAM"]):
            ramPfxName = sysConfig["RamPerCU"]["Name_Ram_"+str(i)]
            ramBankNo  = sysConfig["RamPerCU"]["N_Bank_Ram_"+str(i)]
            addrWidth  = sysConfig["RamPerCU"]["W_Addr_Ram_"+str(i)]
            dataWidth  = sysConfig["RamPerCU"]["W_Data_Ram_"+str(i)]

            svFile.write("  input wire [{}-1:0][{}-1:0]\t{}_rdata0,\n".format(str(ramBankNo), str(dataWidth), ramPfxName))
            svFile.write("  input wire [{}-1:0][{}-1:0]\t{}_rdata1,\n".format(str(ramBankNo), str(dataWidth), ramPfxName)) # rdata
            svFile.write("  output wire [{}-1:0][{}-1:0]\t{}_wdata0,\n".format(str(ramBankNo), str(dataWidth), ramPfxName))
            svFile.write("  output wire [{}-1:0][{}-1:0]\t{}_wdata1,\n".format(str(ramBankNo), str(dataWidth), ramPfxName)) # wdata

            svFile.write("  output wire [{}-1:0][{}-1:0]\t{}_addr0,\n".format(str(ramBankNo), str(addrWidth), ramPfxName))
            svFile.write("  output wire [{}-1:0][{}-1:0]\t{}_addr1,\n".format(str(ramBankNo), str(addrWidth), ramPfxName)) # addr

            svFile.write("  output wire [{}-1:0]\t{}_ce0,\n".format(str(ramBankNo), ramPfxName))
            svFile.write("  output wire [{}-1:0]\t{}_ce1,\n".format(str(ramBankNo), ramPfxName)) # ce
            if sysConfig["RamPerCU"]["Type_Ram_"+str(i)] == 'URAM_WE':
                svFile.write("  output wire [{}-1:0][8-1:0]\t{}_we0,\n".format(str(ramBankNo), ramPfxName))
                svFile.write("  output wire [{}-1:0][8-1:0]\t{}_we1,\n".format(str(ramBankNo), ramPfxName)) 
            else:
                svFile.write("  output wire [{}-1:0]\t{}_we0,\n".format(str(ramBankNo), ramPfxName))
                svFile.write("  output wire [{}-1:0]\t{}_we1,\n".format(str(ramBankNo), ramPfxName)) # we

        # constant peID
        svFile.write("  input wire [8-1:0]\tpeID\n);\n")
        svFile.write("\n")

        print("****** Writing Part 2: Internal wires and registers\n")
        # ram port 0
        for i in range(sysConfig["RamPerCU"]["N_RAM"]):
            ramPfxName = sysConfig["RamPerCU"]["Name_Ram_"+str(i)]
            ramBankNo  = sysConfig["RamPerCU"]["N_Bank_Ram_"+str(i)]
            addrWidth  = sysConfig["RamPerCU"]["W_Addr_Ram_"+str(i)]
            dataWidth  = sysConfig["RamPerCU"]["W_Data_Ram_"+str(i)]

            svFile.write("logic [{}-1:0]\t{}_s_wdata[0:{}-1];\n".format(str(dataWidth), ramPfxName, str(ramBankNo)))
            svFile.write("logic [{}-1:0]\t{}_g_wdata[0:{}-1];\n".format(str(dataWidth), ramPfxName, str(ramBankNo))) # wdata

            svFile.write("logic [{}-1:0]\t{}_s_addr[0:{}-1];\n".format(str(addrWidth), ramPfxName, str(ramBankNo)))
            svFile.write("logic [{}-1:0]\t{}_g_addr[0:{}-1];\n".format(str(addrWidth), ramPfxName, str(ramBankNo))) # addr

            svFile.write("logic \t{}_s_ce[0:{}-1];\n".format(ramPfxName, str(ramBankNo)))
            svFile.write("logic \t{}_g_ce[0:{}-1];\n".format(ramPfxName, str(ramBankNo))) # ce
            if sysConfig["RamPerCU"]["Type_Ram_"+str(i)] == 'URAM_WE':               
                svFile.write("logic [8-1:0]\t{}_g_we[0:{}-1];\n".format(ramPfxName, str(ramBankNo)))
            else:
                svFile.write("logic \t{}_g_we[0:{}-1];\n".format(ramPfxName, str(ramBankNo))) # we
            svFile.write("logic \t{}_s_we[0:{}-1];\n".format(ramPfxName, str(ramBankNo))) # we

        # gather PE ap_ctrl
        nGatherPE = expandFactor * bankingFactor
        svFile.write("logic \tgather_ap_start[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic \tgather_ap_done[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic \tgather_rd_en[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic \tgather_sw_vld[0:{}-1];\n".format(str(nGatherPE)))

        # FIFO signals
        svFile.write("logic [{}-1:0]\tfifo_din[0:{}-1];\n".format(str(packetWidth), str(nGatherPE)))
        svFile.write("logic [{}-1:0]\tfifo_dout[0:{}-1];\n".format(str(packetWidth), str(nGatherPE)))
        svFile.write("logic \tfifo_rd_en[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic \tfifo_wr_en[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic \tfifo_empty[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic \tfifo_prog_full[0:{}-1];\n".format(str(nGatherPE)))

        # feedback registers
        nSignal = bspConfig["Feedback"]["N_Signals"]
        for i in range(nSignal):
            sigName = bspConfig["Feedback"]["Name_Signal_{}".format(str(i))]
            sigType = bspConfig["Feedback"]["Type_Signal_{}".format(str(i))]
            sigFrom = bspConfig["Feedback"]["From_Signal_{}".format(str(i))]
            assert sigFrom in ('BuiltIn', 'Gather', 'Scatter'), "GraFlex Error: Illegal Feedback Signal Source: " + sigFrom
            sigBW = bwDecider(sigType)

            if sigFrom == 'BuiltIn':
                nStages = int(math.log(nGatherPE, 4)) + 1
                for j in range(nStages):
                    nCounters = nGatherPE // int(math.pow(4, j))
                    svFile.write("logic [32-1:0]\t{}_st{}[0:{}-1];\n".format(sigName, str(j), str(nCounters)))
            elif sigFrom == 'Gather':
                svFile.write("logic [{}-1:0]\t{}_gather[0:{}-1];\n".format(str(sigBW), sigName, str(nGatherPE)))
            elif sigFrom == 'Scatter':
                svFile.write("logic [{}-1:0]\t{}_scatter;\n".format(str(sigBW), sigName))

        # ovld & odata 1d
        svFile.write("logic\tinv_ap_start_1d = 0;\n")
        svFile.write("logic\tsw_ovld_1d[0:{}-1];\n".format(str(nGatherPE)))
        svFile.write("logic [{}-1:0]\tsw_odata_1d[0:{}-1];\n".format(str(packetWidth), str(nGatherPE)))

        # i_sw_ivld
        for i in range(expandFactor):
            svFile.write("logic\ti_sw_ivld_{};\n".format(str(i)))
        svFile.write("\n")


        print("****** Writing Part 3: Instantiate ScatterPE\n")
        svFile.write("{} scatter_pe_inst (\n".format(bspConfig["BspCU"]["Scatter"]["TopFunction"]))
        
        for idx in range(len(scatterInterface)):
            signal = scatterInterface[idx]
            # ramPfxName should NOT contain numbers, does not begin with number or '_'
            if signal.find('sw_data_') >= 0:
                portNo = re.findall('\d+', signal)[0]
                if signal.find('_din') >= 0:
                    tmpLine = '  .{}\t( sw_idata_{} ),'.format(signal, portNo)
                elif signal.find('_full_n') >=0:
                    tmpLine = '  .{}\t( ~sw_ofw_{} ),'.format(signal, portNo)
                elif signal.find('_write') >= 0:
                    tmpLine = '  .{}\t( i_sw_ivld_{} ),'.format(signal, portNo)
            elif signal.find('_address0') >=0:
                tmpStr = re.sub('_address0', '', signal)
                ramNo  = re.findall('\d+', tmpStr)[0]
                pfxName = tmpStr.strip(ramNo).strip('_')
                tmpLine = '  .{}\t( {}_s_addr[{}] ),'.format(signal, pfxName, ramNo)
            elif signal.find('_ce0') >=0:
                tmpStr = re.sub('_ce0', '', signal)
                ramNo  = re.findall('\d+', tmpStr)[0]
                pfxName = tmpStr.strip(ramNo).strip('_')
                tmpLine = '  .{}\t( {}_s_ce[{}] ),'.format(signal, pfxName, ramNo)
            elif signal.find('_we0') >=0:
                tmpStr = re.sub('_we0', '', signal)
                ramNo  = re.findall('\d+', tmpStr)[0]
                pfxName = tmpStr.strip(ramNo).strip('_')
                tmpLine = '  .{}\t( {}_s_we[{}] ),'.format(signal, pfxName, ramNo)
            elif signal.find('_d0') >=0:
                tmpStr = re.sub('_d0', '', signal)
                ramNo  = re.findall('\d+', tmpStr)[0]
                pfxName = tmpStr.strip(ramNo).strip('_')
                tmpLine = '  .{}\t( {}_s_wdata[{}] ),'.format(signal, pfxName, ramNo)
            elif signal.find('_q0') >=0:
                tmpStr = re.sub('_q0', '', signal)
                ramNo  = re.findall('\d+', tmpStr)[0]
                pfxName = tmpStr.strip(ramNo).strip('_')
                tmpLine = '  .{}\t( {}_rdata0[{}] ),'.format(signal, pfxName, ramNo)
            elif signal.find('cycle_cnt') >=0:
                if sysConfig["ProfileCounter"] == True:
                    tmpLine = '  .{s}\t( {s} ),'.format(s=signal)
                else:
                    continue
            else:
                # normal signals: copy paste
                tmpLine = '  .{s}\t( {s} ),'.format(s=signal)

            if idx == len(scatterInterface)-1:
                tmpLine = tmpLine.strip(',')

            svFile.write("{}\n".format(tmpLine))

        svFile.write(");\n")
        svFile.write("\n")


        print("****** Writing Part 4: CntHdr & StartHdr and counters\n")
        for idx in range(expandFactor):
            svFile.write("Cnt_Hdr ct_{i} (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .sw_vld(sw_ivld_{i}), .pe_cnt(cnt_scatter_st0[{i}]));\n"\
                         .format(i=str(idx)))
        svFile.write("\n")

        for idx in range(nGatherPE):
            svFile.write("Start_Hdr st_{i} (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[{i}]), .pe_done(gather_ap_done[{i}]), .pe_start(gather_ap_start[{i}]), .pe_cnt(cnt_gather_st0[{i}]));\n".format(i=str(idx)))
        svFile.write("\n")

        svFile.write("always @(posedge ap_clk) begin\n")

        nScatterStages = int(math.log(expandFactor, 4)) + 1
        for i in range(nScatterStages-1):
            nCountersLHS = expandFactor // int(math.pow(4, i+1))
            for j in range(nCountersLHS):
                svFile.write("  cnt_scatter_st{iidx}[{jdx}] <= cnt_scatter_st{idx}[{i0}] + cnt_scatter_st{idx}[{i1}] + cnt_scatter_st{idx}[{i2}] + cnt_scatter_st{idx}[{i3}];\n"
                             .format(iidx=str(i+1), jdx=str(j), idx=str(i), i0=str(4*j), i1=str(4*j+1), i2=str(4*j+2), i3=str(4*j+3)))

        nGatherStages = int(math.log(nGatherPE, 4)) + 1
        for i in range(nGatherStages-1):
            nCountersLHS = nGatherPE // int(math.pow(4, i+1))
            for j in range(nCountersLHS):
                svFile.write("  cnt_gather_st{iidx}[{jdx}] <= cnt_gather_st{idx}[{i0}] + cnt_gather_st{idx}[{i1}] + cnt_gather_st{idx}[{i2}] + cnt_gather_st{idx}[{i3}];\n"\
                             .format(iidx=str(i+1), jdx=str(j), idx=str(i), i0=str(4*j), i1=str(4*j+1), i2=str(4*j+2), i3=str(4*j+3)))
        svFile.write("end\n")

        nsCountersLastStage = expandFactor // int(math.pow(4, nScatterStages-1))
        if nsCountersLastStage == 1:
            svFile.write("assign cnt_scatter = cnt_scatter_st{}[0];\n".format(str(nScatterStages-1)))
        elif nsCountersLastStage == 2:
            svFile.write("assign cnt_scatter = cnt_scatter_st{i}[0] + cnt_scatter_st{i}[1];\n".format(i=str(nScatterStages-1)))

        ngCountersLastStage = nGatherPE // int(math.pow(4, nGatherStages-1))
        if ngCountersLastStage == 1:
            svFile.write("assign cnt_gather = cnt_gather_st{}[0];\n".format(str(nGatherStages-1)))
        elif ngCountersLastStage == 2:
            svFile.write("assign cnt_gather = cnt_gather_st{i}[0] + cnt_gather_st{i}[1];\n".format(i=str(nGatherStages-1)))
        svFile.write("\n")


        print("****** Writing Part 5: Instantiate FIFOs\n")
        svFile.write("genvar fifoIdx;\n")
        svFile.write("generate\n")
        svFile.write("  for (fifoIdx=0; fifoIdx<{}; fifoIdx=fifoIdx+1)\n".format(str(nGatherPE)))
        svFile.write("  begin : gen_gather_fifo\n")
        svFile.write("    FIFO_D32 # (\n")
        svFile.write("      .DATA_WIDTH ( {} ),\n".format(str(packetWidth)))
        svFile.write("      .EMPTY_TH   ( 3  ),\n")
        svFile.write("      .FULL_TH    ( 22 )\n")
        svFile.write("    ) inst_gather_fifo_U (\n")
        svFile.write("      .clk\t( ap_clk    ),\n")
        svFile.write("      .rst\t( ~ap_rst_n ),\n")
        svFile.write("      .rd_en\t( fifo_rd_en[fifoIdx] ),\n")
        svFile.write("      .wr_en\t( fifo_wr_en[fifoIdx] ),\n")
        svFile.write("      .din\t( fifo_din[fifoIdx] ),\n")
        svFile.write("      .dout\t( fifo_dout[fifoIdx] ),\n")
        svFile.write("      .empty\t( fifo_empty[fifoIdx] ),\n")
        svFile.write("      .prog_full( fifo_prog_full[fifoIdx] )\n")
        svFile.write("    );\n\n")

        svFile.write("    assign fifo_din[fifoIdx] = sw_odata_1d[fifoIdx];\n")
        svFile.write("    assign fifo_wr_en[fifoIdx] = sw_ovld_1d[fifoIdx];\n")
        svFile.write("    assign fifo_rd_en[fifoIdx] = (~fifo_empty[fifoIdx]) & gather_rd_en[fifoIdx];\n")
        svFile.write("    assign gather_sw_vld[fifoIdx] = fifo_rd_en[fifoIdx] & gather_rd_en[fifoIdx];\n")
        svFile.write("  end\n")
        svFile.write("endgenerate\n")

        svFile.write("\n")

        print("****** Writing Part 6: Auxiliary logic for NoC interface\n")
        for i in range(expandFactor):
            svFile.write("assign sw_ivld_{} = i_sw_ivld_{} & (sw_idata_{}[21:0]!=22'd4194303);\n".format(str(i),str(i),str(i)))
        svFile.write("\n")

        for i in range(expandFactor):
            strRHS = ' '
            for j in range(bankingFactor):
                strRHS += 'fifo_prog_full[{}] | '.format(str(i+j*expandFactor))
            strRHS = strRHS.strip(' | ')
            svFile.write("assign sw_bp_{} = {};\n".format(str(i), strRHS))
        svFile.write("\n")

        svFile.write("always @(posedge ap_clk) begin\n")
        svFile.write("  inv_ap_start_1d <= ~ap_start;\n")
        for idx in range(nGatherPE):
            i = idx // bankingFactor
            j = idx %  bankingFactor
            k = i + j*expandFactor
            svFile.write("  sw_ovld_1d[{}] <= sw_ovld_{}_{};\n".format(str(k), str(i), str(j)))
            svFile.write("  sw_odata_1d[{}] <= sw_odata_{}_{};\n".format(str(k), str(i), str(j)))
        svFile.write("end\n\n")


        print("****** Writing Part 7: Instantiate GatherPEs\n")
        svFile.write("genvar gatherIdx;\n")
        svFile.write("generate\n")
        svFile.write("  for (gatherIdx=0; gatherIdx<{}; gatherIdx=gatherIdx+1)\n".format(str(nGatherPE)))
        svFile.write("  begin : gen_gather_pe\n")
        svFile.write("  {} inst_gather_pe_U (\n".format(bspConfig["BspCU"]["Gather"]["TopFunction"]))

        svFile.write("    .ap_clk\t( ap_clk ),\n")
        svFile.write("    .ap_rst\t( ~ap_rst_n ),\n")
        svFile.write("    .ap_start\t( gather_ap_start[gatherIdx] ),\n")
        svFile.write("    .ap_done\t( gather_ap_done[gatherIdx] ),\n")
        svFile.write("    .ap_idle\t( gather_rd_en[gatherIdx] ),\n")
        intfCnt = 6 # include ap_ready at last

        if 'peID' in gatherInterface:
            svFile.write("    .peID\t( peID ),\n")
            intfCnt += 1
        if 'sw_data' in gatherInterface:
            svFile.write("    .sw_data\t( fifo_dout[gatherIdx] ),\n")
            intfCnt += 1

        for i in range(bspConfig["Broadcast"]["N_Signals"]):
            signalName = bspConfig["Broadcast"]["Name_Signal_" + str(i)]
            if signalName in gatherInterface:
                svFile.write("    .{}\t( {} ),\n".format(signalName, signalName))
                intfCnt += 1

        for i in range(bspConfig["Feedback"]["N_Signals"]):
            signalName = bspConfig["Feedback"]["Name_Signal_" + str(i)]
            if signalName in gatherInterface:
                svFile.write("    .{}\t( {}_gather[gatherIdx] ),\n".format(signalName, signalName))
                intfCnt += 1

        # add ram interfaces
        ramInterface = []
        for s in gatherInterface:
            if s.endswith('_address0') or s.endswith('_ce0') or s.endswith('_we0') or s.endswith('_d0') or s.endswith('_q0'):
                ramInterface.append(s)

        ramBankNoDict = dict()
        for i in range(sysConfig["RamPerCU"]["N_RAM"]):
            ramPfxName = sysConfig["RamPerCU"]["Name_Ram_"+str(i)]
            ramBankNoTotal = sysConfig["RamPerCU"]["N_Bank_Ram_"+str(i)]
            ramBankNoDict[ramPfxName] = ramBankNoTotal // expandFactor

        for s in ramInterface:
            ramPfx = s
            if len(re.findall('_\d+', ramPfx)) != 0:
                ramIdx = int(re.findall('_\d+', ramPfx)[0][1:])
                ramPfx = re.sub('_\d+', '', ramPfx)        

            ramPfx = re.sub('_address0', '', ramPfx)
            ramPfx = re.sub('_ce0', '', ramPfx)
            ramPfx = re.sub('_we0', '', ramPfx)
            ramPfx = re.sub('_d0', '', ramPfx)
            ramPfx = re.sub('_q0', '', ramPfx)
            # ramBankStride = ramBankNoDict[ramPfx] // bankingFactor
            ramBankStride = ramBankNoTotal // nGatherPE

            if s.endswith('_address0'):
                if ramBankStride == 1:
                    svFile.write("      .{}\t( {}_g_addr[{}] ),\n" \
                                 .format(s, ramPfx, "gatherIdx"))
                else:
                    svFile.write("      .{}\t( {}_g_addr[{}] ),\n" \
                                 .format(s, ramPfx, str(ramIdx*nGatherPE)+"+gatherIdx"))
                intfCnt += 1
            elif s.endswith('_ce0'):
                if ramBankStride == 1:
                    svFile.write("      .{}\t( {}_g_ce[{}] ),\n" \
                                 .format(s, ramPfx, "gatherIdx"))
                else:
                    svFile.write("      .{}\t( {}_g_ce[{}] ),\n" \
                                 .format(s, ramPfx, str(ramIdx*nGatherPE)+"+gatherIdx"))
                intfCnt += 1
            elif s.endswith('_we0'):
                if ramBankStride == 1:
                    svFile.write("      .{}\t( {}_g_we[{}] ),\n" \
                                 .format(s, ramPfx, "gatherIdx"))
                else:
                    svFile.write("      .{}\t( {}_g_we[{}] ),\n" \
                                 .format(s, ramPfx, str(ramIdx*nGatherPE)+"+gatherIdx"))
                intfCnt += 1               
            elif s.endswith('_d0'):
                if ramBankStride == 1:
                    svFile.write("      .{}\t( {}_g_wdata[{}] ),\n" \
                                 .format(s, ramPfx, "gatherIdx"))
                else:
                    svFile.write("      .{}\t( {}_g_wdata[{}] ),\n" \
                                 .format(s, ramPfx, str(ramIdx*nGatherPE)+"+gatherIdx"))
                intfCnt += 1               
            elif s.endswith('_q0'):
                if ramBankStride == 1:
                    svFile.write("      .{}\t( {}_rdata1[{}] ),\n" \
                                 .format(s, ramPfx, "gatherIdx"))
                else:
                    svFile.write("      .{}\t( {}_rdata1[{}] ),\n" \
                                 .format(s, ramPfx, str(ramIdx*nGatherPE)+"+gatherIdx"))
                intfCnt += 1
            
        svFile.write("    .ap_ready\t()\n")
        assert len(gatherInterface) == intfCnt, "GraFlex Error: Missing signals in Gather PE instantiation"

        svFile.write("    );\n")
        svFile.write("  end\n")
        svFile.write("endgenerate\n")

        svFile.write("\n")


        print("****** Writing Part 8: Feedback signals, if any from GatherPE\n")
        nSignal = bspConfig["Feedback"]["N_Signals"]
        for i in range(nSignal):
            sigName = bspConfig["Feedback"]["Name_Signal_{}".format(str(i))]
            sigType = bspConfig["Feedback"]["Type_Signal_{}".format(str(i))]
            sigFrom = bspConfig["Feedback"]["From_Signal_{}".format(str(i))]

            if sigFrom == 'Gather':
                # "{}_gather[0:{}-1]".format(sigName, str(nGatherPE)))
                sigGatherName = sigName + "_gather"
                sigOp = bspConfig["BspCU"]["Gather"][sigName]
                assert sigOp in ("or", "and", "add"), "GraFlex Error: Illegal feedback operation: {}, supported ones are 'or', 'and', 'add'".format(sigOp)

                tmpStr = "assign {} = (".format(sigName)
                if sigOp == 'or':
                    opStr = '|'
                elif sigOp == 'and':
                    opStr = '&'
                elif sigOp == 'add':
                    opStr = '+'
                for j in range(nGatherPE-1):
                    tmpStr+= '{}[{}] {} '.format(sigGatherName, str(j), opStr)
                tmpStr+= '{}[{}]'.format(sigGatherName, str(j+1))
                svFile.write(tmpStr + ");\n")

        svFile.write("\n")

        print("****** Writing Part 9: RAM signals MUX\n")
        for i in range(sysConfig["RamPerCU"]["N_RAM"]):
            ramName = sysConfig["RamPerCU"]["Name_Ram_"+str(i)]
            ramType = sysConfig["RamPerCU"]["Type_Ram_"+str(i)]
            ramBankNo = sysConfig["RamPerCU"]["N_Bank_Ram_"+str(i)]
            iterVar = ramName + '_idx'

            svFile.write("genvar {};\n".format(iterVar))
            svFile.write("generate\n")
            svFile.write("  for ({i}=0; {i}<{n}; {i}={i}+1)\n".format(i=iterVar, n=str(ramBankNo)))
            svFile.write("  begin : {}_ram_mux_logic\n".format(ramName))

            if sysConfig["RamPerCU"]["Mux_Enable_Ram_"+str(i)] == False:
                svFile.write("    assign {r}_ce0[{i}] = {r}_s_ce[{i}];\n".format(r=ramName, i=iterVar))
                if ramType == 'URAM_WE':
                    svFile.write("    assign {r}_we0[{i}] = {{8{{{r}_s_we[{i}]}}}};\n".format(r=ramName, i=iterVar))
                else:
                    svFile.write("    assign {r}_we0[{i}] = {r}_s_we[{i}];\n".format(r=ramName, i=iterVar))
                svFile.write("    assign {r}_addr0[{i}] = {r}_s_addr[{i}];\n".format(r=ramName, i=iterVar))
                svFile.write("    assign {r}_wdata0[{i}] = {r}_s_wdata[{i}];\n".format(r=ramName, i=iterVar))

                svFile.write("    assign {r}_ce1[{i}] = {r}_g_ce[{i}];\n".format(r=ramName, i=iterVar))
                svFile.write("    assign {r}_we1[{i}] = {r}_g_we[{i}];\n".format(r=ramName, i=iterVar))
                svFile.write("    assign {r}_addr1[{i}] = {r}_g_addr[{i}];\n".format(r=ramName, i=iterVar))
                svFile.write("    assign {r}_wdata1[{i}] = {r}_g_wdata[{i}];\n".format(r=ramName, i=iterVar))
            else:
                pass

            svFile.write("  end\n")
            svFile.write("endgenerate\n")

            svFile.write("\n")

        svFile.write("endmodule\n")
    print("******** GraFlex INFO: Finish Writing Top Wrapper... ********\n")


def packBspCU(sysConfig, fn):
    rootDir  = osp.join(sysConfig["RepoPath"]["AppRootDir"], "src/hw")
    hwLibDir = osp.join(sysConfig["RepoPath"]["InfrasIPDir"], "IP_LIB_HDL")
    
    scatterProjName = sysConfig["AppPrefix"] + '_scatter_v' + str(sysConfig["AppVersion"])
    scatterHdlDir = osp.join(rootDir, 'scatter', scatterProjName, 'solution1/syn/verilog') 
    
    gatherProjName = sysConfig["AppPrefix"] + '_gather_v' + str(sysConfig["AppVersion"])
    gatherHdlDir = osp.join(rootDir, 'gather', gatherProjName, 'solution1/syn/verilog') 

    projName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
        str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
    projPath = sysConfig["RepoPath"]["AppRootDir"] + "/GEN_IP/" + projName


    topHdlFile = "{}_cu_top.sv".format(sysConfig["AppPrefix"])
    topHdlDir = osp.join(rootDir, topHdlFile)
    with open(fn, 'w') as tclFile:
        tclFile.write('puts "*** Phase 2: Wrap Up and Generate BSP CU ***\\n"\n')
        if (sysConfig["Board"] == "U280"):
            tclFile.write("create_project -force " + projName + " " + projPath + " -part xcu280-fsvh2892-2L-e\n")
        else:
            print("** For board other than U280, please modify **")
            sys.exit(0)

        tclFile.write("import_files {}\n".format(scatterHdlDir))
        tclFile.write("import_files {}\n".format(gatherHdlDir))
        tclFile.write("import_files -norecurse {}\n".format(osp.join(hwLibDir, "Cnt_Hdr.v")))
        tclFile.write("import_files -norecurse {}\n".format(osp.join(hwLibDir, "Start_Hdr.v")))
        tclFile.write("import_files -norecurse {}\n".format(osp.join(hwLibDir, "FIFO_D32.v")))
        tclFile.write("import_files -norecurse {}\n".format(topHdlDir))

        tclFile.write("update_compile_order -fileset sources_1\n")
        # tclFile.write("ipx::associate_bus_interfaces -busif rd_port -clock ap_clk [ipx::current_core]\n")
        # tclFile.write("ipx::associate_bus_interfaces -busif wr_port -clock ap_clk [ipx::current_core]\n")
        tclFile.write("ipx::package_project -root_dir " + projPath + " -vendor user.org -library user -taxonomy /UserIP\n")
        tclFile.write("close_project\n")


def autoBspCU(bspConfig, sysConfig, fn):
    rootDir = os.path.join(sysConfig["RepoPath"]["AppRootDir"], "src/hw")
    
    os.chdir(rootDir)
    prepareScatter(bspConfig, sysConfig)

    os.chdir(rootDir)
    prepareGather(bspConfig, sysConfig)
    
    wrapBspCU(bspConfig, sysConfig)
    packBspCU(sysConfig, fn)


