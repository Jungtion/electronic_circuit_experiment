module  d_latch(q, d, clk, rst_n  );
  
  output        q         ;
  input         d         ;
  input         clk       ;
  input         rst_n     ;
  
  reg           q         ;
  
  always  @(d or clk or rst_n)  begin
          if(rst_n == 1'b0) begin
                  q <= 1'b0         ;
          end else begin  //close line#11
                if(clk == 1'b1) begin
                    q <=  d         ;
                end //close line#14
        end //close line #13
      end //close line #10
endmodule




module  dff_asyn(q, d, clk, rst_n );
  
  output        q         ;
  input         d         ;
  input         clk       ;
  input         rst_n     ;
  
  reg           q         ;
  
  always @(posedge clk or negedge rst_n) begin
          if(rst_n == 1'b0) begin
                  q <= 1'b0       ;
          end else begin  //close line #34
                  q <= d          ;
          end //close line #36
        end //close line #33
endmodule




module  dff_syn(q, d, clk, rst_n);
  
  output        q         ;
  input         d         ;
  input         clk       ;
  input         rst_n     ;
  
  reg           q         ;
  
  always  @(posedge clk) begin
          if(rst_n == 1'b0) begin
                q <= 1'b0       ;
          end else begin  //close line #55
                q <= d          ;
          end //close line #57
        end //close line #54
endmodule