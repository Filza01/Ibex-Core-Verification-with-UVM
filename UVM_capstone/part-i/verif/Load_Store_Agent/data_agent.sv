class data_agent extends uvm_agent;
    `uvm_component_utils(data_agent);

    data_mem_sequencer data_seqr;
    data_monitor mon;
    data_driver drv;

    function new(string name = "data_agent", uvm_component parent = null);
        super.new(name, parent);
    endfunction //new()

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        data_seqr = data_mem_sequencer::type_id::create("data_seqr",this);
        drv = data_driver::type_id::create("drv",this);
        mon = data_monitor::type_id::create("mon",this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(data_seqr.seq_item_export);
        mon.data_port_item.connect(data_seqr.fifo_export.analysis_export);
    endfunction
    
endclass 