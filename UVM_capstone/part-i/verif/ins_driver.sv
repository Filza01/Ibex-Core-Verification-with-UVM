`define DRIV_IF ins_if.cb_driver

class ins_driver extends uvm_driver #(ins_mem_seq_item);
    `uvm_component_utils(ins_driver)
    
    virtual ins_mem_intf ins_if;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db #(virtual ins_mem_intf)::get(this,"*","ins_if",ins_if)) begin
            `uvm_fatal ("INS_DRIVER","Failed to get ins_if")
        end
    endfunction
    
    virtual task run_phase(uvm_phase phase);
        ins_mem_seq_item ins_inst;
        wait(tb_top.reset == 1'b1);
        forever begin
            `uvm_info(get_full_name(), "Instruction Driver Started", UVM_NONE)

            seq_item_port.get_next_item(ins_inst);  // Get the next item from sequencer

            if(ins_inst.instr_req_o) begin
                `DRIV_IF.instr_gnt_i <= 1'b1;
                
                 ins_if.clk_pos(1);
                `DRIV_IF.instr_gnt_i <= 1'b0;       
                `DRIV_IF.instr_rvalid_i <= 1'b1;
                `DRIV_IF.instr_rdata_i <= ins_inst.instr_rdata_i;
                `DRIV_IF.instr_err_i <= ins_inst.instr_err_i;
                
                 ins_if.clk_pos(1);
                `DRIV_IF.instr_rvalid_i <= 1'b0;
                 ins_if.clk_pos(1);
            end
            else begin
                `DRIV_IF.instr_gnt_i <= 1'b0; 
                `DRIV_IF.instr_rvalid_i <= 1'b0;
            end

            seq_item_port.item_done();
            `uvm_info(get_full_name,$sformatf("In INSTRUCTION driver, \n\t\t instr_gnt_i = %h, \n\t\t instr_rvalid_i = %h, \n\t\t instr_rdata_i = %h, \n\t\t instr_err_i = %h", ins_inst.instr_gnt_i, ins_inst.instr_rvalid_i, ins_inst.instr_rdata_i, ins_inst.instr_err_i), UVM_NONE)
            `uvm_info(get_full_name(), "Instruction Driver done", UVM_NONE)
        end
    endtask
    
endclass