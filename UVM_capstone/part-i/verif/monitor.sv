`define MON_IF ins_if.cb_monitor
class monitor extends uvm_monitor;
    `uvm_component_utils(monitor)

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
        // wait(tb_top.reset == 1'b1);
        forever begin
            `uvm_info(get_full_name,"In monitor class", UVM_NONE)
            ins_inst = ins_mem_seq_item::type_id::create("ins_inst",this);
            ins_if.clk_pos(4);
            ins_inst.instr_req_o = `MON_IF.instr_req_o;
            ins_inst.instr_gnt_i = `MON_IF.instr_gnt_i;
            ins_inst.instr_rvalid_i = `MON_IF.instr_rvalid_i;
            ins_inst.instr_addr_o = `MON_IF.instr_addr_o;
            ins_inst.instr_rdata_i = `MON_IF.instr_rdata_i;
            ins_inst.instr_err_i = `MON_IF.instr_err_i;
            ins_port_item.write(ins_inst);
            `uvm_info(get_full_name,"Data written to port", UVM_NONE)
            `uvm_info(get_full_name,$sformatf("In monitor class, ins_inst.instr_rdata_i = %h, `MON_IF.instr_rdata_i = %h", ins_inst.instr_rdata_i, `MON_IF.instr_rdata_i), UVM_NONE)
            `uvm_info(get_full_name,$sformatf("In monitor class, ins_inst.instr_req_o = %h, `MON_IF.instr_req_o = %h", ins_inst.instr_req_o, `MON_IF.instr_req_o), UVM_NONE)
            `uvm_info(get_full_name,$sformatf("In monitor class, ins_inst.instr_rvalid_i = %h, `MON_IF.instr_rvalid_i = %h", ins_inst.instr_rvalid_i, `MON_IF.instr_rvalid_i), UVM_NONE)
            `uvm_info(get_full_name,$sformatf("In monitor class, ins_inst.instr_addr_o = %h, `MON_IF.instr_raddr_o = %h", ins_inst.instr_addr_o, `MON_IF.instr_addr_o), UVM_NONE)
            `uvm_info(get_full_name,$sformatf("In monitor class, ins_inst.instr_gnt_i = %h, `MON_IF.instr_gnt_i = %h", ins_inst.instr_gnt_i, `MON_IF.instr_gnt_i), UVM_NONE)
            `uvm_info(get_full_name,$sformatf("In monitor class, ins_inst.instr_err_i = %h, `MON_IF.instr_err_i = %h", ins_inst.instr_err_i, `MON_IF.instr_err_i), UVM_NONE)
        end
    endtask
endclass //monitor extends superClass