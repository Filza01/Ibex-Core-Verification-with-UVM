`define DRIV_IF data_if.cb_driver

class data_driver extends uvm_driver #(data_mem_seq_item);
    `uvm_component_utils(data_driver)
    
    virtual data_mem_intf data_if;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db #(virtual data_mem_intf)::get(this,"*","data_if",data_if)) begin
            `uvm_fatal ("DATA_DRIVER","Failed to get data_if")
        end
    endfunction
    
    virtual task run_phase(uvm_phase phase);
        data_mem_seq_item data_inst;
        wait(tb_top.reset == 1'b1);
        forever begin
            `uvm_info(get_full_name(), "Data Driver Started", UVM_NONE)

            seq_item_port.get_next_item(data_inst);  // Get the next item from sequencer

            if(data_inst.data_req_o) begin
                `DRIV_IF.data_gnt_i <= 1'b1;
                
                 data_if.clk_pos(1);
                `DRIV_IF.data_gnt_i <= 1'b0;       
                `DRIV_IF.data_rvalid_i <= 1'b1;
                `DRIV_IF.data_rdata_i <= data_inst.data_rdata_i;
                `DRIV_IF.data_err_i <= data_inst.data_err_i;
                
                 data_if.clk_pos(1);
                `DRIV_IF.data_rvalid_i <= 1'b0;
                 data_if.clk_pos(1);
            end
            else begin
                `DRIV_IF.data_gnt_i <= 1'b0; 
                `DRIV_IF.data_rvalid_i <= 1'b0;
            end

            seq_item_port.item_done();
            `uvm_info(get_full_name,$sformatf("In DATA driver, \n\t\t data_gnt_i = %h, \n\t\t data_rvalid_i = %h, \n\t\t data_rdata_i = %h, \n\t\t data_err_i = %h", data_inst.data_gnt_i, data_inst.data_rvalid_i, data_inst.data_rdata_i, data_inst.data_err_i), UVM_NONE)
            `uvm_info(get_full_name(), "Data Driver done", UVM_NONE)

        end
    endtask
    
endclass