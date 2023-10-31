class multi_sequencer extends uvm_sequencer;
    `uvm_component_utils(multi_sequencer)

    ins_mem_sequencer                   inst_sequencer;
    data_mem_sequencer                  data_sequencer;
     
    
   function new(string name ,uvm_component parent);
        super.new(name,parent);
    endfunction 
    
endclass
