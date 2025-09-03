module eighttoonemux(
input i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2,
output Y
);

wire ns0,ns1,ns2;
wire y1,y0,y2,y3,y4,y5,y6,y7;
not N1(ns0, s0);
not N2(ns1, s1);
not N3(ns2, s2);
and A1(y0, i0, ns0,ns1,ns2);
and A2(y1, i1, s0,ns1,ns2);
and A3(y2, i2, ns0,s1,ns2);
and A4(y3, i3, ns0,s1,s2);
and A5(y4, i4, ns0,ns1,s2);
and A6(y5, i5, s0,ns1,s2);
and A7(y6, i6, ns0,s1,s2);
and A8(y7, i7, s0,s1,s2);
or O1(Y,y0,y1,y2,y3,y4,y5,y6,y7);

//circuit

endmodule