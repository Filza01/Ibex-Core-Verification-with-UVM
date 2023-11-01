class ins_mem_sequencer extends uvm_sequencer #(ins_mem_seq_item);
    `uvm_component_utils(ins_mem_sequencer)
    
    //analysis fifo
    uvm_tlm_analysis_fifo #(ins_mem_seq_item) fifo_export;

    function new(string name = "ins_mem_sequencer", uvm_component parent);
       super.new(name, parent);
       //analysis fifo constructor
       fifo_export = new("fifo_export", this);
    endfunction
 
 endclass
 