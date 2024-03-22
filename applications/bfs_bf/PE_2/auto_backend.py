import os
import json
import shutil

# export PYTHONPATH=<path_to_sysConfig["RepoPath"]["AutoUtilDir"]>
from genTcl.auto_rtl_krnl_wizard import autoRtlKrnlWzrd
from genTcl.auto_butterfly_net import autoButterflyNet
from genTcl.auto_bsp_controller import autoBspControl
from genTcl.auto_bsp_cu import autoBspCU
from genTcl.auto_block_design import autoBlockDesign

def main():
    ''' Load JSON Configurations '''
    bspConfigFile = open("bspConfig.json")
    sysConfigFile = open("sysConfig.json")

    bspConfig = json.load(bspConfigFile)
    sysConfig = json.load(sysConfigFile)

    genIpDir  = os.path.join(sysConfig["RepoPath"]["AppRootDir"], "GEN_IP")
    autoTclDir= os.path.join(sysConfig["RepoPath"]["AppRootDir"], "autoTcl")
    autoPyDir = os.path.join(sysConfig["RepoPath"]["AutoUtilDir"], "genTcl")
    
    for dir in [genIpDir, autoTclDir]:
        if os.path.exists(dir):
            shutil.rmtree(dir)
        os.mkdir(dir)

    backendTopTcl = os.path.join(autoTclDir, "auto_backend.tcl")
    
    with open(backendTopTcl, 'w') as tclFile:
        tclFile.write('set rootDir "{}"\n'.format(sysConfig["RepoPath"]["AppRootDir"]))
        tclFile.write('set autoTclDir "{}"\n'.format(autoTclDir))
        tclFile.write('set autoPyDir "{}"\n'.format(autoPyDir))

        tclFile.write('source "${autoTclDir}/autoBspController.tcl"\n')
        tclFile.write('source "${autoTclDir}/autoButterfly.tcl"\n')
        tclFile.write('source "${autoTclDir}/autoWrapBspCU.tcl"\n')
        tclFile.write('source "${autoTclDir}/autoRtlKrnlWzrd.tcl"\n')
        tclFile.write('source "${autoTclDir}/autoBlockDesign.tcl"\n\n')

        tclFile.write('unset env(PYTHONPATH)\n')
        tclFile.write('unset env(PYTHONHOME)\n')
        tclFile.write('exec python "${autoPyDir}/auto_gen_compile_obj.py" "${rootDir}/sysConfig.json" "${rootDir}/packDesign.tcl"\n')
        tclFile.write('source "${rootDir}/packDesign.tcl"\n')


    # Phase 0: Pre-process BSP controller code and package BSP Controller IP
    autoBspControl(bspConfig, sysConfig, os.path.join(autoTclDir, "autoBspController.tcl"))

    # Phase 1: Generate the tcl script for automatic butterfly network
    autoButterflyNet(sysConfig, os.path.join(autoTclDir, "autoButterfly.tcl"))

    # Phase 2: Generate the tcl script for wrappering BSP CUs
    autoBspCU(bspConfig, sysConfig, os.path.join(autoTclDir, "autoWrapBspCU.tcl"))

    # Phase 3: Generate the tcl script for automatic RTL kernel wizard
    autoRtlKrnlWzrd(sysConfig, os.path.join(autoTclDir, "autoRtlKrnlWzrd.tcl"))

    # Phase 4: Generate the tcl script for automatic system BD automation
    autoBlockDesign(bspConfig, sysConfig, os.path.join(autoTclDir, "autoBlockDesign.tcl"))

    bspConfigFile.close()
    sysConfigFile.close()

    # Phase 5: Modify wrapper and top module, package_xo (invoked from vivado Tcl console)
    # autoGenCompileObj(sysConfig, os.path.join(autoTclDir, "autoGenCompileObj.tcl"))


if __name__ == '__main__':
    main()
