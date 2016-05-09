onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand /tb/u_wb_sva/req_ack_write
add wave -noupdate -expand -group WB_Arbiter /tb/u_system/u_wishbone_arbiter/o_m1_wb_ack
add wave -noupdate -expand -group WB_Arbiter /tb/u_wb_sva/i_wb_ack
add wave -noupdate -expand -group WB_Arbiter /tb/u_wb_sva/o_wb_stb
add wave -noupdate -expand -group WB_Arbiter /tb/u_system/u_wishbone_arbiter/current_master
add wave -noupdate -expand -group WB_Arbiter /tb/u_system/u_wishbone_arbiter/master_ack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3752500 ps} 0}
configure wave -namecolwidth 309
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3538550 ps} {3966450 ps}
