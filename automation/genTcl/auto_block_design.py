import os
import math
import json

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


def autoExportIP(bspConfig, sysConfig, clkIPList, fn):
    nIO = sysConfig["ParallelSetting"]["N_Net_IO"]
    bdName = sysConfig["AppPrefix"] + "_" + \
        str(sysConfig["PartitionScheme"]["Src_Factor"]) + "x" + \
        str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_v" + str(sysConfig["AppVersion"])
    netBdName = "net" +str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"]+ "_v" +str(sysConfig["AppVersion"])

    with open(fn, 'w') as tclFile:
        tclFile.write('puts "*** Phase 4: Forming System Block Design ***\\n"\n')
        tclFile.write('puts "**  Phase 4.1: Exporting Instances to Block Design ...  **\\n"\n')
        tclFile.write('create_bd_design "' + bdName + '"\n')

        ''' Add customized repository '''
        tclFile.write("set_property  ip_repo_paths  {" + sysConfig["RepoPath"]["InfrasIPDir"] + \
                      " " + sysConfig["RepoPath"]["AppRootDir"] + "/GEN_IP" "} [current_project]\n")
        tclFile.write("update_ip_catalog\n")

        nMemChannel = sysConfig["ParallelSetting"]["N_MemChannel"]
        nPeGroup = nMemChannel // (sysConfig["ParallelSetting"]["N_Net_IO"] // sysConfig["ParallelSetting"]["ExpandFactor"])
        nPePerGrp = sysConfig["ParallelSetting"]["N_Net_IO"] // sysConfig["ParallelSetting"]["ExpandFactor"]

        ''' Instantiate IP instances from customized repository '''
        # (1) Network(s) and Distributors
        for i in range(nPeGroup):
            netInstName = "Network_"+str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"].upper()+ "_VER" + str(sysConfig["AppVersion"]) + "_" + str(i)
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" + netBdName + "_wrapper:1.0 " +netInstName+ "\n") # Network_8x8_BFS_VER1
            clkIPList.append(netInstName)

            bankingFactor = sysConfig["ParallelSetting"]["BankingFactor"]
            assert bankingFactor in (1, 2, 4, 8, 16, 32), "GraFlex Error: Illegal Banking Factor: "+str(bankingFactor)
            
            if bankingFactor != 1:
                instPfxName = "Dist1X" + str(bankingFactor)
                routHBit = int(math.log(nIO, 2)) + int(math.log(bankingFactor, 2)) - 1
                for j in range(nIO):
                    instName = instPfxName + "_" + str(i) + "_" + str(j)
                    tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" +instPfxName+ ":1.0 " +instName+ "\n") # Dist1X2_0_0
                    tclFile.write("set_property -dict [list CONFIG.ROUTING_HBIT {" + str(routHBit) + \
                                  "} CONFIG.C_DATA_WIDTH {" + str(sysConfig["ParallelSetting"]["W_Net_Packet"]) + "}] [get_bd_cells " +instName+ "]\n")
                    clkIPList.append(instName)

        if sysConfig["ReductionSetting"]["HasReduction"] == True:
            currFactor = sysConfig["ReductionSetting"]["Concurrency"]
            for j in range(currFactor):
                atPfxName  = "AdderTree" + str(nMemChannel) + "To1"
                atInstName = atPfxName+ "_" + str(j)
                wCarrier = sysConfig["ReductionSetting"]["W_Carrier"]
                wAdder = sysConfig["ReductionSetting"]["W_Adder"]

                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" +atPfxName+ ":1.0 " +atInstName+ "\n")
                tclFile.write("set_property -dict [list CONFIG.C_CARRY_W {" + str(wCarrier) + \
                              "} CONFIG.C_DATA_W {" + str(wAdder) + "}] [get_bd_cells "+atInstName+"]\n")
                clkIPList.append(atInstName)

                instPfxName = "Dist1X" + str(nMemChannel//currFactor)
                routHBit = int(math.log(nMemChannel//currFactor, 2))
                instName = instPfxName + "_rdc_" + str(j)
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" +instPfxName+ ":1.0 " +instName+ "\n") # Dist1X16_rdc_0
                tclFile.write("set_property -dict [list CONFIG.ROUTING_HBIT {" + str(routHBit) + \
                              "} CONFIG.C_DATA_WIDTH {" + str(wCarrier + wAdder) + "}] [get_bd_cells " +instName+ "]\n")
                clkIPList.append(instName)


        # (2) BSP controller & CUs
        ctrlName = sysConfig["AppPrefix"].upper() + '_Ctrl_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
            str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
        tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" +ctrlName+ ":1.0 " +ctrlName+ "\n") # BFS_Ctrl_2X1_VER1

        for i in range(nPeGroup):
            # i iter over CU group
            for j in range(nPePerGrp):
                # j iter within CU group
                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2X1_VER1
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2X1_VER1_0_0
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" +pePfxName+ ":1.0 " + peName + "\n")

        # (3) BSP control handler IP
        instPfxName = "EndHdr1X" + str(nMemChannel)
        tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" + instPfxName + ":1.0 " + instPfxName + "\n")
        clkIPList.append(instPfxName)
        for idx in range(nMemChannel):
            instName = "StartHdr_" + str(idx)
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:StartHdr:1.0 " + instName + "\n")
            clkIPList.append(instName)

        # (4) customized AXI master
        wAxiData = sysConfig["ParallelSetting"]["W_AXI_DATA"]
        assert wAxiData in (64, 128, 256), "GraFlex Error: Illegal AXI data <width>, not found in AXI master IP lib: "+str(wAxiData)
        for idx in range(nMemChannel):
            instPfxName = "cus_m_axi_s_" + str(wAxiData)
            instName = instPfxName+ "_" +str(idx)
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" + instPfxName + \
                          ":1.0 " +instPfxName+ "_" +str(idx)+ "\n")
            clkIPList.append(instName)

        # (5) BSP broadcast signals
        for idx in range(bspConfig["Broadcast"]["N_Signals"]):
            signalName = bspConfig["Broadcast"]["Name_Signal_" + str(idx)]
            signalType = bspConfig["Broadcast"]["Type_Signal_" + str(idx)]
            signalBw   = bwDecider(signalType)

            for i in range(nPeGroup):
                for j in range(nPePerGrp):
                    instName = "prop_" + signalName + "_" + str(i) + "_" + str(j)
                    tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_4d:1.0 " + instName + "\n")
                    tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {" + str(signalBw) + "}] [get_bd_cells " + instName + "]\n")
                    clkIPList.append(instName)

        # (6) BSP feedback signals
        for i in range(nPeGroup):
            # instPfxName = "check_sum_equal_" + str(nPePerGrp)
            # instName = instPfxName + "_" + str(i)
            # tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" + instPfxName + ":1.0 " + instName + "\n")
            # clkIPList.append(instName)

            for j in range(nPePerGrp):
                instName = "prop_cnt_" + str(i) + "_" + str(j)
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_2var_4d:1.0 " + instName + "\n")
                tclFile.write("set_property -dict [list CONFIG.DW_1 {32} CONFIG.DW_2 {32}] [get_bd_cells " + instName + "]\n")
                clkIPList.append(instName)

                for idx in range(bspConfig["Feedback"]["N_Signals"]):
                    signalLatchType = bspConfig["Feedback"]["Latch_Signal_" + str(idx)]
                    signalName = bspConfig["Feedback"]["Name_Signal_" + str(idx)]
                    signalType = bspConfig["Feedback"]["Type_Signal_" + str(idx)]
                    sigFrom  = bspConfig["Feedback"]["From_Signal_" + str(idx)]
                    signalBw = bwDecider(signalType)

                    if sigFrom == 'Scatter' or sigFrom == 'Gather':
                        if signalLatchType == "Pass":
                            instName = "prop_" + signalName + "_" + str(i) + "_" + str(j)
                            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_4d:1.0 " + instName + "\n")
                            tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {" + str(signalBw) + "}] [get_bd_cells " + instName + "]\n")
                        elif signalLatchType == "Or":
                            assert signalBw==1, "GraFlex Error: Non-boolean feedback signal cannot be or-latched"
                            instName = "or_latch_" + signalName + "_" + str(i) + "_" + str(j)
                            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:OrLatch:1.0 " + instName + "\n")
                        clkIPList.append(instName)

        # (7) on-chip RAMs
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                for k in range(sysConfig["RamPerCU"]["N_RAM"]):
                    ramName = sysConfig["RamPerCU"]["Name_Ram_"+str(k)]
                    ramType = sysConfig["RamPerCU"]["Type_Ram_"+str(k)]
                    ramBankNo = sysConfig["RamPerCU"]["N_Bank_Ram_"+str(k)]

                    assert ramType in ("URAM", "URAM_WE", "BRAM18", "BRAM36"), "GraFlex Error: Unsupported RAM <type>: "+ramType
                    assert ramBankNo in (1, 2, 4, 8, 16, 32, 64), "GraFlex Error: Unsupported RAM banking <number>: "+str(ramBankNo)

                    if ramType == "URAM":
                        instPfxName = "uram_2w_2r"
                    elif ramType == "URAM_WE":
                        instPfxName = "uram_2w_2r_we"
                    elif ramType == "BRAM18":
                        instPfxName = "bram_2w_2r_16k"
                        nMemBits = 2 ** sysConfig["RamPerCU"]["W_Addr_Ram_"+str(k)] * sysConfig["RamPerCU"]["W_Data_Ram_"+str(k)]
                        assert nMemBits==16384, "GraFlex Error: Number of memory bits does not match BRAM 18K (16384): "+str(nMemBits)
                    elif ramType == "BRAM36":
                        instPfxName = "bram_2w_2r_32k"
                        nMemBits = 2 ** sysConfig["RamPerCU"]["W_Addr_Ram_"+str(k)] * sysConfig["RamPerCU"]["W_Data_Ram_"+str(k)]
                        assert nMemBits==32768, "GraFlex Error: Number of memory bits does not match BRAM 36K (32768): "+str(nMemBits)

                    instName = ramName + "_" + str(i) + "_" + str(j)
                    if ramBankNo != 1:
                        instPfxName += ("_x" + str(ramBankNo))

                    tclFile.write("create_bd_cell -type ip -vlnv user.org:user:"+instPfxName+":1.0 " + instName + "\n")
                    if ramType != "URAM" and ramType != "URAM_WE":
                        tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {" + str(signalBw) + "}] [get_bd_cells " + instName + "]\n")
                    clkIPList.append(instName)

        # (8) broadcast ap_start (from BSP Ctrl to all CU)
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                instName = "prop_ap_start_" + str(i) + "_" + str(j)
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_2d:1.0 " +instName+ "\n")
                tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {1}] [get_bd_cells " + instName + "]\n")
                clkIPList.append(instName)

        # (9) propagate ap_rst_n signal (from kernel to IP on demand)
        for i in range(nPeGroup):
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_2d:1.0 prop_rst_n_net_" +str(i)+ "\n")
            tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {1}]" + " [get_bd_cells prop_rst_n_net_{}]\n".format(str(i)))
            clkIPList.append("prop_rst_n_net_" + str(i))
            for j in range(nPePerGrp):
                instName = "prop_rst_n_pe_" + str(i) + "_" + str(j)
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_2d:1.0 " +instName+ "\n")
                tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {1}]" + " [get_bd_cells prop_rst_n_pe_{}_{}]\n".format(str(i), str(j)))
                clkIPList.append(instName)


        # (10) propagate bp signals (from CU to first-level switch node)
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                instName = "prop_bp_" + str(i) + "_" + str(j)
                expandFactor = sysConfig["ParallelSetting"]["ExpandFactor"]
                if expandFactor == 1:
                    ipName = "dff_2d"
                elif expandFactor == 2:
                    ipName = "dff_2var_2d"
                elif expandFactor == 4:
                    ipName = "dff_4var_2d"
                elif expandFactor == 8:
                    ipName = "dff_8var_2d"
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:"+ipName+":1.0 " +instName+ "\n")
                clkIPList.append(instName)


        # (11) propagate scalar args (from kernel to each CU, one replica per CU)
        scalarArgsEntry = sysConfig["KernelSignature"]["ScalarArgs"]
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                for k in range(scalarArgsEntry["N_Args"]):
                    instName = "prop_" + scalarArgsEntry["Name_Arg_" + str(k)] + "_" + str(i) + "_" + str(j)
                    tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_4d:1.0 " +instName+ "\n")
                    clkIPList.append(instName)

                    argType  = scalarArgsEntry["Type_Arg_" + str(k)]
                    bw = bwDecider(argType)
                    tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {"+str(bw)+"}] [get_bd_cells "+instName+"]\n")


        # (12) propagate global pointer (from kernel to each CU)
        for i in range(nMemChannel):
            nArgs = sysConfig["KernelSignature"]["PointerArgs"]["N_Args"]
            for j in range(nArgs):
                instName = "prop_glbl_ptr_" + str(i) + "_" + str(j)
                tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_4d:1.0 " + instName + "\n")
                tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {33}] [get_bd_cells " + instName + "]\n")
                clkIPList.append(instName)


        # (13) inv_<app>_idle
        instName = "inv_" + sysConfig["AppPrefix"] + "_idle"
        tclFile.write("create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 " + instName + "\n")
        tclFile.write("set_property -dict [list CONFIG.C_SIZE {1} CONFIG.C_OPERATION {not} CONFIG.LOGO_FILE {data/sym_notgate.png}] [get_bd_cells " + instName + "]\n")

        # (14) peID
        for idx in range(nMemChannel):
            tclFile.write("create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 peID_" + str(idx) + "\n")
            tclFile.write("set_property -dict [list CONFIG.CONST_WIDTH {8} CONFIG.CONST_VAL {" + str(idx) + "}] [get_bd_cells peID_" + str(idx) + "]\n")

        # # (15) profiling counter & constant placeholder (if enabled)
        if sysConfig["ProfileCounter"] == True:
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:cycle_counter:1.0 cycle_counter_0\n")
            clkIPList.append("cycle_counter_0")

            for idx in range(nMemChannel-1):
                tclFile.write("create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ConstPH_"+str(idx+1)+"\n")
                tclFile.write("set_property -dict [list CONFIG.CONST_WIDTH {32} CONFIG.CONST_VAL {0}] [get_bd_cells ConstPH_"+str(idx+1)+"]\n")

        # (16) propagate rd_baseAddr (from CU to cus_m_axi_s)
        for idx in range(nMemChannel):
            instName = "prop_rdAddr_" + str(idx)
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:dff_2d:1.0 " + instName + "\n")
            tclFile.write("set_property -dict [list CONFIG.DATA_WIDTH {64}] [get_bd_cells " + instName + "]\n")         
            clkIPList.append(instName)

        tclFile.write("\n\n")


