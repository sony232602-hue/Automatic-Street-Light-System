`timescale 1ns/1ps

module street_light_tb;

reg ldr;
wire light;

street_light uut (
    .ldr(ldr),
    .light(light)
);

initial begin
    $display("LDR LIGHT");

    ldr = 1;
    #10;

    ldr = 0;
    #10;

    ldr = 1;
    #10;

    $finish;
end

initial begin
    $monitor("%b   %b", ldr, light);
end

endmodule