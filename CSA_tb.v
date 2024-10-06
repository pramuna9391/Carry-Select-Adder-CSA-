module csa_tb;
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0] s;
  wire cout;
  csa uut ( .a(a), .b(b),.cin(cin),.s(s),.cout(cout) );
  initial begin
    
    a = 4'b0000; b = 4'b0000; cin = 0;
    #10;
    a = 4'b0011; b = 4'b0101; cin = 0;
    #10;
    a = 4'b0111; b = 4'b0011; cin = 1;
    #10;
    a = 4'b1111; b = 4'b1111; cin = 0;
    #10;
a= 4'b1111; b = 4'b1111; cin = 1;
    #10;
    a = 4'b1010; b = 4'b1100; cin = 0;
    #10;

    a = 4'b1010; b = 4'b1100; cin = 1;
    #10;
    $finish;
  end

endmodule
