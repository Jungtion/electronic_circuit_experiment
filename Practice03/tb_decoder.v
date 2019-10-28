module  tb_decoder  ;
  
  wire  [7:0]     de_shift        ;
  wire  [7:0]     decoder_case    ;
  
  reg   [2:0] in        ;
  reg         en        ;
  
  dec3to8_shift   dut0(   .out  ( de_shift      ),
                          .in   ( in            ),
                          .en   ( en            ));
                          
  dec3to8_case    dut1(   .out  ( decoder_case  ),
                          .in   ( in            ),
                          .en   ( en            ));
  
  
  initial begin
  $display("==========================================");
  $display("  in    en    out0    out1");
  $display("==========================================");
  
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);
  #(50)   {in, en} = $random(); #(50) $display("  %b\t%d\t%b\t%b  ", in, en, de_shift, decoder_case);

  $finish ;
end

endmodule