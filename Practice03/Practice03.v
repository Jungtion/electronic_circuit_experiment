module    mux2to1_cond    (out, in0, in1, se1)  ;
  
  output    out   ;
  input     in0   ;
  input     in1   ;
  input     se1   ;
  
  assign    out = (se1)? in1 : in0    ;
  
endmodule




module      mux2to1_if    (out, in0, in1, se1)  ;
  
  output    out   ;
  input     in0   ;
  input     in1   ;
  input     se1   ;
  
  reg   out       ;
  
  
  always  @(in0, in1, se1)  begin
        if(se1 == 1'b0) begin
          out = in0   ;
        end else begin
          out = in1   ;
        end
      end
    endmodule
    
    
    
    
    
    
module      mux2to1_case    (out, in0, in1, se1)  ;
  
  output    out   ;
  input     in0   ;
  input     in1   ;
  input     se1   ;
  
  reg       out   ;
  
  always  @(*)  begin
    case( {se1, in1, in0}  )
          3'b000  : {out} = 1'b0    ;
          3'b001  : {out} = 1'b1    ;
          3'b010  : {out} = 1'b0    ;
          3'b011  : {out} = 1'b1    ;
          3'b100  : {out} = 1'b0    ;
          3'b101  : {out} = 1'b0    ;
          3'b110  : {out} = 1'b1    ;
          3'b111  : {out} = 1'b1    ;
        endcase
/*  case(sel)
      1'b0 : out = in0 ;
      1'b1 : out = in1 ;      
*/
      end
    endmodule
    
    
    
    
    
    
    
    
    
    //==========================================================================
    
    
    
    
module    mux4to1_inst    (out, in0, in1, in2, in3, se1)  ;
  
  output         out       ;
  input          in0       ;
  input          in1       ;
  input          in2       ;
  input          in3       ;
  input   [1:0]  se1       ;
  
  wire    [1:0]  o_mux2    ;
  
  mux2to1_case      mux2_u0(    .out( o_mux2[0]   ),
                                .in0( in0         ),
                                .in1( in1         ),
                                .se1( se1[0]      ));
                                
  mux2to1_case      mux2_u1(    .out( o_mux2[1]   ),
                                .in0( in2         ),
                                .in1( in3         ),
                                .se1( se1[0]      ));
    
  mux2to1_case      mux2_u2(    .out( out         ),
                                .in0( o_mux2[0]   ),
                                .in1( o_mux2[1]   ),
                                .se1( se1[1]      ));
                                
endmodule
                              
                              


module    mux4to1_if        (out, in0, in1, in2, in3, se1)  ;
  
  output         out       ;
  input          in0       ;
  input          in1       ;
  input          in2       ;
  input          in3       ;
  input   [1:0]  se1       ;
  
  reg           out        ;
  
  always  @(*)  begin
    if(se1 == 2'b00)  begin
      out = in0   ;
    end else if(se1 == 2'b01) begin
      out = in1   ;
    end else if(se1 == 2'b10) begin
      out = in2   ;
    end else  begin
      out = in3   ;
    end
  end
endmodule





module    mux4to1_case    (out, in0, in1, in2, in3, se1)  ;
  
  output         out       ;
  input          in0       ;
  input          in1       ;
  input          in2       ;
  input          in3       ;
  input   [1:0]  se1       ;
  
  reg     out       ;
  
  always  @(*)  begin
    case( {se1})
          2'b00  : {out} = in0    ;
          2'b01  : {out} = in1    ;
          2'b10  : {out} = in2    ;
          2'b11  : {out} = in3    ;

        endcase
      end
    endmodule