```verilog
`timescale 1ns/1ps

module tb_demux_1to8;

reg       din;
reg [2:0] sel;
wire [7:0] y;

demux_1to8 uut (
    .din(din),
    .sel(sel),
    .y(y)
);

initial begin

    $monitor("Time=%0t | DIN=%b | SEL=%b | Y=%b",
             $time, din, sel, y);

    din = 1'b1;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    din = 1'b0;
    sel = 3'b010; #10;

    $finish;
end

endmodule
```
