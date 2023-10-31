class env extends uvm_env;
    `uvm_component_utils(env);

    ins_agent inst_agent;
    data_agent da_agent;

    multi_sequencer sequencer;

    function new(string name = "env", uvm_component parent = null);
        super.new(name , parent);
    endfunction

    virtual function void build_phase(uvm_phase phase); 
        super.build_phase(phase);
        inst_agent = ins_agent::type_id::create("inst_agent",this);
        da_agent = data_agent::type_id::create("da_agent",this);
        sequencer = multi_sequencer::type_id::create("sequencer",this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        sequencer.inst_sequencer = inst_agent.ins_seqr;
        sequencer.data_sequencer = da_agent.data_seqr;
    endfunction

endclass 