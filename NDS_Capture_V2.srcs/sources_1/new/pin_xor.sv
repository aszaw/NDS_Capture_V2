`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2024 07:15:12 PM
// Design Name: 
// Module Name: pins_xor
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



module pin_xor ( // this module is for debug cores logic analyzer
    input logic R0, R1, R2, R3, R4, R5,
    input logic G0, G1, G2, G3, G4, G5,
    input logic B0, B1, B2, B3, B4, B5,
    input logic DCLK, GSP, LS,
    input logic CLK,
    input logic reset_n,
    output logic LED0, LED1, LED2, LED3
);

    logic red_xor_ff, green_xor_ff, blue_xor_ff;

    always @(posedge CLK or negedge reset_n) begin
        if (!reset_n) begin
            red_xor_ff   <= 1'b0;
            green_xor_ff <= 1'b0;
            blue_xor_ff  <= 1'b0;
        end else begin
            red_xor_ff   <= R0 ^ R1 ^ R2 ^ R3 ^ R4 ^ R5;
            green_xor_ff <= G0 ^ G1 ^ G2 ^ G3 ^ G4 ^ G5;
            blue_xor_ff  <= B0 ^ B1 ^ B2 ^ B3 ^ B4 ^ B5;
        end
    end

    logic combined_xor_ff;

    always @(posedge CLK or negedge reset_n) begin
        if (!reset_n) begin
            combined_xor_ff <= 1'b0;
        end else begin
            combined_xor_ff <= red_xor_ff ^ green_xor_ff ^ blue_xor_ff ^ GSP ^ LS;
        end
    end

    assign LED0 = combined_xor_ff;


endmodule

