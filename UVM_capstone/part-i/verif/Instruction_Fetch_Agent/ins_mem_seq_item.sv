class ins_mem_seq_item extends uvm_sequence_item;
    `uvm_object_utils(ins_mem_seq_item)
    
    // Instruction memory interface
    bit                         instr_req_o;
    bit                         instr_gnt_i;
    bit                         instr_rvalid_i;
    bit [31:0]                  instr_addr_o;
    bit [31:0]                  instr_rdata_i;
    bit                         instr_err_i;

    function new(string name = "ins_mem_seq_item");
        super.new(name);
    endfunction
endclass