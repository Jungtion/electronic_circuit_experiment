module nonblock (    q,  d,  clk )   ;
  
  output          q               ;
  input           d               ;
  input           clk             ;
  

  reg             q               ;
  reg             n1              ;
  
  always @( posedge clk ) begin
    n1   <= d         ;
    q    <= n1        ;
  end
endmodule
  
  
module block ( q, d, clk );
    
  output          q               ;
  input           d               ;
  input           clk             ;
  
  wire            clk             ;
  wire            d               ;
  reg             q               ;
  reg             n1              ;
  
  always  @ ( posedge clk)  begin
    n1  = d          ;
    q   = n1         ;
  end
endmodule