def autoConnectIP(bspConfig, sysConfig, clkIPList, fn):
    nIO = sysConfig["ParallelSetting"]["N_Net_IO"]
    nMemChannel = sysConfig["ParallelSetting"]["N_MemChannel"]
    nPeGroup = nMemChannel // (sysConfig["ParallelSetting"]["N_Net_IO"] // sysConfig["ParallelSetting"]["ExpandFactor"])
    nPePerGrp = sysConfig["ParallelSetting"]["N_Net_IO"] // sysConfig["ParallelSetting"]["ExpandFactor"]
    
    with open(fn, 'a') as tclFile:
        tclFile.write('puts "**  Phase 4.2: Connecting Instances in Block Design ...  **\\n"\n')
        
        ''' 4.2.1 Create external ports '''
        tclFile.write('puts "*   Phase 4.2.1: Create external ports ...   *\\n"\n')
        tclFile.write("startgroup\n")
        # ap_ctrl signals
        ctrlName = sysConfig["AppPrefix"].upper() + '_Ctrl_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
            str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
        
        tclFile.write("make_bd_pins_external  [get_bd_pins " + ctrlName + "/ap_clk]\n")
        tclFile.write("make_bd_pins_external  [get_bd_pins " + ctrlName + "/ap_rst_n]\n")
        tclFile.write("make_bd_pins_external  [get_bd_pins " + ctrlName + "/ap_start]\n")
        tclFile.write("make_bd_pins_external  [get_bd_pins " + ctrlName + "/ap_done]\n")
        tclFile.write("make_bd_pins_external  [get_bd_pins " + ctrlName + "/ap_idle]\n")
        tclFile.write("make_bd_pins_external  [get_bd_pins " + ctrlName + "/ap_ready]\n")

        # scalar args, external ports from one group of prop FFs
        scalarArgsEntry = sysConfig["KernelSignature"]["ScalarArgs"]
        for k in range(scalarArgsEntry["N_Args"]):
            instName = "prop_" + scalarArgsEntry["Name_Arg_" + str(k)] + "_0_0"
            tclFile.write("make_bd_pins_external  [get_bd_pins " + instName + "/q]\n") # q_0 to q_<N_Arg-1>

        # pointer args
        for i in range(nMemChannel):
            nArgs = sysConfig["KernelSignature"]["PointerArgs"]["N_Args"]
            for j in range(nArgs):
                instName = "prop_glbl_ptr_" + str(i) + "_" + str(j)
                tclFile.write("make_bd_pins_external  [get_bd_pins " + instName + "/q]\n")

        # AXI bus interface
        wAxiData = sysConfig["ParallelSetting"]["W_AXI_DATA"]
        instPfxName = "cus_m_axi_s_" + str(wAxiData)
        for i in range(nMemChannel):
            tclFile.write("make_bd_intf_pins_external  [get_bd_intf_pins " + instPfxName + "_" + str(i) + "/m_axi]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.2 Rename external ports '''
        tclFile.write('puts "*   Phase 4.2.2: Rename external ports ...   *\\n"\n')
        tclFile.write("startgroup\n")
        # ap_ctrl signals
        tclFile.write("set_property name ap_clk [get_bd_ports ap_clk_0]\n")
        tclFile.write("set_property name ap_rst_n [get_bd_ports ap_rst_n_0]\n")
        tclFile.write("set_property name ap_start [get_bd_ports ap_start_0]\n")
        tclFile.write("set_property name ap_done [get_bd_ports ap_done_0]\n")
        tclFile.write("set_property name ap_idle [get_bd_ports ap_idle_0]\n")
        tclFile.write("set_property name ap_ready [get_bd_ports ap_ready_0]\n")

        # scalar args
        for k in range(scalarArgsEntry["N_Args"]):
            tclFile.write("set_property name " + scalarArgsEntry["Name_Arg_"+str(k)] + " [get_bd_ports q_" +str(k)+ "]\n")

        # pointer args
        idx = scalarArgsEntry["N_Args"]
        pointerArgsEntry = sysConfig["KernelSignature"]["PointerArgs"]
        for i in range(nMemChannel):
            nArgs = pointerArgsEntry["N_Args"]
            for j in range(nArgs):
                ptrPortName = pointerArgsEntry["Name_Arg_"+str(j)] + "_" + str(i) # CSR_V_0
                tclFile.write("set_property name " + ptrPortName + " [get_bd_ports q_" +str(idx)+ "]\n")
                idx += 1

        # AXI bus interface
        for i in range(nMemChannel):
            tclFile.write("set_property name m_axi_gmem" +str(i)+ " [get_bd_intf_ports m_axi_" +str(i)+ "]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.3 Connect scalar args '''
        tclFile.write('puts "*   Phase 4.2.3: Connect scalar args ...   *\\n"\n')
        tclFile.write("startgroup\n")
        # connect to controller
        for i in range(bspConfig["ArgFromKernel"]["N_Args"]):
            argName = bspConfig["ArgFromKernel"]["Name_Arg_"+str(i)]
            tclFile.write("connect_bd_net [get_bd_ports " +argName+ "] [get_bd_pins " +ctrlName+ "/" +argName+ "]\n")

        # connect din end (q)
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                for k in range(scalarArgsEntry["N_Args"]):
                    argName  = scalarArgsEntry["Name_Arg_"+str(k)]
                    instName = "prop_" + scalarArgsEntry["Name_Arg_" + str(k)] + "_" + str(i) + "_" + str(j)
                    if i != 0 or j != 0:
                        tclFile.write("connect_bd_net [get_bd_ports " +argName+ "] [get_bd_pins " + instName + "/q]\n")

        # connect dout end (d)
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                for k in range(scalarArgsEntry["N_Args"]):
                    argName  = scalarArgsEntry["Name_Arg_"+str(k)]
                    instName = "prop_" + scalarArgsEntry["Name_Arg_" + str(k)] + "_" + str(i) + "_" + str(j)
                    pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                        str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2X1_VER1
                    peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2X1_VER1_0_0

                    tclFile.write("connect_bd_net [get_bd_pins " +instName+ "/d] [get_bd_pins " +peName+ "/" +argName+ "]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.4 Connect clk and rst_n '''
        tclFile.write('puts "*   Phase 4.2.4: Connect clk and rst_n ...   *\\n"\n')
        tclFile.write("startgroup\n")
        bankingFactor = sysConfig["ParallelSetting"]["BankingFactor"]

        for inst in clkIPList:
            tclFile.write("connect_bd_net [get_bd_ports ap_clk] [get_bd_pins " + inst + "/clk]\n")

        # rst_n to Dist_rdc (if any)
        if sysConfig["ReductionSetting"]["HasReduction"] == True: 
            currFactor = sysConfig["ReductionSetting"]["Concurrency"]
            for j in range(currFactor):
                instPfxName = "Dist1X" + str(nPePerGrp//currFactor)
                instName = instPfxName + "_rdc_" + str(j)
                tclFile.write("connect_bd_net [get_bd_pins prop_rst_n_net_0/d] [get_bd_pins " + instName + "/rst_n]\n")

        for i in range(nPeGroup):
            netInstName = "Network_"+str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"].upper()+ "_VER" + str(sysConfig["AppVersion"]) + "_" + str(i)
            # rst_n to butterfly network
            tclFile.write("connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins prop_rst_n_net_" + str(i) + "/q]\n") # prop_rst_n din end (q)
            tclFile.write("connect_bd_net [get_bd_pins prop_rst_n_net_" + str(i) + \
                          "/d] [get_bd_pins " + netInstName + "/rst_n]\n") # prop_rst_n dout end (d)

            for k in range(nIO):
                if bankingFactor != 1:
                    # rst_n to Dist
                    distPfxName = "Dist1X" + str(bankingFactor)
                    distInstName = distPfxName + "_" + str(i) + "_" + str(k)
                    propRstInstName = "prop_rst_n_pe_" + str(i) + "_" + str(k//sysConfig["ParallelSetting"]["ExpandFactor"])
                    tclFile.write("connect_bd_net [get_bd_pins " + propRstInstName + \
                                   "/d] [get_bd_pins " + distInstName + "/rst_n]\n")

            for j in range(nPePerGrp):
                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2X1_VER1
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2X1_VER1_0_0
                tclFile.write("connect_bd_net [get_bd_ports ap_clk] [get_bd_pins " +peName+ "/ap_clk]\n") # ap_clk

                propRstInstName = "prop_rst_n_pe_" + str(i) + "_" + str(j)
                tclFile.write("connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins " +propRstInstName+ "/q]\n") # prop_rst_n din end (q)
                
                # rst_n to CU
                hdrInstName  = "StartHdr_" + str(i*nPePerGrp + j)
                tclFile.write("connect_bd_net [get_bd_pins " +propRstInstName+ "/d] [get_bd_pins " +peName+ "/ap_rst_n]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +propRstInstName+ "/d] [get_bd_pins " +hdrInstName+ "/rst_n]\n")

                # rst_n to AXI Master
                channelId = i*nPePerGrp + j
                axiMName = "cus_m_axi_s_" + str(wAxiData) + "_" + str(channelId)
                tclFile.write("connect_bd_net [get_bd_pins " + propRstInstName + \
                              "/d] [get_bd_pins " + axiMName + "/rst_n]\n")
            
                # rst_n to on-chip RAMs
                for k in range(sysConfig["RamPerCU"]["N_RAM"]):
                    ramName = sysConfig["RamPerCU"]["Name_Ram_"+str(k)]
                    ramInstName = ramName + "_" + str(i) + "_" + str(j)
                    tclFile.write("connect_bd_net [get_bd_pins " +propRstInstName+ "/d] [get_bd_pins " +ramInstName+ "/rst_n]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.5 Connect customized AXI master '''
        tclFile.write('puts "*   Phase 4.2.5: Connect customized AXI master ...   *\\n"\n')
        tclFile.write("startgroup\n")
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                channelId = i*nPePerGrp + j
                axiMName = "cus_m_axi_s_" + str(wAxiData) + "_" + str(channelId)
                
                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2X1_VER1
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2X1_VER1_0_0

                # wr_port (CU) to s_axis_wr (AXI_M)
                tclFile.write("connect_bd_intf_net [get_bd_intf_pins " + peName + \
                              "/wr_port] [get_bd_intf_pins " + axiMName + "/s_axis_wr]\n")
                # rd_port (CU) to m_axis_rd (AXI_M)
                tclFile.write("connect_bd_intf_net [get_bd_intf_pins " + peName + \
                              "/rd_port] [get_bd_intf_pins " + axiMName + "/m_axis_rd]\n")
                # rd_baseAddr
                instName = "prop_rdAddr_" + str(channelId)
                tclFile.write("connect_bd_net [get_bd_pins " + peName + "/rd_baseAddr] [get_bd_pins " + instName + "/q]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + instName + "/d] [get_bd_pins " + axiMName + "/rd_baseAddr]\n")
                # wr_baseAddr
                tclFile.write("connect_bd_net [get_bd_pins " + peName + "/wr_baseAddr] [get_bd_pins " + axiMName + "/wr_baseAddr]\n")

                # rd_req
                tclFile.write("connect_bd_net [get_bd_pins " + peName + "/rd_req_V_write] [get_bd_pins " + axiMName + "/rd_req_wr_en]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + peName + "/rd_req_V_din] [get_bd_pins " + axiMName + "/rd_req_din]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + peName + "/rd_req_V_full_n] [get_bd_pins " + axiMName + "/rd_req_full_n]\n")
                # rd_start & wr_start
                tclFile.write("connect_bd_net [get_bd_pins " + axiMName + "/rd_start] [get_bd_pins " + peName + "/rd_start]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + axiMName + "/wr_start] [get_bd_pins " + peName + "/wr_start]\n")

                # wr_len & wr_done
                tclFile.write("connect_bd_net [get_bd_pins " + axiMName + "/wr_len] [get_bd_pins " + peName + "/wr_len]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + axiMName + "/wr_done] [get_bd_pins " + peName + "/wr_done]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.6 Connect BSP broadcast signals '''
        tclFile.write('puts "*   Phase 4.2.6: Connect BSP broadcast signals ...   *\\n"\n')
        tclFile.write("startgroup\n")
        for idx in range(bspConfig["Broadcast"]["N_Signals"]):
            signalName = bspConfig["Broadcast"]["Name_Signal_" + str(idx)]
            for i in range(nPeGroup):
                for j in range(nPePerGrp):
                    pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                        str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2x1_VER1
                    peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2x1_VER1_0_0

                    instName = "prop_" + signalName + "_" + str(i) + "_" + str(j)
                    tclFile.write("connect_bd_net [get_bd_pins " +instName+ "/q] [get_bd_pins " +ctrlName+ "/" +signalName+ "]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +instName+ "/d] [get_bd_pins " +peName+ "/" +signalName+ "]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.7 Connect pointer args '''
        tclFile.write('puts "*   Phase 4.2.7: Connect pointer args ...   *\\n"\n')
        tclFile.write("startgroup\n")
        for i in range(nMemChannel):
            nArgs = sysConfig["KernelSignature"]["PointerArgs"]["N_Args"]
            for j in range(nArgs):
                ptrArgName = sysConfig["KernelSignature"]["PointerArgs"]["Name_Arg_"+str(j)]
                instName = "prop_glbl_ptr_" + str(i) + "_" + str(j)

                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2x1_VER1
                peName = pePfxName + "_" +str(i//nPePerGrp)+ "_" +str(i%nPePerGrp) # BFS_CU_2x1_VER1_0_0

                tclFile.write("connect_bd_net [get_bd_pins " +instName+ "/d] [get_bd_pins " + peName + "/" +ptrArgName+ "]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.8 Connect ap_start & ap_done, inv_idle '''
        tclFile.write('puts "*   Phase 4.2.8: Connect ap_start & ap_done, inv_idle ...   *\\n"\n')
        tclFile.write("startgroup\n")
        
        # ap_start & ap_done
        endHdrName = "EndHdr1X" + str(nMemChannel)

        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) # BFS_CU_2x1_VER1
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2x1_VER1_0_0

                idx = i*nPePerGrp + j
                hdrInstName  = "StartHdr_" + str(idx)
                propInstName = "prop_ap_start_" + str(i) + "_" + str(j)

                tclFile.write("connect_bd_net [get_bd_pins " + propInstName + "/q] [get_bd_pins " + ctrlName + "/bsp_ap_start]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + propInstName + "/d] [get_bd_pins " + hdrInstName + "/sys_start]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + hdrInstName + \
                              "/pe_start] [get_bd_pins " + peName + "/ap_start]\n")
                tclFile.write("connect_bd_net [get_bd_pins " + hdrInstName + \
                              "/pe_done] [get_bd_pins " + peName + "/ap_done]\n")
                
                tclFile.write("connect_bd_net [get_bd_pins " + hdrInstName + \
                              "/stb_done] [get_bd_pins " + endHdrName + "/stb_done_" +str(i*nPePerGrp+j)+ "]\n")

        # inv_idle (connect bsp_ap_start, bsp_ap_idle, bsp_ap_ready)
        instName = "inv_" + sysConfig["AppPrefix"] + "_idle"
        tclFile.write("connect_bd_net [get_bd_pins " + instName + \
                      "/Op1] [get_bd_pins " + ctrlName +"/bsp_ap_start]\n")
        tclFile.write("connect_bd_net [get_bd_pins " + instName + \
                      "/Res] [get_bd_pins " + ctrlName + "/bsp_ap_idle]\n")
        tclFile.write("connect_bd_net [get_bd_pins " + endHdrName + \
                      "/pe_ap_done] [get_bd_pins " + ctrlName + "/bsp_ap_done]\n")
        tclFile.write("connect_bd_net [get_bd_pins " + ctrlName + \
                      "/bsp_ap_ready] [get_bd_pins " + endHdrName + "/pe_ap_done]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.9 Connect cycle_counter, ConstPH and peID '''
        tclFile.write('puts "*   Phase 4.2.9 Connect peID ...   *\\n"\n')
        tclFile.write("startgroup\n")

        if sysConfig["ProfileCounter"] == True:
            tclFile.write("connect_bd_net [get_bd_ports ap_start] [get_bd_pins cycle_counter_0/sys_start]\n")
            tclFile.write("connect_bd_net [get_bd_pins " +ctrlName+ "/bsp_ap_start] [get_bd_pins cycle_counter_0/st_pulse]\n")

            pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) 
            tclFile.write("connect_bd_net [get_bd_pins cycle_counter_0/tm_pulse] [get_bd_pins " + ctrlName + \
                        "/" + sysConfig["ProfileCounterTmSignal"] + "]\n")
            tclFile.write("connect_bd_net [get_bd_pins cycle_counter_0/cycle_cnt] [get_bd_pins " + \
                          pePfxName + "_0_0/cycle_cnt]\n")
        
        # ConstPH & peID
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                idx = i*nPePerGrp + j

                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) 
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2x1_VER1_0_0

                if idx != 0 or sysConfig["ProfileCounter"] == False:
                    tclFile.write("connect_bd_net [get_bd_pins ConstPH_" +str(idx)+ "/dout] [get_bd_pins " +peName+ "/cycle_cnt]\n")
                tclFile.write("connect_bd_net [get_bd_pins peID_" +str(idx)+ "/dout] [get_bd_pins " +peName+ "/peID]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.10 Connect BSP feedback signals '''
        tclFile.write('puts "*   Phase 4.2.10: Connect BSP feedback signals ...   *\\n"\n')
        tclFile.write("startgroup\n")

        # connect default cnt_scatter & cnt_gather
        for i in range(nPeGroup):
            # eqlInstName = "check_sum_equal_" + str(nPePerGrp) + "_" + str(i)
            # # feedback sum_equal signals
            # tclFile.write("connect_bd_net [get_bd_pins " +ctrlName+ "/sum_equal_" +str(i)+ "] [get_bd_pins " +eqlInstName+ "/sum_equal]\n")

            for j in range(nPePerGrp):
                idx = i*nPePerGrp + j

                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) 
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2x1_VER1_0_0
                
                cntInstName = "prop_cnt_" + str(i) + "_" + str(j)
                tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/cnt_scatter] [get_bd_pins " +cntInstName+ "/q1]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +ctrlName+ "/cnt_scatter_" +str(idx)+ "] [get_bd_pins " +cntInstName+ "/d1]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/cnt_gather] [get_bd_pins " +cntInstName+ "/q2]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +ctrlName+ "/cnt_gather_" +str(idx)+ "] [get_bd_pins " +cntInstName+ "/d2]\n")

                # connect (other) feedback signals
                for k in range(bspConfig["Feedback"]["N_Signals"]):
                    signalLatchType = bspConfig["Feedback"]["Latch_Signal_" + str(k)]
                    signalName = bspConfig["Feedback"]["Name_Signal_" + str(k)]
                    sigFrom  = bspConfig["Feedback"]["From_Signal_" + str(k)]

                    if sigFrom == 'Scatter' or sigFrom == 'Gather':
                        if signalLatchType == 'Pass':
                            instName = "prop_" + signalName + "_" + str(i) + "_" + str(j)
                            tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +signalName+ "] [get_bd_pins " +instName+ "/q]\n")
                            tclFile.write("connect_bd_net [get_bd_pins " +ctrlName+ "/" +signalName + "_" + str(idx) + \
                                        "] [get_bd_pins " +instName+ "/d]\n")
                        elif signalLatchType == 'Or':
                            hdrName  = "StartHdr_" + str(idx) 
                            instName = "or_latch_" + signalName + "_" + str(i) + "_" + str(j)
                            tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +signalName+ "] [get_bd_pins " +instName+ "/din]\n")
                            tclFile.write("connect_bd_net [get_bd_pins " +ctrlName+ "/" +signalName + "_" + str(idx) + \
                                        "] [get_bd_pins " +instName+ "/dout]\n")
                            tclFile.write("connect_bd_net [get_bd_pins " +hdrName+ "/pe_start" + "] [get_bd_pins " +instName+ "/pe_start]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.11 Connect butterfly networks & distributors '''
        tclFile.write('puts "*   Phase 4.2.11: Connect butterfly networks & distributors ...   *\\n"\n')
        tclFile.write("startgroup\n")

        bankingFactor = sysConfig["ParallelSetting"]["BankingFactor"]
        for i in range(nPeGroup):
            netInstName = "Network_"+str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"].upper()+ "_VER" + str(sysConfig["AppVersion"]) + "_" + str(i)
            
            for j in range(nIO):
                peId   = j // sysConfig["ParallelSetting"]["ExpandFactor"]
                portId = j %  sysConfig["ParallelSetting"]["ExpandFactor"]
                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
                peName = pePfxName + "_" +str(i)+ "_" +str(peId) # BFS_CU_2x1_VER1_0_0

                # ovld & dout
                if bankingFactor == 1:
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_ovld_" + str(portId) + \
                                "] [get_bd_pins " + netInstName + "/ovld_" + str(j) + "]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_odata_" + str(portId) + \
                                "] [get_bd_pins " + netInstName + "/dout_" + str(j) + "]\n")
                else:
                    distInstName = "Dist1X" + str(bankingFactor) + "_" + str(i) + "_" + str(j)
                    tclFile.write("connect_bd_net [get_bd_pins " + distInstName + \
                                  "/ivld] [get_bd_pins " + netInstName + "/ovld_" + str(j) + "]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " + distInstName + \
                                  "/din] [get_bd_pins " + netInstName + "/dout_" + str(j) + "]\n")

                    for k in range(bankingFactor):
                        tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_ovld_" + str(portId) + "_" + str(k) + \
                                      "] [get_bd_pins " + distInstName + "/ovld_" + chr(ord('a')+k) + "]\n")
                        tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_odata_" + str(portId) + "_" + str(k) + \
                                      "] [get_bd_pins " + distInstName + "/dout_" + chr(ord('a')+k) + "]\n")

                # ivld & din
                tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_ivld_" + str(portId) + \
                              "] [get_bd_pins " + netInstName + "/ivld_" + str(j) + "]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_idata_" + str(portId) + \
                              "] [get_bd_pins " + netInstName + "/din_" + str(j) + "]\n")

                # ofw & bp
                tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_ofw_" + str(portId) + \
                              "] [get_bd_pins " + netInstName + "/ofw_" + str(j) + "]\n")

                bpInstName = "prop_bp_" + str(i) + "_" + str(peId)
                tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/sw_bp_" + str(portId) + \
                              "] [get_bd_pins " +bpInstName+ "/q" +str(portId+1)+ "]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +netInstName+ "/bp_" + str(j) + \
                              "] [get_bd_pins " +bpInstName+ "/d" +str(portId+1)+ "]\n")

        tclFile.write("endgroup\n\n")


        ''' 4.2.12 Connect on-chip RAMs '''
        tclFile.write('puts "*   Phase 4.2.12: Connect on-chip RAMs ...   *\\n"\n')
        tclFile.write("startgroup\n")
        for i in range(nPeGroup):
            for j in range(nPePerGrp):
                pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"]) 
                peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2x1_VER1_0_0

                for k in range(sysConfig["RamPerCU"]["N_RAM"]):
                    ramPfxName  = sysConfig["RamPerCU"]["Name_Ram_"+str(k)]
                    ramInstName = ramPfxName + "_" + str(i) + "_" + str(j)
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_addr0] [get_bd_pins " +ramInstName+ "/addr0]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_addr1] [get_bd_pins " +ramInstName+ "/addr1]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_ce0] [get_bd_pins " +ramInstName+ "/ce0]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_ce1] [get_bd_pins " +ramInstName+ "/ce1]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_we0] [get_bd_pins " +ramInstName+ "/we0]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_we1] [get_bd_pins " +ramInstName+ "/we1]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_rdata0] [get_bd_pins " +ramInstName+ "/rdata0]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_rdata1] [get_bd_pins " +ramInstName+ "/rdata1]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_wdata0] [get_bd_pins " +ramInstName+ "/wdata0]\n")
                    tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/" +ramPfxName+ "_wdata1] [get_bd_pins " +ramInstName+ "/wdata1]\n")

        tclFile.write("endgroup\n\n")

        if sysConfig["ReductionSetting"]["HasReduction"] == True:
            ''' 4.2.13 Connect reduction adder trees & distributors '''
            tclFile.write('puts "*   Phase 4.2.12: Connect reduction adder trees & distributors ...   *\\n"\n')
            tclFile.write("startgroup\n")

            currFactor = sysConfig["ReductionSetting"]["Concurrency"]
            for idx in range(currFactor):
                atPfxName  = "AdderTree" + str(nMemChannel) + "To1"
                atInstName = atPfxName+ "_" + str(idx)
                dstPfxName  = "Dist1X" + str(nMemChannel//currFactor)
                dstInstName = dstPfxName + "_rdc_" + str(idx)
                # connect distributors' input
                tclFile.write("connect_bd_net [get_bd_pins " +atInstName+ "/ovld] [get_bd_pins " +dstInstName+ "/ivld]\n")
                tclFile.write("connect_bd_net [get_bd_pins " +atInstName+ "/dout] [get_bd_pins " +dstInstName+ "/din]\n")

                for i in range(nPeGroup):
                    for j in range(nPePerGrp):
                        peId = i*nPePerGrp + j
                        pePfxName = sysConfig["AppPrefix"].upper() + '_CU_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
                            str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
                        peName = pePfxName + "_" +str(i)+ "_" +str(j) # BFS_CU_2x1_VER1_0_0
                        # connect adder trees (ivld & idata)
                        tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/rdc_ivld_" + str(idx) + \
                                      "] [get_bd_pins " +atInstName+ "/ivld_" +str(peId)+ "]\n")
                        tclFile.write("connect_bd_net [get_bd_pins " +peName+ "/rdc_idata_" + str(idx) + \
                                      "] [get_bd_pins " +atInstName+ "/din_" +str(peId)+ "]\n")
                        
                        # connect dist_rdc (ovld & odata)
                        tgtPeIdx  = peId*currFactor + idx%currFactor
                        tgtPeName = pePfxName + "_" + tgtPeIdx//nPePerGrp + "_" + tgtPeIdx%nPePerGrp
                        tclFile.write("connect_bd_net [get_bd_pins " +dstInstName+ "/ovld_" + peId + \
                                      "] [get_bd_pins " + tgtPeName + "/rdc_ovld]\n")
                        tclFile.write("connect_bd_net [get_bd_pins " +dstInstName+ "/dout_" + peId + \
                                      "] [get_bd_pins " + tgtPeName + "/rdc_odata]\n")

            tclFile.write("endgroup\n\n")


''' Automatic Tcl Flow for Block Design '''
def autoBlockDesign(bspConfig, sysConfig, fn):
    clkIPList = []
    autoExportIP(bspConfig, sysConfig, clkIPList, fn)
    autoConnectIP(bspConfig, sysConfig, clkIPList, fn)
