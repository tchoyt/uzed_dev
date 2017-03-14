# set hwdsgn [open_hw_design zynq_top_wrapper.hdf]
set hwdsgn [open_hw_design abcd_top.hdf]
generate_app -hw $hwdsgn -os standalone -proc psu_cortexa53_0 -app zynqmp_fsbl -compile -sw fsbl -dir ./build
exit
