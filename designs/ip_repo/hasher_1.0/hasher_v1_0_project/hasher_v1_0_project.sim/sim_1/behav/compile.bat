@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.

set PATH=$XILINX/lib/$PLATFORM:$XILINX/bin/$PLATFORM;/home/derek/Xilinx/SDK/2014.1/bin:/home/derek/Xilinx/Vivado/2014.1/ids_lite/ISE/bin/lin64;/home/derek/Xilinx/Vivado/2014.1/ids_lite/ISE/lib/lin64;/home/derek/Xilinx/Vivado/2014.1/bin;%PATH%
set XILINX_PLANAHEAD=/home/derek/Xilinx/Vivado/2014.1

xelab -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot hasher_v1_0_behav --prj /home/derek/Documents/year_4/ECE532/ip_repo/hasher_1.0/hasher_v1_0_project/hasher_v1_0_project.sim/sim_1/behav/hasher_v1_0.prj   xil_defaultlib.hasher_v1_0   xil_defaultlib.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
