import mem_model_pkg::*;
class ins_mem_seq extends uvm_sequence #(ins_mem_seq_item);
    `uvm_object_utils(ins_mem_seq)

    // p_sequencer p_sequencer;
    `uvm_declare_p_sequencer(ins_mem_sequencer)

    mem_model memory_instance;

    ins_mem_seq_item ins_inst;

    ins_mem_seq_item inst_item;

    bit [31:0] addr, read_value;
    
    function new(string name = "ins_mem_seq");
        super.new(name);
    endfunction 

    virtual task pre_body();
        `uvm_info(get_full_name(), "MEMORY INSTRUCTIONS", UVM_LOW)
        `uvm_info(get_full_name(), $sformatf("System memory size = %0d", memory_instance.get_written_bytes()), UVM_LOW)
        foreach (memory_instance.system_memory[i]) begin
            `uvm_info(get_full_name(), $sformatf("Address = %0h, Instruction = %0h", i, memory_instance.system_memory[i]), UVM_LOW)
        end

    endtask

    virtual task body();
    //    wait(tb_top.reset == 1'b1);
        forever begin
            $display("here");
            p_sequencer.fifo_export.get(inst_item);
            $display("here2");
            ins_inst = ins_mem_seq_item::type_id::create ("ins_inst"); 

            start_item(ins_inst);

            ins_inst.instr_req_o = inst_item.instr_req_o;
            ins_inst.instr_addr_o = inst_item.instr_addr_o;

            addr = inst_item.instr_addr_o;
            read_value = memory_instance.read(addr);
            
            ins_inst.instr_rdata_i = read_value;
            ins_inst.instr_gnt_i = 1'b1;
            ins_inst.instr_rvalid_i = 1'b1;
            ins_inst.instr_err_i = 1'b0;

            `uvm_info(get_full_name(), $sformatf("\n\nFIFO Item Info:-\n%0s", ins_inst.sprint()), UVM_NONE)

            finish_item(ins_inst);

        end
    endtask
endclass 