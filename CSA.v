// FULL ADDER
module fa(input a, b, cin,
          output s, cout);
    assign s = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule
// RIPPLE CARRY ADDER
module rca(input [3:0]a,b,
           input cin,
            output [3:0]s,
            output cout);
            wire c0,c1,c2;
  fa fa1(a[0],b[0],cin,s[0],c0);  
  fa fa2(a[1],b[1],c0,s[1],c1);
  fa fa3(a[2],b[2],c1,s[2],c2);
  fa fa4(a[3],b[3],c2,s[3],cout);
  endmodule 
// CARRY SELECT ADDER
module csa(input [3:0]a,b,
            input cin,
            output [3:0]s,
            output cout);
  wire [3:0]s0,s1;
  wire cout0,cout1;
  rca rca1(.a(a),.b(b),.cin(1'b0),.s(s0),.cout(cout0));
   rca rca2(.a(a),.b(b),.cin(1'b1),.s(s1),.cout(cout1));
   assign s=(cin==0)?s0:s1;
   assign cout=(cin==1)?cout0:cout1;
   endmodule
