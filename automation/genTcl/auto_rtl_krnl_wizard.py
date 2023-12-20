import os
import sys

''' Automatic Tcl Flow for RTL Kernel Wizard '''
def autoRtlKrnlWzrd(sysConfig, fn):
    rootDir = sysConfig["RepoPath"]["AppRootDir"]
    os.chdir(rootDir)

    # parse application info
    boardName  = sysConfig["Board"]
    if boardName not in ("U280"):
        print("Warning: " + boardName + "is not supported yet")

    kernelName = "inst_" + sysConfig["AppPrefix"] + "_" + \
        str(sysConfig["PartitionScheme"]["Src_Factor"]) + "x" + \
        str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_v" + str(sysConfig["AppVersion"])

    # parse scalar args
    scalarArgs = []
    scalarArgsEntry = sysConfig["KernelSignature"]["ScalarArgs"]

    for i in range(scalarArgsEntry["N_Args"]):
        argName = scalarArgsEntry["Name_Arg_"+str(i)]  
        argType = scalarArgsEntry["Type_Arg_"+str(i)]
        assert argType in ("bool", "int", "uint", "char", "uchar", "short", "ushort", \
                        "long", "ulong", "half", "float", "double"), \
            "GraFlex Error: Illegal scalar argument <type>: "+argType

        scalarArgs.append((argName, argType))

    # parse AXI interface setting
    nMemChannel = sysConfig["ParallelSetting"]["N_MemChannel"]
    nMemWidthInBytes = sysConfig["ParallelSetting"]["W_AXI_DATA"] // 8
    assert (type(nMemChannel)==int and nMemChannel in range(65)), "GraFlex Error: Illegal memory channel <number>: "+str(nMemChannel)
    assert nMemWidthInBytes in (4, 8, 16, 32, 64, 128), "GraFlex Error: Illegal AXI data <width> in bytes: "+str(nMemWidthInBytes)

    # parse pointer args
    pointerArgs = []
    pointerArgsEntry = sysConfig["KernelSignature"]["PointerArgs"]

    for i in range(pointerArgsEntry["N_Args"]):
        pointerArgs.append(pointerArgsEntry["Name_Arg_"+str(i)])

    with open(fn, 'w') as tclFile:
        tclFile.write('puts "*** Phase 3: Going Through RTL Kernel Wizard ***\\n"\n')

        # create new vivado project & set the target board
        if (boardName == "U280"):
            tclFile.write("create_project -force " + kernelName + " " + os.path.join(sysConfig["RepoPath"]["AppRootDir"], kernelName) + " -part xcu280-fsvh2892-2L-e\n")
            tclFile.write("set_property board_part xilinx.com:au280:part0:1.1 [current_project]\n")
        else:
            print("** For board other than U280, please modify **")
            sys.exit(0)

        # instantiate the RTL kernel wizard IP
        tclFile.write("create_ip -name rtl_kernel_wizard -vendor xilinx.com -library ip -version 1.0 -module_name " + kernelName + "\n")

        # setup RTL kernel signatures
        # scalar args
        cmd  = "set_property -dict [list "
        cmd += "CONFIG.Component_Name {" + kernelName + "} CONFIG.KERNEL_NAME {" + kernelName + "} CONFIG.KERNEL_VENDOR {rcsl.ust.hk} CONFIG.NUM_RESETS {1} "
        cmd += "CONFIG.NUM_INPUT_ARGS {" + str(len(scalarArgs)) + "} "
        for idx in range(len(scalarArgs)):
            idf  = "{:0>2d}".format(idx)
            cmd += "CONFIG.ARG" + idf + "_NAME {" + scalarArgs[idx][0] + "} CONFIG.ARG" + idf + "_TYPE {" + scalarArgs[idx][1] + "} "

        # pointer args
        cmd  += "CONFIG.NUM_M_AXI {" + str(nMemChannel)+ "} "
        nArgs = sysConfig["KernelSignature"]["PointerArgs"]["N_Args"]
        for i in range(nMemChannel):
            idf  = "{:0>2d}".format(i)
            cmd += "CONFIG.M" + idf + "_AXI_NAME {m_axi_gmem" + str(i) + "} CONFIG.M" + idf + \
                "_AXI_DATA_NUM_BYTES {" + str(nMemWidthInBytes) + "} CONFIG.M" + idf + \
                "_AXI_NUM_ARGS {" + str(nArgs)+ "} "

            for j in range(nArgs):
                argIdf= "{:0>2d}".format(j)
                cmd  += "CONFIG.M"+ idf +"_AXI_ARG"+ argIdf +"_INTF {m_axi_gmem" + str(i) + \
                        "} CONFIG.M"+ idf +"_AXI_ARG"+ argIdf +"_NAME {" + pointerArgs[j] + "_" + str(i) + "} "

            for k in range(10-nArgs):
                padIdf= "{:0>2d}".format(nArgs+k)
                cmd  += "CONFIG.M"+ idf +"_AXI_ARG"+ padIdf +"_INTF {m_axi_gmem" + str(i) + "} "

        cmd += "] [get_ips " + kernelName + "]\n" # 2nd tcl arg for cmd
        tclFile.write(cmd)

        # generate .xci target
        tclFile.write("generate_target {instantiation_template} [get_files " + \
                    os.path.join(rootDir, kernelName) + "/" + kernelName + ".srcs/sources_1/ip/" + kernelName + "/" + kernelName + ".xci]\n")
        tclFile.write("update_compile_order -fileset sources_1\n")

        # open_example_project
        tclFile.write("open_example_project -force -dir " + rootDir + " [get_ips  " + kernelName + "]\n")
        tclFile.write("close_project\n")
        
        # tclFile.write("start_gui\n") ### DEBUG ONLY
        exProjName = kernelName + "_ex"
        tclFile.write("open_project " + os.path.join(rootDir, exProjName) + "/" + exProjName + ".xpr\n") # change current pro

        # remove example design files (6)
        cmd  = "remove_files  {" + os.path.join(rootDir, exProjName, "imports", kernelName) + "_example_adder.v "
        cmd += os.path.join(rootDir, exProjName, "imports", kernelName) + "_example.sv "
        cmd += os.path.join(rootDir, exProjName, "imports", kernelName) + "_example_axi_read_master.sv "
        cmd += os.path.join(rootDir, exProjName, "imports", kernelName) + "_example_axi_write_master.sv "
        cmd += os.path.join(rootDir, exProjName, "imports", kernelName) + "_example_counter.sv "
        cmd += os.path.join(rootDir, exProjName, "imports", kernelName) + "_example_vadd.sv}\n"
        tclFile.write(cmd)
