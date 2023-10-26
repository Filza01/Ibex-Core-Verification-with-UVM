class p_sequencer extends uvm_sequencer;


    ins_mem_sequencer                   inst_sequencer;
    // mem_sequencer                   data_sequencer;
     
    `uvm_component_utils(p_sequencer)
   function new(string name ,uvm_component parent);
        super.new(name,parent);
    endfunction 
    
endclass
