//////////////////////////////////////////////////////////////////////////////////////////
// Design Name: BCD to Excess 3 converter
// Engineer: kiran
// Refence : DIgital Design 5th Edition by Morrios Mano & MIcheal Ciletti (pg 132- pg 133)
//////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_bench_BCD_Excess3();
    //inputs to DUT
        reg  [3:0] in =4'h0;
    //output from DUT
        wire [3:0] out;


    BCD_Excess_3 DUT (.in(in), .out(out));

    initial
        begin
            $display($time,"<< Simulation Results >>");
            $monitor($time,"in = %b, out = %b",in,out);
        end

    initial
        begin
           forever begin
              if(in == 4'b1111) begin
                    $finish;
               end else begin
                    #2;
                    in = in + 4'h1;
                    #2;
               end
            end
        end

endmodule
