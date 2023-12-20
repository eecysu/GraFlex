import subprocess
import os, sys
import shutil

''' Transform code guided by pragmas '''
def transCodeCtrl(bspConfig, sysConfig):
    srcFile  = bspConfig["BspController"]["SourceFile"] # <app>_ctrl.cpp
    headFile = bspConfig["BspController"]["HeaderFile"] # <app>_ctrl.h
    
    rootDir = os.path.join(sysConfig["RepoPath"]["AppRootDir"], "src/hw/ctrl")
    newSrcDir = os.path.join(rootDir, "tmp")
    topFuncName = bspConfig["BspController"]["TopFunction"]

    # add dummyParam to function declaration in (.h)
    oriHeaderFile = os.path.join(rootDir, headFile)
    newHeaderFile = os.path.join(newSrcDir, headFile)
    os.system('sed "s/{}[ ]*(/{} (volatile bool* dummyParam, /g" {} > {}'.format(topFuncName, topFuncName, oriHeaderFile, newHeaderFile))

    # add dummyParam to function header in (.cpp)
    oriSrcFile = os.path.join(rootDir, srcFile)
    newSrcFile = os.path.join(newSrcDir, srcFile)
    os.system('sed "s/{}[ ]*(/{} (volatile bool* dummyParam, /g" {} > {}'.format(topFuncName, topFuncName, oriSrcFile, newSrcFile))

    # regulate broadcast signals
    os.system('sed -i "s/^#pragma[ ]*GRAFLEX[ ]*broadcast/#pragma GRAFLEX interface ap_none/g" {}'.format(newSrcFile))
    os.system('sed -i "s/^#pragma GRAFLEX interface ap_none.*/& register/g" {}'.format(newSrcFile))
    os.system('sed -i "s/GRAFLEX interface/HLS interface/g" {}'.format(newSrcFile))

    # regulate feedback signals
    # os.system('sed -i "s/^#pragma[ ]*GRAFLEX[ ]*feedback[ ]*port/#pragma GRAFLEX array_partition variable/g" {}'.format(newSrcFile))
    # os.system('sed -i "s/^#pragma GRAFLEX array_partition variable.*/& complete dim=0/g" {}'.format(newSrcFile))
    # os.system('sed -i "s/GRAFLEX array_partition/HLS array_partition/g" {}'.format(newSrcFile))
    os.system('sed -i "s/^#pragma[ ]*GRAFLEX[ ]*feedback/#pragma GRAFLEX interface ap_none/g" {}'.format(newSrcFile))
    os.system('sed -i "s/GRAFLEX interface/HLS interface/g" {}'.format(newSrcFile))

    # deal with placeholder function (void FuncName(void))
    phLine  = subprocess.check_output('sed -n "/^#pragma GRAFLEX placeholder.*/p" {}'.format(newSrcFile), shell=True).decode("utf-8")
    findIdx = phLine.find('func=')
    phName  = phLine[findIdx+5:].strip()

    os.system('sed -i "/^#pragma GRAFLEX placeholder.*/d" {}'.format(newSrcFile))
    os.system('sed -i "s/{}[ ]*(/&dummyParam/g" {}'.format(phName, newSrcFile))
    os.system('sed -i "/{}/e cat {}\n" {}'.format(topFuncName, os.path.join(sysConfig["RepoPath"]["AutoUtilDir"], "placeHolderExample.txt"), newSrcFile))

    os.system('sed -i "s/void[ ]*(/void {}(/g" {}'.format(phName, newSrcFile))
    os.system('sed -i "/{}/i \n" {}'.format(topFuncName, newSrcFile))


