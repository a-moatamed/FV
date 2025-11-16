# =========================================
# RTL SOURCES
# =========================================


# Infrastructure logic used by register slice
../src/rtl/axi_infrastructure_v1_1_vl_rfs.v

# Register slice core RTL
../src/rtl/axi_register_slice_v2_1_vl_rfs.v

# User’s wrapper / top-level RTL module
../src/rtl/axi_register_slice_0.v

# =========================================
# TESTBENCH SOURCES
# =========================================

# Interface
../src/testbench/if/my_if.sv

# UVM environment
../src/testbench/uvm_pkg/uvm_tb_pkg.sv

# Testbench top
../src/testbench/top/top.sv
