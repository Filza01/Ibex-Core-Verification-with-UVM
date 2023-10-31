// import mem_model_pkg::*;

class multi_seq extends uvm_sequence;
`uvm_object_utils(multi_seq)

    //mem_model instance
    mem_model  memory_instance;   

    //2 sequence instances: data and instruction 
    ins_mem_seq inst_mem;
    data_mem_seq data_mem;
   
    `uvm_declare_p_sequencer(multi_sequencer)
    
    function new (string name = "multi_seq");
        super.new(name);
        inst_mem = ins_mem_seq :: type_id :: create ("inst_mem");
        data_mem  = data_mem_seq :: type_id :: create ("data_mem");
    endfunction

    virtual task body();
        inst_mem.memory_instance = memory_instance;
        data_mem.memory_instance = memory_instance;
        
        fork
        inst_mem.start(p_sequencer.inst_sequencer);
        data_mem.start(p_sequencer.data_sequencer);
        join

    endtask


endclass
