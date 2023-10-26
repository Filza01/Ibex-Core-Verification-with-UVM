interface ins_mem_intf (input clk);
    // Instruction memory interface
    bit                         instr_req_o;
    bit                         instr_gnt_i;
    bit                         instr_rvalid_i;
    bit [31:0]                  instr_addr_o;
    bit [31:0]                  instr_rdata_i;
    bit                         instr_err_i;

    task clk_pos(input int count);
        repeat (count) @(posedge clk);
    endtask

    // driver and monitor clocking blocks 
    clocking cb_driver @(posedge clk);
        default input #1ns output #1ns;
        input instr_req_o;
        input  instr_addr_o;
        output instr_gnt_i;
        output instr_rvalid_i;
        output instr_rdata_i;;
        output instr_err_i;
    endclocking

    clocking cb_monitor @(posedge clk);
        default input #1ns output #1ns;
        input instr_req_o;
        input  instr_addr_o;
        input instr_gnt_i;
        input instr_rvalid_i;
        input instr_rdata_i;;
        input instr_err_i;
    endclocking

endinterface