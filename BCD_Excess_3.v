//////////////////////////////////////////////////////////////////////////////////////////
// Design Name: BCD to Excess 3 converter
// Engineer: kiran
// Refence : DIgital Design 5th Edition by Morrios Mano & MIcheal Ciletti (pg 132- pg 133)
//////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps


module BCD_Excess_3(in, out);

    input  wire [3:0] in;
    output reg  [3:0] out; // change the output data type to reg to use case statements
                           // change the output data type to wire to use assign statements

    always@(*)
        begin
            case(in)
                4'h0 : out <= 4'h3;
                4'h1 : out <= 4'h4;
                4'h2 : out <= 4'h5;
                4'h3 : out <= 4'h6;
                4'h4 : out <= 4'h7;
                4'h5 : out <= 4'h8;
                4'h6 : out <= 4'h9;
                4'h7 : out <= 4'hA;
                4'h8 : out <= 4'hB;
                4'h9 : out <= 4'hC;
                default : out <= 4'h0;
            endcase
        end

//    assign out[0] = ~in[0];
//    assign out[1] = (in[0] & in[1]) | (~(in[0] | in[1]));
//    assign out[2] = (in[2] ^ (in[1] | in[0]));
//    assign out[3] = in[3] | (in[2] & (in[1] | in[0]));

endmodule
