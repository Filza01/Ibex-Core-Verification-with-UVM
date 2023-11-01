class ins_agent extends uvm_agent;
    `uvm_component_utils(ins_agent);

    ins_mem_sequencer ins_seqr;
    ins_monitor mon;
    ins_driver drv;

    function new(string name = "ins_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        ins_seqr = ins_mem_sequencer::type_id::create("ins_seqr",this);
        drv = ins_driver::type_id::create("drv",this);
        mon = ins_monitor::type_id::create("mon",this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(ins_seqr.seq_item_export);
        mon.ins_port_item.connect(ins_seqr.fifo_export.analysis_export);
    endfunction
    
endclass 