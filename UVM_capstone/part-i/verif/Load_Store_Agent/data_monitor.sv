`define MON_IF data_if.cb_monitor
class data_monitor extends uvm_monitor;
    `uvm_component_utils(data_monitor)

    virtual data_mem_intf data_if;

    uvm_analysis_port #(data_mem_seq_item) data_port_item;

    data_mem_seq_item data_inst;
    
    function new(string name, uvm_component parent);
      super.new(name, parent);  
    endfunction 

    function void build_phase (uvm_phase phase); 
        super.build_phase(phase);
        
        if(!uvm_config_db#(virtual data_mem_intf)::get(this,"","data_if",data_if))begin
            `uvm_fatal("NOMEM_IF",{"Virtual interface must be set for:",get_full_name(),".data_if"});
            end
        data_port_item = new("data_port_item",this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        wait(tb_top.reset == 1'b1);
        forever begin
            `uvm_info(get_full_name,"Data monitor class started", UVM_NONE)
            data_inst = data_mem_seq_item::type_id::create("data_inst",this);
            data_if.clk_pos(3);
            data_inst.data_req_o = `MON_IF.data_req_o;
            data_inst.data_we_o = `MON_IF.data_we_o;
            data_inst.data_be_o = `MON_IF.data_be_o;
            data_inst.data_addr_o = `MON_IF.data_addr_o;
            data_inst.data_wdata_o = `MON_IF.data_wdata_o;
            data_port_item.write(data_inst);
            `uvm_info(get_full_name,$sformatf("In DATA monitor, \n\t\t data_req_o = %h, \n\t\t data_we_o = %h, \n\t\t data_be_o = %h, \n\t\t data_addr_o = %h, \n\t\t data_wdata_o = %h", `MON_IF.data_req_o, `MON_IF.data_we_o, `MON_IF.data_be_o, `MON_IF.data_addr_o, `MON_IF.data_wdata_o), UVM_NONE)
            `uvm_info(get_full_name,"Data written to port", UVM_NONE)
            `uvm_info(get_full_name,"Data monitor class ended", UVM_NONE)
        end
    endtask
endclass 