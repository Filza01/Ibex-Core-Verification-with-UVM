# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Fri Oct 27 13:42:13 2023
# Designs open: 1
#   Sim: /home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/verif/simv
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: uvm_pkg.\uvm_root::run_test 
#   Group count = 2
#   Group u_top signal count = 70
#   Group u_top_1 signal count = 76
# End_DVE_Session_Save_Info

# DVE version: L-2016.06_Full64
# DVE build date: May 24 2016 21:01:02


#<Session mode="Full" path="/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/verif/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state maximized -rect {{0 60} {1365 767}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_set_toolbar_attributes -toolbar {Simulator} -dock_state top
gui_set_toolbar_attributes -toolbar {Simulator} -offset 0
gui_show_toolbar -toolbar {Simulator}
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -dock_state top
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -offset 0
gui_show_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 285]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
catch { set Stack.1 [gui_share_window -id ${HSPane.1} -type Stack -silent] }
catch { set Class.1 [gui_share_window -id ${HSPane.1} -type Class -silent] }
catch { set Object.1 [gui_share_window -id ${HSPane.1} -type Object -silent] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 285
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 284} {height 301} {dock_state left} {dock_on_new_line true} {child_hier_colhier 173} {child_hier_coltype 107} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 192]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
catch { set Local.1 [gui_share_window -id ${DLPane.1} -type Local -silent] }
catch { set Member.1 [gui_share_window -id ${DLPane.1} -type Member -silent] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 192
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 300
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 191} {height 301} {dock_state left} {dock_on_new_line true} {child_data_colvariable 140} {child_data_colvalue 100} {child_data_coltype 40} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 300]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1306
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 300
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1365} {height 299} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { [llength [lindex [gui_get_db -design Sim] 0]] == 0 } {
gui_set_env SIMSETUP::SIMARGS {{}}
gui_set_env SIMSETUP::SIMEXE {./simv}
gui_set_env SIMSETUP::ALLOW_POLL {0}
if { ![gui_is_db_opened -db {/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/verif/simv}] } {
gui_sim_run Ucli -exe simv -args { -ucligui} -dir /home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/verif -nosource
}
}
if { ![gui_sim_state -check active] } {error "Simulator did not start correctly" error}
gui_set_precision 1ns
gui_set_time_units 1ns
#</Database>

# DVE Global setting session: 


# Global: Breakpoints

# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {tb_top.u_top}


