// Write you SystemVerilog Assertions here !
module wb_sva(input logic i_clk, input logic[31:0] o_wb_adr, input logic[31:0] i_wb_dat, input logic[31:0] o_wb_dat,
              input logic o_wb_cyc, input logic o_wb_stb, input logic o_wb_we, input logic i_wb_ack);
  
//1a
  sequence o_wb_stb_valid;
    ~$isunknown(o_wb_stb);
  endsequence: o_wb_stb_valid

//1b
  sequence o_wb_cyc_valid;
    ~$isunknown(o_wb_cyc);
  endsequence: o_wb_cyc_valid

//1c
  sequence check_unknown_value_seq(signal);
    ~$isunknown(signal);
  endsequence: check_unknown_value_seq
 
//1d
  //condition: o_wb_cyc & o_wb_stb

//1e 
  property bus_valid(logic condition,logic[31:0] bus);
    @(posedge i_clk) (condition) |-> check_unknown_value_seq(bus);//TODO: check throughout
  endproperty: bus_valid

  property req_ack(req);
    @(posedge i_clk) $rose(req) |=> req throughout i_wb_ack[->1]; 
    //@(posedge i_clk) $rose(req) |=> req throughout $rose(i_wb_ack) ##[1:$] $fell(i_wb_ack); 
    //@(posedge i_clk) $rose(req) |-> req throughout $rose(i_wb_ack) ##[1:$] $fell(i_wb_ack); 
  endproperty: req_ack
  
//2g
  property signal_reset(i_clk,rst,o_wb_cyc,o_wb_stb);
    @(posedge i_clk) rst |=> (~o_wb_cyc & ~o_wb_stb);
  endproperty: signal_reset

//1f
  o_wb_adress_valid: assert property(bus_valid((o_wb_cyc & o_wb_stb), o_wb_adr));
                 //else $display("ASSERTION ERROR: $isunknown(o_wb_adr) returned %0b. o_wb_adr = %0h", $isunknown(o_wb_adr), o_wb_adr );
  i_wb_dat_valid: assert property(bus_valid((o_wb_cyc & o_wb_stb & ~o_wb_we & i_wb_ack), i_wb_dat)); //adding ack 03/09
                 //else $display("ASSERTION ERROR: $isunknown(i_wb_dat) returned %0b", $isunknown(i_wb_dat) );
  o_wb_dat_valid: assert property(bus_valid((o_wb_cyc & o_wb_stb & o_wb_we), o_wb_dat));
               //else $display("ASSERTION ERROR: $isunknown(o_wb_dat) returned %0b", $isunknown(o_wb_dat) );
  
//1g
  req_ack_read: assert property(req_ack(o_wb_cyc & o_wb_stb & ~o_wb_we));
//                else $display("ASSERTION ERROR READ @ %0t: o_wb_cyc = %0h, o_wb_stb = %0h, o_wb_we = %0h, i_wb_ack = %0h", 
//                              $time(), o_wb_cyc, o_wb_stb, o_wb_we, i_wb_ack);
  req_ack_write: assert property(req_ack(o_wb_cyc & o_wb_stb & o_wb_we));
//                 else $display("ASSERTION ERROR WRITE @ %0t: o_wb_cyc = %0h, o_wb_stb = %0h, o_wb_we = %0h, i_wb_ack = %0h", 
//                              $time(), o_wb_cyc, o_wb_stb, o_wb_we, i_wb_ack);
endmodule: wb_sva
