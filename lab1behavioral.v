module eighttoonemux(Y, s2, s1, s0, i7, i6, i5, i4, i3, i2, i1, i0);
input i7, i6, i5, i4, i3, i2, i1, i0;
input s2, s1, s0;
output reg Y;
 
always @(*)
begin
   case ({s2, s1, s0})
      3'b000 : Y = i0;
	  3'b001 : Y = i1;
	  3'b010 : Y = i2;
	  3'b011 : Y = i3;
	  3'b100 : Y = i4;
	  3'b101 : Y = i5;
	  3'b110 : Y = i6;
	  3'b111 : Y = i7;

      default : Y = 1'bx;
   endcase
end
endmodule
