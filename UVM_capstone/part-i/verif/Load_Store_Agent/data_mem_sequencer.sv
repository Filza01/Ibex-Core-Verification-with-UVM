class data_mem_sequencer extends uvm_sequencer #(data_mem_seq_item);
    `uvm_component_utils(data_mem_sequencer)
    
    //analysis fifo
    uvm_tlm_analysis_fifo #(data_mem_seq_item) fifo_export;

    function new(string name = "data_mem_sequencer", uvm_component parent);
       super.new(name, parent);
       //analysis fifo constructor
       fifo_export = new("fifo_export", this);
    endfunction
 
 endclass
 