`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/14 17:10:17
// Design Name: 
// Module Name: NoteController
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FreeController(
    input [7:0] inputs,
    input clk,
    output reg [7:0] note,
    output reg [7:0] light
    );
    parameter do = 7'b0000001,
                re = 7'b0000010,
                mi = 7'b0000100,
                fa = 7'b0001000,
                so = 7'b0010000,
                la = 7'b0100000,
                xi = 7'b1000000;
                   
    wire [7:0] key[7:0];
    assign key[1] = do;
    assign key[2] = re;
    assign key[3] = mi;
    assign key[4] = fa;
    assign key[5] = so;
    assign key[6] = la;
    assign key[7] = xi;
    
    always @(posedge clk) begin :loop
        integer i;
        for(i = 0;i < 8;i = i+1)
        begin
        if(key[i] == inputs)
        begin
        note <= i;
        light <= key[i];
        end
        end
        end
endmodule
