module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] dwA [3:0];
    wire [7:0] mwA [3:0];
    wire [7:0] swA [3:0];
    
    demux dataDemux(
        .data(data),
        .sel(addr),
        .A(dwA[0]),
        .B(dwA[1]),
        .C(dwA[2]),
        .D(dwA[3])
    );
    
    demux Store(
        .data(store),
        .sel(addr),
        .A(swA[0]),
        .B(swA[1]),
        .C(swA[2]),
        .D(swA[3])
    );
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            byte inst(
                .Data(dwA[i]),
                .Enable(swA[i]),
                .Q(mwA[i])
            );
        end
    endgenerate
    
    mux c2(
        .Sel(addr),
        .A(mwA[0]),
        .B(mwA[1]),
        .C(mwA[2]),
        .D(mwA[3]),
        .Y(memory)
    );

endmodule
