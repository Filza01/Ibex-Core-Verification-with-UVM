# Seed for RTL simulation
SEED		:= $(shell date +%y%m%d%H%M%S)

# This is the top-level output directory. Everything we generate goes in here. This allows us to run multiple times without deleting existing results.
OUT		:= out
OUT_SEED	:= $(OUT)/seed-$(SEED)
OUT_DIR	:= $(dir $(OUT)/)
OUT_SEED_LIB	:= $(OUT_SEED)/INCA_libs
OUT_SEED_TEST	:= $(OUT_SEED)/test

UVMHOME	:= /mnt/Cadence_Tools/INCISIVE/15.20.084/tools/methodology/UVM/CDNS-1.2/

#Directories
RTL		:= rtl
VERIF		:= verif
TESTS		:= tests

RTL_TOP	:= rtl/ibex_top_tracing.sv
TB_TOP		:= verif/			#add your testbench filename here

IRUN		:= $(shell command -v irun)

BINARY		:= $(OUT_SEED_TEST)/$(ASM_TEST).bin
ASM_TEST	:= example

ISA		:= rv32imcb
MABI		:= ilp32

BOOT_ADDR	:= 0x80000000

#change this according to your toolchain installation path
RISCV_TOOLCHAIN:= /home/admin/Desktop/riscv/lowrisc-toolchain-gcc-rv32imcb-20210412-1
RISCV_GCC	:= $(RISCV_TOOLCHAIN)/bin/riscv32-unknown-elf-gcc
RISCV_OBJCOPY	:= $(RISCV_TOOLCHAIN)/bin/riscv32-unknown-elf-objcopy
RISCV_OBJDUMP	:= $(RISCV_TOOLCHAIN)/bin/riscv32-unknown-elf-objdump

# This is a list of directories that are automatically generated
gen-dirs	:= $(OUT_DIR) $(OUT_SEED) $(OUT_SEED_LIB) $(OUT_SEED_TEST)

all:

$(gen-dirs): %:
	mkdir -p $@

#test compilation only
test-compile: $(gen-dirs)
ifndef RISCV_TOOLCHAIN
	$(error "Please set environment variable RISCV_TOOLCHAIN")
endif
	cp $(TESTS)/$(ASM_TEST).S $(OUT_SEED_TEST)
	$(RISCV_GCC) -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles $(OUT_SEED_TEST)/$(ASM_TEST).S -Ttext 0x80000000 -mno-strict-align -o $(OUT_SEED_TEST)/$(ASM_TEST).o -march=rv32imcb -mabi=ilp32
	$(RISCV_OBJDUMP) -D $(OUT_SEED_TEST)/$(ASM_TEST).o > $(OUT_SEED_TEST)/$(ASM_TEST).dump
	$(RISCV_OBJCOPY) -O binary $(OUT_SEED_TEST)/$(ASM_TEST).o $(OUT_SEED_TEST)/$(ASM_TEST).bin

#rtl compilation only
rtl-compile: $(gen-dirs)
ifndef IRUN
	$(error "irun command not found")
endif
	irun \
		-compile \
		$(RTL_TOP) \
		-incdir $(RTL) \
		-nclibdirname $(OUT_SEED_LIB)
	mv irun.* $(OUT_SEED)

#tb+rtl compilation

#tb+rtl simulation

.PHONY: clean

clean:
	rm -rf $(OUT_DIR)
