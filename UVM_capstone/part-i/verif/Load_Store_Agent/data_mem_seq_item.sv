class data_mem_seq_item extends uvm_sequence_item;
    `uvm_object_utils(data_mem_seq_item)
    
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

    function new(string name = "data_mem_seq_item");
        super.new(name);
    endfunction
endclass