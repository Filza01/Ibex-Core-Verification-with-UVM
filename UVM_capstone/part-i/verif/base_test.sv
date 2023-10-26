// import mem_model_pkg::*;
class base_test extends uvm_test;
    `uvm_component_utils(base_test)

    //memory_instance
    mem_model   memory_instance;

    virtual clk_rst_if clk_if;

    //dut_interface instance
    virtual dut_intf dut_if;

    virtual ins_mem_intf ins_if;

    //inst instance for test
    p_seq seq_inst;
     
    //environment instance for test
    env  env_instance;
    
    function new(string name = "base_test", uvm_component parent = null);
        super.new(name,parent);
    endfunction

    function void build_phase(uvm_phase phase);
        /*  note: Do not call super.build_phase() from any class that is extended from an UVM base class!  */
        /*  For more information see UVM Cookbook v1800.2 p.503  */
        super.build_phase(phase);
        if(!uvm_config_db #(virtual dut_intf)::get(null, "*", "dut_if", dut_if))begin
            `uvm_fatal("base_test", "base_test::Failed to get dut_if")
        end

        if(!uvm_config_db #(virtual ins_mem_intf)::get(this, "", "ins_if", ins_if)) begin
         `uvm_fatal("base_test", "base_test::Failed to get ins_if")
        end

        if(!uvm_config_db #(virtual clk_rst_if )::get(null, "*", "clk_if", clk_if))
          begin
          `uvm_fatal("base_test", "base_test::Failed to get clk_if")
         end

         memory_instance = mem_model_pkg::mem_model#()::type_id::create("memory_instance", this);

         seq_inst = p_seq::type_id::create("seq_inst",this);
        
         env_instance = env::type_id::create("env_instance",this);

    endfunction: build_phase

    task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        `uvm_info(get_name(), "<run_phase> started, objection raised.", UVM_NONE)

        load_bin_to_mem("test.bin");

        $display("back from load_bin_to_mem to run_phase");

        clk_if.apply_reset(.reset_width_clks (10));

        $display("back from clk_if.apply_reset to run_phase");

        seq_inst.memory_instance = memory_instance;
        
        dut_intf.fetch_enable_i <= 1'b1;

        #10;

        $display("fetch_enable_i has been set");

        $display("fetch_enable_i = %d",  dut_intf.fetch_enable_i);

        // core simulation ending using ecall_detect
        fork 
            seq_inst.start(env_instance.sequencer_p);
            ecall(); 
        join_any
            ins_if.clk_pos(5); 

        phase.drop_objection(this);
        `uvm_info(get_name(), "<run_phase> finished, objection dropped.", UVM_NONE)
    endtask: run_phase
    
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        $display("------------------------- Topology Report -------------------------");
        uvm_top.print_topology();
    endfunction: end_of_elaboration_phase

    function void load_bin_to_mem(string file_name);
        bit [31:0] boot_addr = 32'h80000000;   // boot address
        bit [7:0] read_byte;
        int fd;
        bit [31:0] addr = boot_addr;

        fd = $fopen(file_name,"rb");
        if (fd == 0) begin
            `uvm_fatal(get_full_name(), $sformatf("Cannot open %0s file", file_name))  
        end

        while ($fread(read_byte, fd)) begin
            `uvm_info(get_full_name(), $sformatf("Readed %h from addr = %h using fread()", read_byte, addr), UVM_NONE)
            memory_instance.write_byte(addr, read_byte);
            addr++;
        end
    endfunction

    task ecall();
     while (1) begin	
        if 	(ins_if.instr_rdata_i == 32'h00000073) begin
            dut_if.fetch_enable_i <= 1'b0;
            break; 
        end
        else begin
            @(ins_if.cb_driver); // waiting for change in driver inputs req_o and addr_o
        end
    end
    endtask
    

endclass