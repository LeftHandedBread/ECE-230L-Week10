module byte(
    input [7:0] Data,
    input Enable,
    output [7:0] Q
);
    
    genvar i;
    
    generate
        for (i = 0; i < 8; i = i + 1) begin
            d_latch inst(
                .D(Data[i]),
                .E(Enable),
                .Q(Q[i])
            );
        end
    endgenerate


    
endmodule