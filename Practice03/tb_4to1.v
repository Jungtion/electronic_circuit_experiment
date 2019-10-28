module  tb_4to1     ;
  
  reg     in0   ;
  reg     in1   ;
  reg     in2   ;
  reg     in3   ;
  reg     [1:0] se1   ;
  
  wire  out1    ;
  
  wire  out2    ;
  
  wire  out3    ;
  
  mux4to1_inst   dut_1(  .in0    ( in0   ),
                         .in1    ( in1   ),
                         .in2    ( in2   ),
                         .in3    ( in3   ),
                         .se1    ( se1   ),
                         .out    ( out1  ));
                    
  mux4to1_if     dut_2(  .in0    ( in0   ),
                         .in1    ( in1   ),
                         .in2    ( in2   ),
                         .in3    ( in3   ),
                         .se1    ( se1   ),
                         .out    ( out2  ));
                    
  mux4to1_case   dut_3(  .in0    ( in0   ),
                         .in1    ( in1   ),
                         .in2    ( in2   ),
                         .in3    ( in3   ),
                         .se1    ( se1   ),
                         .out    ( out3  ));
                         
initial begin
          $display("inst   : out1")   ;
          $display("'if'   : out2")   ;
          $display("'case' : out3")   ;
          $display("======================================================================");
          $display("  in0   in1   in2   in3   se1   out1    out2    out3");
          $display("======================================================================");
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          #(50)   {in0, in1, in2, in3, se1} = $random();  #(50)   $display("  %b\t%b\t%b\t%b\t%b\t%b\t%b\t%b  ", in0, in1, in2, in3, se1, out1, out2, out3);
          
          #(50)   $finish;
        end
      endmodule