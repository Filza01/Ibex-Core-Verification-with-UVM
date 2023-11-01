SIM_LOG += -l result.log

compile :
	vcs -sverilog -timescale=1ns/1ns -full64 -ntb_opts uvm-1.2 +incdir+/home/user100/VM/Ibex-Core-Verification-with-UVM/UVM_capstone/part-i/rtl/ tb_top.sv 

sim: 
	./simv $(SIM_LOG) +UVM_TESTNAME=base_test
#+UVM_VERBOSITY=UVM_HIGH   

