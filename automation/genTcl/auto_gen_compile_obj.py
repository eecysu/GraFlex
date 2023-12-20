import subprocess
import os, sys
import json

sysConfigFile = sys.argv[1]
sysConfig = json.load(open(sysConfigFile))

fn = sys.argv[2]

rootDir = os.path.join(sysConfig["RepoPath"]["AppRootDir"])
kernelName = "inst_" + sysConfig["AppPrefix"] + "_" + \
    str(sysConfig["PartitionScheme"]["Src_Factor"]) + "x" + \
    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_v" + str(sysConfig["AppVersion"])
bdName = sysConfig["AppPrefix"] + "_" + \
    str(sysConfig["PartitionScheme"]["Src_Factor"]) + "x" + \
    str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_v" + str(sysConfig["AppVersion"])

with open(fn, 'w') as tclFile:
    ''' Create HDL wrapper for top-level block design '''
    # tclFile.write("make_wrapper -files [get_files /Zodiac/GraphBackEnd/Auto/inst_bfs_2x1_v1_ex/inst_bfs_2x1_v1_ex.srcs/sources_1/bd/bfs_2x1_v1/bfs_2x1_v1.bd] -top\n")
    tclFile.write("make_wrapper -files [get_files {rD}/{kN}_ex/{kN}_ex.srcs/sources_1/bd/{bN}/{bN}.bd] -top\n".format(rD=rootDir, kN=kernelName, bN=bdName))
    tclFile.write("add_files -norecurse {rD}/{kN}_ex/{kN}_ex.gen/sources_1/bd/{bN}/hdl/{bN}_wrapper.v\n".format(rD=rootDir, kN=kernelName, bN=bdName))
    tclFile.write("update_compile_order -fileset sources_1\n")

    ''' Modify top-level HDL wrapper '''
    hdlFile = "{}/{}_ex/imports/{}.v".format(rootDir, kernelName, kernelName)
    startLineNo = subprocess.check_output('sed -n "/example.*#(/=" {}'.format(hdlFile), shell=True).decode("utf-8").strip()
    endLineNo = subprocess.check_output('sed -n "/example[ ]*(/=" {}'.format(hdlFile), shell=True).decode("utf-8").strip()
    os.system('sed -i "{},{}d" {}'.format(startLineNo, endLineNo, hdlFile))
    os.system('sed -i "{}i {}_wrapper impl (" {}'.format(startLineNo, bdName, hdlFile))

    nMemChannel = sysConfig["ParallelSetting"]["N_MemChannel"]
    pointerArgsEntry = sysConfig["KernelSignature"]["PointerArgs"]
    for i in range(nMemChannel):
        nArgs = pointerArgsEntry["N_Args"]
        for j in range(nArgs):
            ptrPortName = pointerArgsEntry["Name_Arg_"+str(j)] + "_" + str(i) # CSR_V_0
            os.system('sed -i "{},$ s/([ ]*{}/( {}[32:0]/g" {}'.format(startLineNo, ptrPortName, ptrPortName, hdlFile))

    ''' Run synthesis and generate Xilinx Object file (*.xo) '''
    tclFile.write("set_property strategy Flow_AlternateRoutability [get_runs synth_1]\n")
    tclFile.write("set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]\n")
    tclFile.write("launch_runs synth_1 -jobs 12\n")

    tclFile.write("wait_on_run synth_1\n") # wait for synthesis to finish
    tclFile.write("source -notrace {rD}/{kN}_ex/imports/package_kernel.tcl\n".format(rD=rootDir, kN=kernelName))
    tclFile.write("open_run synth_1 -name synth_1\n")
    tclFile.write("rename_ref -prefix_all inst_{}_\n".format(sysConfig["AppPrefix"] + "_" + \
        str(sysConfig["PartitionScheme"]["Src_Factor"]) + "x" + str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_v" + str(sysConfig["AppVersion"])))

    tclFile.write("write_checkpoint {rD}/{kN}_ex/{kN}_ex.runs/synth_1/packaged.dcp\n".format(rD=rootDir, kN=kernelName))
    tclFile.write("write_xdc {rD}/{kN}_ex/{kN}_ex.runs/synth_1/packaged.xdc\n".format(rD=rootDir, kN=kernelName))
    tclFile.write("close_design\n")

    tclFile.write('exec rm -rf "{rD}/{kN}_ex/{kN}"\n'.format(rD=rootDir, kN=kernelName))
    tclFile.write('exec rm -rf "{rD}/{kN}.xo"\n'.format(rD=rootDir, kN=kernelName)) # remove existing xo, if any

    tclFile.write("package_project_dcp_and_xdc {rD}/{kN}_ex/{kN}_ex.runs/synth_1/packaged.dcp {rD}/{kN}_ex/{kN}_ex.runs/synth_1/packaged.xdc {rD}/{kN}_ex/{kN} rcsl.ust.hk kernel {kN}\n".format(rD=rootDir, kN=kernelName))
    tclFile.write("package_xo  -xo_path {rD}/{kN}.xo -kernel_name {kN} -ip_directory {rD}/{kN}_ex/{kN} -kernel_xml {rD}/{kN}_ex/imports/kernel.xml\n".format(rD=rootDir, kN=kernelName))

