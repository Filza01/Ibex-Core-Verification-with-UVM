`define MON_IF ins_if.cb_monitor
class ins_monitor extends uvm_monitor;
    `uvm_component_utils(ins_monitor)

    virtual ins_mem_intf ins_if;

    uvm_analysis_port #(ins_mem_seq_item) ins_port_item;

    ins_mem_seq_item ins_inst;
    
    function new(string name, uvm_component parent);
      super.new(name, parent);  
    endfunction 

    function void build_phase (uvm_phase phase); 
        super.build_phase(phase);
        
        if(!uvm_config_db#(virtual ins_mem_intf)::get(this,"","ins_if",ins_if))begin
            `uvm_fatal("NOMEM_IF",{"Virtual interface must be set for:",get_full_name(),".ins_if"});
            end
        ins_port_item = new("ins_port_item",this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        wait(tb_top.reset == 1'b1);
        forever begin
            `uvm_info(get_full_name,"Instruction monitor class started", UVM_NONE)
            ins_inst = ins_mem_seq_item::type_id::create("ins_inst",this);
            ins_if.clk_pos(4);
            ins_inst.instr_req_o = `MON_IF.instr_req_o;
            ins_inst.instr_addr_o = `MON_IF.instr_addr_o;
            ins_port_item.write(ins_inst);
            `uvm_info(get_full_name,$sformatf("In INSTRUCTION monitor, \n\t\t instr_req_o = %h, \n\t\t instr_addr_o = %h", `MON_IF.instr_req_o, `MON_IF.instr_addr_o), UVM_NONE)
            `uvm_info(get_full_name,"Data written to port item", UVM_NONE)
            `uvm_info(get_full_name,"Instruction monitor class ended", UVM_NONE)
        end
    endtask
endclass 