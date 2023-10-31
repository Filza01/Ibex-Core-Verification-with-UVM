import mem_model_pkg::*;
class data_mem_seq extends uvm_sequence #(data_mem_seq_item);
    `uvm_object_utils(data_mem_seq)

    // p_sequencer p_sequencer;
    `uvm_declare_p_sequencer(data_mem_sequencer)

    mem_model memory_instance;

    data_mem_seq_item data_inst;

    data_mem_seq_item data_item;

    bit [31:0] addr, read_value;
    
    function new(string name = "data_mem_seq");
        super.new(name);
    endfunction 

    virtual task body();
    //    wait(tb_top.reset == 1'b1);
        forever begin
            `uvm_info(get_full_name(), "Data sequence started", UVM_NONE)

            p_sequencer.fifo_export.get(data_item);
            
            data_inst = data_mem_seq_item::type_id::create ("data_inst"); 

            start_item(data_inst);

            data_inst.data_wdata_o = data_item.data_wdata_o;
            data_inst.data_be_o = data_item.data_be_o;
            data_inst.data_we_o = data_item.data_we_o;
            data_inst.data_req_o = data_item.data_req_o;
            data_inst.data_addr_o = data_item.data_addr_o;

            addr = data_item.data_addr_o;
            read_value = memory_instance.read(addr);
            
            if(data_item.data_we_o) begin
                memory_instance.write(data_inst.data_addr_o, data_item.data_wdata_o);
            end
            else begin
                data_inst.data_rdata_i = read_value;
            end

            data_inst.data_gnt_i = 1'b1;
            data_inst.data_rvalid_i = 1'b1;
            data_inst.data_err_i = 1'b0;

            `uvm_info(get_full_name(), "Data sequence ended", UVM_NONE)

            finish_item(data_inst);

        end
    endtask
endclass 