module  tb_bnb;

  
  reg            d           ;
  reg            clk         ;
  
  wire           q1          ;
  wire           q2          ;
  
  initial       clk = 0 ;
  always #(100) clk = ~clk ;
  
  block          dut0  (   .q        ( q1       ),
                           .d        ( d        ),
                           .clk      ( clk      ));
                      
  nonblock       dut1  (   .q        ( q2       ),
                           .d        ( d        ),
                           .clk      ( clk      ));
                           
  initial begin
  #(50)   {d}=1'b0    ;
  #(50)   {d}=1'b0    ;
  #(50)   {d}=1'b1    ;
  #(50)   {d}=1'b0    ;
  #(50)   {d}=1'b1    ;
  #(50)   {d}=1'b1    ;
  #(50)   {d}=1'b1    ;
  #(50)   {d}=1'b0    ;
  #(50)   {d}=1'b1    ;
  #(50)   {d}=1'b0    ;
  #(50)   {d}=1'b0    ;
  
  $finish             ;
  end
  
  
endmodule