''' Create vitis_hls project, do HLS and modify HDL '''
def prepareController(bspConfig, sysConfig):
    os.chdir("./tmp")
    rootDir = os.path.join(sysConfig["RepoPath"]["AppRootDir"], "src/hw/ctrl")
    hlsTclFile = os.path.join(rootDir, "tmp/run_hls.tcl")
    hlsProjName = sysConfig["AppPrefix"] + '_ctrl_v' + str(sysConfig["AppVersion"])
    
    with open(hlsTclFile, 'w') as tclFile:
        tclFile.write("open_project -reset " +hlsProjName+ "\n")
        tclFile.write("set_top " +bspConfig["BspController"]["TopFunction"]+ "\n")
        tclFile.write("add_files " +os.path.join(rootDir, "tmp", bspConfig["BspController"]["SourceFile"]) +"\n")

        tclFile.write('open_solution "solution1" -flow_target vivado\n')
        tclFile.write("set_part {xcu280-fsvh2892-2L-e}\n")
        tclFile.write("create_clock -period " +str(bspConfig["BspController"]["targetPeriod"])+ " -name default\n")

        tclFile.write("csynth_design\nexit\n")

    os.system('vitis_hls -f {}'.format(hlsTclFile))
    hdlFile = os.path.join(os.getcwd(), hlsProjName, "solution1/syn/verilog", bspConfig["BspController"]["TopFunction"]+".v")

    # magic on controller
    tmpStr = subprocess.check_output("grep -e '{}' {}".format('_ap_start;', hdlFile), shell=True).decode("utf-8").strip()
    modPrefix = tmpStr.replace("_ap_start;", "").replace("wire", "").lstrip()

    os.system('sed -i "s/ap_rst,/ap_rst_n,/g" {}'.format(hdlFile))

    newStr = '\tbsp_ap_start,\n\tbsp_ap_done,\n\tbsp_ap_idle,\n\tbsp_ap_ready,'
    os.system('echo "{}" > {}'.format(newStr, 'tmpStr.txt'))
    os.system('sed -i "/dummyParam,/r {}" {}'.format('tmpStr.txt', hdlFile))
    os.system('sed -i "/dummyParam,/d" {}'.format(hdlFile))

    newStr = 'output bsp_ap_start;\ninput bsp_ap_done;\ninput bsp_ap_idle;\ninput bsp_ap_ready;\n'
    os.system('echo "{}" > {}'.format(newStr, 'tmpStr.txt'))
    os.system('sed -i "/input[ ]*dummyParam;/r {}" {}'.format('tmpStr.txt', hdlFile))
    os.system('sed -i "/input[ ]*dummyParam;/d" {}'.format(hdlFile))

    newStr = 'input ap_rst_n; \nwire ap_rst; \nassign ap_rst = ~ap_rst_n;'
    os.system('echo "{}" > {}'.format(newStr, 'tmpStr.txt'))
    os.system('sed -i "/input[ ]*ap_rst;/r {}" {}'.format('tmpStr.txt', hdlFile))
    os.system('sed -i "/input[ ]*ap_rst;/d" {}'.format(hdlFile))

    startLineNo = subprocess.check_output('sed -n "/{}_.*(/=" {}'.format(bspConfig["BspController"]["TopFunction"], hdlFile), shell=True).decode("utf-8").strip()
    endLineNo = int(startLineNo) + 8
    os.system('sed -i "{},{}d" {}'.format(startLineNo, str(endLineNo), hdlFile))

    newStr ="assign bsp_ap_start = " +modPrefix+ "_ap_start;\n" + \
            "assign " +modPrefix+ "_ap_done = bsp_ap_done;\n" + \
            "assign " +modPrefix+ "_ap_idle = bsp_ap_idle;\n" + \
            "assign " +modPrefix+ "_ap_ready = bsp_ap_ready;"
    os.system('echo "{}" > {}'.format(newStr, 'tmpStr.txt'))
    os.system('sed -i "{} r {}" {}'.format(int(startLineNo)-1, 'tmpStr.txt', hdlFile))


''' Export HDL and package as IP '''
def packController(bspConfig, sysConfig, fn):
    hlsProjName = sysConfig["AppPrefix"] + '_ctrl_v' + str(sysConfig["AppVersion"])
    hdlFile = os.path.join(os.getcwd(), hlsProjName, "solution1/syn/verilog", bspConfig["BspController"]["TopFunction"]+".v")

    # create vivado project and package IP
    projName = sysConfig["AppPrefix"].upper() + '_Ctrl_' + str(sysConfig["PartitionScheme"]["Src_Factor"]) + "X" + \
        str(sysConfig["PartitionScheme"]["Dst_Factor"]) + "_VER" + str(sysConfig["AppVersion"])
    projPath = sysConfig["RepoPath"]["AppRootDir"] + "/GEN_IP/" + projName

    with open(fn, 'w') as tclFile:
        tclFile.write('puts "*** Phase 0: Generating BSP Controller ***\\n"\n')
        if (sysConfig["Board"] == "U280"):
            tclFile.write("create_project -force " + projName + " " + projPath + " -part xcu280-fsvh2892-2L-e\n")
            # os.system('cp {} {}'.format(hdlFile, projPath))
        else:
            print("** For board other than U280, please modify **")
            sys.exit(0)

        tclFile.write("import_files -norecurse {}\n".format(hdlFile))
        tclFile.write("update_compile_order -fileset sources_1\n")
        tclFile.write("ipx::package_project -root_dir " + projPath + " -vendor user.org -library user -taxonomy /UserIP\n")

        tclFile.write("close_project\n")


def autoBspControl(bspConfig, sysConfig, fn):
    rootDir = os.path.join(sysConfig["RepoPath"]["AppRootDir"], "src/hw/ctrl")
    newDir  = os.path.join(rootDir, "tmp")
    os.chdir(rootDir)

    if os.path.exists(newDir):
        shutil.rmtree(newDir)
    os.mkdir(newDir)

    transCodeCtrl(bspConfig, sysConfig)
    prepareController(bspConfig, sysConfig)
    packController(bspConfig, sysConfig, fn)
