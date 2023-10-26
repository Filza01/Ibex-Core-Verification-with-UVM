class env extends uvm_env;
    `uvm_component_utils(env);

    agent inst_agent;

    p_sequencer sequencer_p;

    // instatiate data agent and p sequencer here 

    function new(string name = "my_env", uvm_component parent = null);
        super.new(name , parent);
    endfunction

    virtual function void build_phase(uvm_phase phase); 
        super.build_phase(phase);
        inst_agent = agent::type_id::create("inst_agent",this);
        sequencer_p = p_sequencer::type_id::create("sequencer_p",this);
    endfunction

    // connect phase for p sequencer 
    virtual function void connect_phase(uvm_phase phase);
        sequencer_p.inst_sequencer = inst_agent.ins_seqr;
        // sequencer_p.data_sequencer = data_agent.seqr;
    endfunction : connect_phase

endclass //env extends uvm_env