set _session_group_1 u_top
gui_sg_create "$_session_group_1"
set u_top "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { tb_top.u_top.data_wdata_o tb_top.u_top.data_gnt_i tb_top.u_top.scan_rst_ni tb_top.u_top.RegFile tb_top.u_top.rvfi_rs2_rdata tb_top.u_top.rvfi_mode tb_top.u_top.irq_fast_i tb_top.u_top.rvfi_order tb_top.u_top.rvfi_trap tb_top.u_top.instr_addr_o tb_top.u_top.rvfi_insn tb_top.u_top.instr_gnt_i tb_top.u_top.hart_id_i tb_top.u_top.SecureIbex tb_top.u_top.debug_req_i tb_top.u_top.PMPEnable tb_top.u_top.fetch_enable_i tb_top.u_top.PMPNumRegions tb_top.u_top.irq_nm_i tb_top.u_top.irq_external_i tb_top.u_top.rvfi_rs2_addr tb_top.u_top.rvfi_intr tb_top.u_top.data_err_i tb_top.u_top.DbgHwBreakNum tb_top.u_top.rvfi_pc_rdata tb_top.u_top.data_we_o tb_top.u_top.BranchPredictor tb_top.u_top.rvfi_mem_rdata tb_top.u_top.rvfi_rs1_rdata tb_top.u_top.DmExceptionAddr tb_top.u_top.rvfi_ixl tb_top.u_top.instr_err_i tb_top.u_top.crash_dump_o tb_top.u_top.MHPMCounterWidth tb_top.u_top.rvfi_mem_rmask tb_top.u_top.BranchTargetALU tb_top.u_top.data_rvalid_i tb_top.u_top.rst_ni tb_top.u_top.data_rdata_i tb_top.u_top.data_addr_o tb_top.u_top.alert_minor_o tb_top.u_top.WritebackStage tb_top.u_top.alert_major_o tb_top.u_top.rvfi_rs3_rdata tb_top.u_top.rvfi_rs1_addr tb_top.u_top.rvfi_mem_addr tb_top.u_top.instr_rvalid_i tb_top.u_top.clk_i tb_top.u_top.core_sleep_o tb_top.u_top.rvfi_pc_wdata tb_top.u_top.rvfi_rd_addr tb_top.u_top.rvfi_mem_wdata tb_top.u_top.PMPGranularity tb_top.u_top.RV32B tb_top.u_top.data_req_o tb_top.u_top.RV32E tb_top.u_top.instr_rdata_i tb_top.u_top.data_be_o {tb_top.u_top.$unit} tb_top.u_top.RV32M tb_top.u_top.ICache tb_top.u_top.rvfi_rs3_addr tb_top.u_top.rvfi_rd_wdata tb_top.u_top.ram_cfg_i tb_top.u_top.DbgTriggerEn tb_top.u_top.boot_addr_i tb_top.u_top.MHPMCounterNum tb_top.u_top.rvfi_mem_wmask tb_top.u_top.instr_req_o tb_top.u_top.DmHaltAddr }
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.RegFile}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_top.u_top.RegFile}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.SecureIbex}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.PMPEnable}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.PMPNumRegions}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.PMPNumRegions}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.DbgHwBreakNum}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.DbgHwBreakNum}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.BranchPredictor}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.DmExceptionAddr}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.DmExceptionAddr}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.MHPMCounterWidth}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.MHPMCounterWidth}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.BranchTargetALU}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.WritebackStage}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.PMPGranularity}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.PMPGranularity}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.RV32B}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_top.u_top.RV32B}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.RV32E}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.RV32M}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_top.u_top.RV32M}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.ICache}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.DbgTriggerEn}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.MHPMCounterNum}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.MHPMCounterNum}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.DmHaltAddr}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.DmHaltAddr}

