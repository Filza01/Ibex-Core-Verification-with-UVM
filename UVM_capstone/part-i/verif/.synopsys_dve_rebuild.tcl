# DVE Simulation Rebuild/Restart Options
# Saved on Mon Oct 30 21:07:20 2023
set SIMSETUP::REBUILDOPTION 1
set SIMSETUP::REBUILDCMD {vcs -lca -debug_access+all -sverilog -timescale=1ns/1ns -ntb_opts uvm-1.2 +incdir+/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/rtl/ tb_top.sv 
}
set SIMSETUP::REBUILDDIR {}
set SIMSETUP::RESTOREBP 1
set SIMSETUP::RESTOREDUMP 1
set SIMSETUP::RESTOREFORCE 1
set SIMSETUP::RESTORESPECMAN 0
