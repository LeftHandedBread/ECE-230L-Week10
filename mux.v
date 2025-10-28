module mux(
    input Enable,
    input [1:0] Sel,
    input [7:0] A, [7:0] B, [7:0] C,  [7:0] D,
    output [7:0] Y
    );
    
    assign Y = Sel == 'b00 ? A :
                Sel == 'b01 ? B :
                Sel == 'b10 ? C : D;
endmodule