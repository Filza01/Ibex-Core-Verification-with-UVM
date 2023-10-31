interface data_mem_intf (input clk);
    // Data memory interface
    bit                         data_req_o;
    bit                         data_gnt_i;
    bit                         data_rvalid_i;
    bit                         data_we_o;
    bit [3:0]                   data_be_o;
    bit [31:0]                  data_addr_o;
    bit [31:0]                  data_wdata_o;
    bit [31:0]                  data_rdata_i;
    bit                         data_err_i;

    task clk_pos(input int count);
        repeat (count) @(posedge clk);
    endtask

    // driver and monitor clocking blocks 
    clocking cb_driver @(posedge clk);
        default input #1ns output #1ns;
        input   data_req_o;
        input   data_we_o;
        input   data_be_o;
        input   data_addr_o;
        input   data_wdata_o;
        output  data_gnt_i;
        output  data_rvalid_i;
        output  data_rdata_i;
        output  data_err_i;
    endclocking

    clocking cb_monitor @(posedge clk);
        default input #1ns output #1ns;
        input   data_req_o;
        input   data_gnt_i;
        input   data_rvalid_i;
        input   data_we_o;
        input   data_be_o;
        input   data_addr_o;
        input   data_wdata_o;
        input   data_rdata_i;
        input   data_err_i;
    endclocking
endinterface