set _session_group_2 u_top_1
gui_sg_create "$_session_group_2"
set u_top_1 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { tb_top.u_top.rvfi_halt tb_top.u_top.data_wdata_o tb_top.u_top.irq_software_i tb_top.u_top.ICacheECC tb_top.u_top.test_en_i tb_top.u_top.irq_timer_i tb_top.u_top.rvfi_valid tb_top.u_top.data_gnt_i tb_top.u_top.scan_rst_ni tb_top.u_top.RegFile tb_top.u_top.rvfi_rs2_rdata tb_top.u_top.rvfi_mode tb_top.u_top.irq_fast_i tb_top.u_top.rvfi_order tb_top.u_top.rvfi_trap tb_top.u_top.instr_addr_o tb_top.u_top.rvfi_insn tb_top.u_top.instr_gnt_i tb_top.u_top.hart_id_i tb_top.u_top.SecureIbex tb_top.u_top.debug_req_i tb_top.u_top.PMPEnable tb_top.u_top.fetch_enable_i tb_top.u_top.PMPNumRegions tb_top.u_top.irq_nm_i tb_top.u_top.irq_external_i tb_top.u_top.rvfi_rs2_addr tb_top.u_top.rvfi_intr tb_top.u_top.data_err_i tb_top.u_top.DbgHwBreakNum tb_top.u_top.rvfi_pc_rdata tb_top.u_top.data_we_o tb_top.u_top.BranchPredictor tb_top.u_top.rvfi_mem_rdata tb_top.u_top.rvfi_rs1_rdata tb_top.u_top.DmExceptionAddr tb_top.u_top.rvfi_ixl tb_top.u_top.instr_err_i tb_top.u_top.crash_dump_o tb_top.u_top.MHPMCounterWidth tb_top.u_top.rvfi_mem_rmask tb_top.u_top.BranchTargetALU tb_top.u_top.data_rvalid_i tb_top.u_top.rst_ni tb_top.u_top.data_rdata_i tb_top.u_top.data_addr_o tb_top.u_top.alert_minor_o tb_top.u_top.WritebackStage tb_top.u_top.alert_major_o tb_top.u_top.rvfi_rs3_rdata tb_top.u_top.rvfi_rs1_addr tb_top.u_top.rvfi_mem_addr tb_top.u_top.instr_rvalid_i tb_top.u_top.clk_i tb_top.u_top.core_sleep_o tb_top.u_top.rvfi_pc_wdata tb_top.u_top.rvfi_rd_addr tb_top.u_top.rvfi_mem_wdata tb_top.u_top.PMPGranularity tb_top.u_top.RV32B tb_top.u_top.data_req_o tb_top.u_top.RV32E tb_top.u_top.instr_rdata_i tb_top.u_top.data_be_o {tb_top.u_top.$unit} tb_top.u_top.RV32M tb_top.u_top.ICache tb_top.u_top.rvfi_rs3_addr tb_top.u_top.rvfi_rd_wdata tb_top.u_top.ram_cfg_i tb_top.u_top.DbgTriggerEn tb_top.u_top.boot_addr_i tb_top.u_top.MHPMCounterNum tb_top.u_top.rvfi_mem_wmask tb_top.u_top.instr_req_o tb_top.u_top.DmHaltAddr }
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.ICacheECC}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.RegFile}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_top.u_top.RegFile}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.SecureIbex}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.PMPEnable}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.PMPNumRegions}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.PMPNumRegions}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.DbgHwBreakNum}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.DbgHwBreakNum}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.BranchPredictor}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.DmExceptionAddr}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.DmExceptionAddr}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.MHPMCounterWidth}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.MHPMCounterWidth}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.BranchTargetALU}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.WritebackStage}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.PMPGranularity}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.PMPGranularity}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.RV32B}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_top.u_top.RV32B}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.RV32E}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.RV32M}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_top.u_top.RV32M}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.ICache}
gui_set_radix -radix {strength} -signals {Sim:tb_top.u_top.DbgTriggerEn}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.MHPMCounterNum}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.MHPMCounterNum}
gui_set_radix -radix {decimal} -signals {Sim:tb_top.u_top.DmHaltAddr}
gui_set_radix -radix {unsigned} -signals {Sim:tb_top.u_top.DmHaltAddr}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 361



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design Sim
catch {gui_list_expand -id ${Hier.1} tb_top}
catch {gui_list_select -id ${Hier.1} {tb_top.u_top}}
gui_view_scroll -id ${Hier.1} -vertical -set 171
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Class 'Class.1'
gui_list_set_filter -id ${Class.1} -list { {OVM 1} {VMM 1} {All 1} {Object 1} {UVM 1} {RVM 1} }
gui_list_set_filter -id ${Class.1} -text {*}
gui_change_design -id ${Class.1} -design Sim

# Member 'Member.1'
gui_list_set_filter -id ${Member.1} -list { {InternalMember 0} {RandMember 1} {All 0} {BaseMember 0} {PrivateMember 1} {LibBaseMember 0} {AutomaticMember 1} {VirtualMember 1} {PublicMember 1} {ProtectedMember 1} {OverRiddenMember 0} {InterfaceClassMember 1} {StaticMember 1} }
gui_list_set_filter -id ${Member.1} -text {*}

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {tb_top.u_top}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 171
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active {uvm_pkg.\uvm_root::run_test } /usr/synopsys/vcs-L-2016.06//etc/uvm-1.2/base/uvm_root.svh
gui_view_scroll -id ${Source.1} -vertical -set 3888
gui_src_set_reusable -id ${Source.1}
# Warning: Class view not found.
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
#</Session>

