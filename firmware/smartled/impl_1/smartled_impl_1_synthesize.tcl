if {[catch {

# define run engine funtion
source [file join {D:/lscc/radiant/3.0} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "C:/Users/Ben De Lathouwer/Documents/GitHub/FPGA-smart-led/firmware/smartled"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- smartled_impl_1.vm smartled_impl_1.ldc
run_engine_newmsg synthesis -f "smartled_impl_1_lattice.synproj"
run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -w -o smartled_impl_1_syn.udb smartled_impl_1.vm] "C:/Users/Ben De Lathouwer/Documents/GitHub/FPGA-smart-led/firmware/smartled/impl_1/smartled_impl_1.ldc"

} out]} {
   runtime_log $out
   exit 1
}
