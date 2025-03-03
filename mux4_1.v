module mux4_1(data_in,
	      sel_in,
	      y_out);
	
   input [3:0]data_in;
   input [1:0]sel_in;
   output reg y_out;
	
   always@(data_in,sel_in)
      begin
	 case(sel_in)
	    2'd0   : y_out = data_in[0];
	    2'd1   : y_out = data_in[1];
	    2'd2   : y_out = data_in[2];
	    2'd3   : y_out = data_in[3];
	    default: y_out = 0;
         endcase
      end 
	
endmodule
