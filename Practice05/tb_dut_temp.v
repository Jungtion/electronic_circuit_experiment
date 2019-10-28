module	tb_dut_temp;

wire	[6:0]	o_seg		;
wire		o_seg_dp	;
wire	[5:0]	o_seg_enb	;

reg		clk		;
reg		rst_n		;

initial		clk = 1'b0	;
always	#(100)	clk = ~clk	;

top_nco_cnt_disp	dut(	.o_seg		( o_seg		),
				.o_seg_dp	( o_seg_dp	),
				.o_seg_enb	( o_seg_enb	),
				.clk		( clk		),
				.rst_n		( rst_n		));

initial begin
			rst_n = 1'b0;
	#(500)		rst_n = 1'b1;
	#(100000000)	$finish;
end

endmodule
