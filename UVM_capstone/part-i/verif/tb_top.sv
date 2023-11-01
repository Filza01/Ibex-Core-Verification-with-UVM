`define  BOOT_ADDR 80000000


import uvm_pkg::*;
`include "uvm_macros.svh";
`include "bus_params_pkg.sv"
`include "mem_model_pkg.sv"
`include "Instruction_Fetch_Agent/ins_mem_seq_item.sv"
`include "Instruction_Fetch_Agent/ins_mem_sequencer.sv"
`include "Instruction_Fetch_Agent/ins_mem_seq.sv"
`include "Load_Store_Agent/data_mem_seq_item.sv"
`include "Load_Store_Agent/data_mem_sequencer.sv"
`include "Load_Store_Agent/data_mem_seq.sv"

`include "clk_rst_if.sv"
`include "Instruction_Fetch_Agent/ins_mem_intf.sv"
`include "Load_Store_Agent/data_mem_intf.sv"
`include "dut_intf.sv"

`include "Instruction_Fetch_Agent/ins_driver.sv"
`include "Instruction_Fetch_Agent/ins_monitor.sv"
`include "Instruction_Fetch_Agent/ins_agent.sv" 
`include "Load_Store_Agent/data_driver.sv"
`include "Load_Store_Agent/data_monitor.sv"
`include "Load_Store_Agent/data_agent.sv" 

`include "multi_sequencer.sv" 
`include "multi_seq.sv"

`include "env.sv"
`include "base_test.sv"

`include "/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/rtl/ibex_top_tracing.sv"

module tb_top();

    wire clk, reset;

    clk_rst_if clk_if (
        .clk(clk),
        .rst_n(reset)
    );

    ins_mem_intf ins_if (.clk(clk));

    data_mem_intf data_if (.clk(clk));

    dut_intf dut_if (.clk(clk));

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars();
    end

    initial begin
        $display("\t\tStarting the initial begin");
        clk_if.set_active();
        $display("\t\tClock is activated");
        uvm_config_db#(virtual clk_rst_if  ) :: set(null,"*","clk_if",clk_if);
        uvm_config_db#(virtual ins_mem_intf ) :: set(null,"*","ins_if",ins_if); 
        uvm_config_db#(virtual data_mem_intf  ) :: set(null,"*","data_if",data_if);
        uvm_config_db#(virtual dut_intf ) :: set(null,"*","dut_if",dut_if);
        $display("\t\tAll interfaces have been set");
        run_test("base_test");
    end

    ibex_top_tracing #(
        .PMPEnable        ( 0                                ),
        .PMPGranularity   ( 0                                ),
        .PMPNumRegions    ( 4                                ),
        .MHPMCounterNum   ( 0                                ),
        .MHPMCounterWidth ( 40                               ),
        .RV32E            ( 0                                ),
        .RV32M            ( ibex_pkg::RV32MFast              ),
        .RV32B            ( ibex_pkg::RV32BNone              ),
        .RegFile          ( ibex_pkg::RegFileFF              ),
        .BranchTargetALU  (1'b0                             ),
        .WritebackStage   (1'b0                              ),
        .ICache           ( 0                                ),
        .ICacheECC        ( 0                                ),
        .ICacheScramble   ( 0                                ),
        .BranchPredictor  ( 0                                ),
        .DbgTriggerEn     ( 0                                ),
        .DbgHwBreakNum    ( 1                                 ),  
        .SecureIbex       ( 0                                ),
        .DmHaltAddr       ( 32'h1A110800                     ),
        .DmExceptionAddr  ( 32'h1A110808                     )
    ) u_top (
    // Clock and reset
    .clk_i                  (clk),
    .rst_ni                 (reset),
    .test_en_i              (1'b0),
    .scan_rst_ni            (1'b1),
    .ram_cfg_i              (0),

    // Configuration
    .hart_id_i              (32'b0),
    .boot_addr_i            (32'h`BOOT_ADDR),

    // Instruction memory interface
    .instr_req_o            (ins_if.instr_req_o),
    .instr_gnt_i            (ins_if.instr_gnt_i),
    .instr_rvalid_i         (ins_if.instr_rvalid_i),
    .instr_addr_o           (ins_if.instr_addr_o),
    .instr_rdata_i          (ins_if.instr_rdata_i),
    // .instr_rdata_intg_i     (ins_if.instr_rdata_intg_i),
    .instr_err_i            (ins_if.instr_err_i),

    // Data memory interface
    .data_req_o             (data_if.data_req_o),
    .data_gnt_i             (data_if.data_gnt_i),
    .data_rvalid_i          (data_if.data_rvalid_i),
    .data_we_o              (data_if.data_we_o),
    .data_be_o              (data_if.data_be_o),
    .data_addr_o            (data_if.data_addr_o),
    .data_wdata_o           (data_if.data_wdata_o),
    //.data_wdata_intg_o      (mem_if.data_wdata_intg_o),
    .data_rdata_i           (data_if.data_rdata_i),
    //.data_rdata_intg_i      (mem_if.data_rdata_intg_i),
    .data_err_i             (data_if.data_err_i),

    // Interrupt inputs
    .irq_software_i         (),
    .irq_timer_i            (),
    .irq_external_i         (),
    .irq_fast_i             (),
    .irq_nm_i               (),

    // Debug interface
    .debug_req_i            (1'b0),
    .crash_dump_o           (),

    // Special control signals
    .fetch_enable_i         (dut_if.fetch_enable_i),
    .alert_minor_o          (),
    //.alert_major_internal_o (dut_if.alert_major_internal_o),
    .alert_major_o      (),
    .core_sleep_o       ()
);

endmodule