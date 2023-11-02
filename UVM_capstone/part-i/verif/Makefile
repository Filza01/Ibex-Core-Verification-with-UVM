SIM_LOG += -l result.log

compile :
	vcs -sverilog -timescale=1ns/1ns -full64 -ntb_opts uvm-1.2 -cm line+cond+tgl+branch+assert +incdir+/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/rtl/ tb_top.sv 

sim: 
	./simv -cm line+cond+tgl+branch+assert $(SIM_LOG) +UVM_TESTNAME=base_test
#+UVM_VERBOSITY=UVM_HIGH   

cov:
	urg -dir simv.vdb -format text -group show_bin_values

gui:
	vcs -lca -debug_access+all -sverilog -timescale=1ns/1ns -ntb_opts uvm-1.2 +incdir+/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/rtl/ tb_top.sv 
	./simv -gui &

gui-cov:
	dve -covdir simv.vdb/ -full64

