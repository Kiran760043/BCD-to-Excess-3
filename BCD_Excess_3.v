//////////////////////////////////////////////////////////////////////////////////////////
// Design Name: Binary  to Excess 3 converter
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
                3'h0 : out <= 3'h3;
                3'h1 : out <= 3'h4;
                3'h2 : out <= 3'h5;
                3'h3 : out <= 3'h6;
                3'h4 : out <= 3'h7;
                3'h5 : out <= 3'h8;
                3'h6 : out <= 3'h9;
                3'h7 : out <= 3'hA;
                3'h8 : out <= 3'hB;
                3'h9 : out <= 3'hC;
                default : out <= 3'h0;
            endcase
        end  

//    assign out[0] = ~in[0];
//    assign out[1] = (in[0] & in[1]) | (~(in[0] | in[1]));
//    assign out[2] = (in[2] ^ (in[1] | in[0]));
//    assign out[3] = in[3] | (in[2] & (in[1] | in[0]));
           
endmodule
